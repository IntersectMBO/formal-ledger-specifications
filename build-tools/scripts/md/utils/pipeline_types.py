# build-tools/scripts/md/utils/pipeline_types.py
"""
Types for the documentation build pipeline.

This module provides functional programming primitives and immutable data structures
that make the pipeline more functional, robust, and predictable.

Design principles:
- Immutable data structures everywhere
- Functional error handling with Result types
- Algebraic data types for domain modeling
- Pure transformations between states
- Composable operations
"""

from __future__ import annotations
from dataclasses import dataclass, field
from pathlib import Path
from typing import (
    TypeVar, Generic, Optional, Union, Dict, List, Tuple,
    NamedTuple, Callable, Any, Protocol, runtime_checkable
)
from enum import Enum, auto
import json

# =============================================================================
# Generic Type Variables
# =============================================================================

T = TypeVar('T')  # Success type
E = TypeVar('E')  # Error type
A = TypeVar('A')  # Input type
B = TypeVar('B')  # Output type

# =============================================================================
# Functional Error Handling: Result Type
# =============================================================================

@dataclass(frozen=True)
class Result(Generic[T, E]):
    """
    Functional error handling type (like Haskell's Either or Rust's Result).

    Represents either a successful computation (Ok) or a failure (Err).
    Supports functional composition and eliminates exception handling.

    Mathematical properties:
    - Functor: supports map operations
    - Monad: supports flatMap (bind) operations
    - Pure: no side effects in constructors
    """

    _is_ok: bool
    _value: Optional[T] = None
    _error: Optional[E] = None

    @classmethod
    def ok(cls, value: T) -> Result[T, E]:
        """Construct a successful result."""
        return cls(_is_ok=True, _value=value, _error=None)

    @classmethod
    def err(cls, error: E) -> Result[T, E]:
        if error is None:  # prevent creating error with None value
            raise ValueError("Cannot create an Err result with a None value. Errors must be non-null.")
        """Construct a failed result."""
        return cls(_is_ok=False, _value=None, _error=error)

    @property
    def is_ok(self) -> bool:
        """True if this is a successful result."""
        return self._is_ok

    @property
    def is_err(self) -> bool:
        """True if this is a failed result."""
        return not self._is_ok

    def unwrap(self) -> T:
        """Extract the success value (throws if error)."""
        if self._is_ok and self._value is not None:
            return self._value
        raise ValueError(f"Called unwrap() on error result: {self._error}")

    def unwrap_or(self, default: T) -> T:
        """Extract the success value or return default."""
        return self._value if self._is_ok and self._value is not None else default

    def unwrap_err(self) -> E:
        """Extract the error value (throws if success)."""
        if self._is_ok:
            raise ValueError(f"Called unwrap_err() on a success result: {self._value}")
        if self._error is None:
            # This handles the specific invalid state that caused the crash.
            raise ValueError("Called unwrap_err() on an invalid Err result that contains no error value.")
        return self._error

    # Functor operations
    def map(self, f: Callable[[T], B]) -> Result[B, E]:
        """Apply function to success value, preserve error."""
        # The only check should be for success, not the contained value.
        if self._is_ok:
            try:
                return Result.ok(f(self._value))
            except Exception as e:
                # This correctly catches exceptions inside the mapping function
                return Result.err(e)
        return Result.err(self._error)

    def map_err(self, f: Callable[[E], B]) -> Result[T, B]:
        """Apply function to error value, preserve success."""
        if self._is_ok:
            return Result.ok(self._value)  # type: ignore
        return Result.err(f(self._error))  # type: ignore

    # Monad operations
    def flat_map(self, f: Callable[[T], Result[B, E]]) -> Result[B, E]:
        """Monadic bind - chain computations that might fail."""
        # The only check should be for success, not the contained value.
        if self._is_ok:
            return f(self._value) # It's valid to pass None to the next function.
        return Result.err(self._error)

    def and_then(self, f: Callable[[T], Result[B, E]]) -> Result[B, E]:
        """Alias for flat_map (more readable)."""
        return self.flat_map(f)


# =============================================================================
# Pipeline Error Types
# =============================================================================

class ErrorType(Enum):
    """Categorization of pipeline errors for structured error handling."""

    FILE_NOT_FOUND = auto()
    PERMISSION_DENIED = auto()
    INVALID_CONFIG = auto()
    COMMAND_FAILED = auto()
    PARSING_ERROR = auto()
    AGDA_ERROR = auto()
    PANDOC_ERROR = auto()
    BIBTEX_ERROR = auto()
    VALIDATION_ERROR = auto()


@dataclass(frozen=True)
class PipelineError:
    """
    Immutable error representation with context and categorization.

    Provides structured error information for functional error handling.
    """

    error_type: ErrorType
    message: str
    context: Dict[str, Any] = field(default_factory=dict)
    cause: Optional[Exception] = None

    def with_context(self, **kwargs) -> PipelineError:
        """Add context to error (returns new error)."""
        new_context = {**self.context, **kwargs}
        return PipelineError(
            error_type=self.error_type,
            message=self.message,
            context=new_context,
            cause=self.cause
        )

    def __str__(self) -> str:
        parts = [f"{self.error_type.name}: {self.message}"]
        if self.context:
            context_str = ", ".join(f"{k}={v}" for k, v in self.context.items())
            parts.append(f"Context: {context_str}")
        if self.cause:
            parts.append(f"Caused by: {self.cause}")
        return " | ".join(parts)


# =============================================================================
# File Processing Types
# =============================================================================

class ProcessingStage(Enum):
    """Stages in the document processing pipeline."""

    SOURCE = auto()           # Original .lagda/.agda files
    SNAPSHOT = auto()         # Copied to build directory
    PREPROCESSED = auto()     # After preprocess.py
    PANDOC_CONVERTED = auto() # After pandoc + lua filter
    POSTPROCESSED = auto()    # After postprocess.py
    AGDA_HTML = auto()        # After agda --html
    DEPLOYED = auto()         # Copied to final site


@dataclass(frozen=True)
class FileMetadata:
    """Immutable metadata about a processed file."""

    relative_path: Path
    stage: ProcessingStage
    processing_time: float
    file_size: int
    checksum: str = ""

    def advanced_to(self, new_stage: ProcessingStage) -> FileMetadata:
        """Create new metadata for advanced processing stage."""
        return FileMetadata(
            relative_path=self.relative_path,
            stage=new_stage,
            processing_time=self.processing_time,
            file_size=self.file_size,
            checksum=self.checksum
        )


@dataclass(frozen=True)
class ProcessedFile:
    """
    Immutable representation of a file at a specific processing stage.

    Mathematical properties:
    - Immutable: never changes after creation
    - Pure: no side effects in operations
    - Composable: can be transformed through pipeline stages
    """

    source_path: Path
    current_path: Path
    metadata: FileMetadata
    content_hash: str = ""

    def at_stage(self, stage: ProcessingStage, new_path: Path) -> ProcessedFile:
        """Create new ProcessedFile representing advancement to next stage."""
        return ProcessedFile(
            source_path=self.source_path,
            current_path=new_path,
            metadata=self.metadata.advanced_to(stage),
            content_hash=self.content_hash
        )

    @property
    def is_agda_file(self) -> bool:
        """True if this is an Agda source file."""
        return self.source_path.suffix in {'.agda', '.lagda', '.lagda.md'}

    @property
    def module_name(self) -> str:
        """Derived module name from file path."""
        # Convert path/to/Module.lagda -> Module
        return self.source_path.stem.split('.')[0]


# =============================================================================
# Pipeline State Types
# =============================================================================

@dataclass(frozen=True)
class PipelineStatistics:
    """Immutable statistics about pipeline execution."""

    files_processed: int = 0
    total_processing_time: float = 0.0
    errors_encountered: int = 0
    warnings_generated: int = 0
    agda_files_converted: int = 0
    citations_processed: int = 0

    def add_file(self, processing_time: float = 0.0) -> PipelineStatistics:
        """Add a processed file to statistics."""
        return PipelineStatistics(
            files_processed=self.files_processed + 1,
            total_processing_time=self.total_processing_time + processing_time,
            errors_encountered=self.errors_encountered,
            warnings_generated=self.warnings_generated,
            agda_files_converted=self.agda_files_converted,
            citations_processed=self.citations_processed
        )

    def add_error(self) -> PipelineStatistics:
        """Record an error."""
        return PipelineStatistics(
            files_processed=self.files_processed,
            total_processing_time=self.total_processing_time,
            errors_encountered=self.errors_encountered + 1,
            warnings_generated=self.warnings_generated,
            agda_files_converted=self.agda_files_converted,
            citations_processed=self.citations_processed
        )


@dataclass(frozen=True)
class PipelineState:
    """
    Immutable state of the entire pipeline at a point in time.

    The state that gets transformed through the pipeline.
    Each processing stage takes a PipelineState and returns
    a new PipelineState.
    """

    processed_files: Tuple[ProcessedFile, ...] = field(default_factory=tuple)
    artifacts: Dict[str, Path] = field(default_factory=dict)
    statistics: PipelineStatistics = field(default_factory=PipelineStatistics)
    stage: ProcessingStage = ProcessingStage.SOURCE

    def add_file(self, file: ProcessedFile) -> PipelineState:
        """Add a processed file (returns new state)."""
        return PipelineState(
            processed_files=self.processed_files + (file,),
            artifacts=self.artifacts.copy(),
            statistics=self.statistics.add_file(),
            stage=self.stage
        )

    def add_artifact(self, name: str, path: Path) -> PipelineState:
        """Add an artifact (returns new state)."""
        new_artifacts = {**self.artifacts, name: path}
        return PipelineState(
            processed_files=self.processed_files,
            artifacts=new_artifacts,
            statistics=self.statistics,
            stage=self.stage
        )

    def advance_to_stage(self, new_stage: ProcessingStage) -> PipelineState:
        """Advance pipeline to next stage (returns new state)."""
        return PipelineState(
            processed_files=self.processed_files,
            artifacts=self.artifacts,
            statistics=self.statistics,
            stage=new_stage
        )

    def files_at_stage(self, stage: ProcessingStage) -> List[ProcessedFile]:
        """Get all files currently at a specific stage."""
        return [f for f in self.processed_files if f.metadata.stage == stage]


# =============================================================================
# Command Execution Types
# =============================================================================

@dataclass(frozen=True)
class CommandResult:
    """Immutable result of executing a shell command."""

    command: Tuple[str, ...]
    return_code: int
    stdout: str = ""
    stderr: str = ""
    execution_time: float = 0.0

    @property
    def success(self) -> bool:
        """True if command succeeded."""
        return self.return_code == 0

    @property
    def failed(self) -> bool:
        """True if command failed."""
        return self.return_code != 0

    def to_result(self) -> Result[CommandResult, PipelineError]:
        """Convert to Result type for functional error handling."""
        if self.success:
            return Result.ok(self)
        else:
            error = PipelineError(
                error_type=ErrorType.COMMAND_FAILED,
                message=f"Command failed with exit code {self.return_code}",
                context={
                    "command": " ".join(self.command),
                    "stderr": self.stderr,
                    "stdout": self.stdout
                }
            )
            return Result.err(error)


# =============================================================================
# Processing Function Types
# =============================================================================

# Type aliases for pipeline functions
ProcessingFunction = Callable[[PipelineState], Result[PipelineState, PipelineError]]
FileTransformer = Callable[[ProcessedFile], Result[ProcessedFile, PipelineError]]

@runtime_checkable
class PipelineStage(Protocol):
    """Protocol for pipeline stage implementations."""

    def process(self, state: PipelineState) -> Result[PipelineState, PipelineError]:
        """Process pipeline state and return new state or error."""
        ...

    @property
    def stage_name(self) -> str:
        """Human-readable name of this stage."""
        ...



# =============================================================================
# Utility Functions
# =============================================================================

def sequence_results(results: List[Result[T, E]]) -> Result[List[T], E]:
    """
    Convert List[Result[T, E]] to Result[List[T], E].

    If all results are Ok, return Ok with list of values.
    If any result is Err, return the first error.

    (Like Haskell's `sequence` for the Result monad.)
    """
    values = []
    for result in results:
        if result.is_err:
            return Result.err(result.unwrap_err())
        values.append(result.unwrap())
    return Result.ok(values)


def collect_errors(results: List[Result[T, E]]) -> Tuple[List[T], List[E]]:
    """
    Separate successful results from errors.

    Returns tuple of (successes, errors).
    """
    successes = []
    errors = []

    for result in results:
        if result.is_ok:
            successes.append(result.unwrap())
        else:
            errors.append(result.unwrap_err())

    return successes, errors


# =============================================================================
# Example Usage and Testing
# =============================================================================

if __name__ == "__main__":
    # Example: Functional error handling
    def divide(x: float, y: float) -> Result[float, str]:
        if y == 0:
            return Result.err("Division by zero")
        return Result.ok(x / y)

    # Chain operations functionally
    result = (divide(10, 2)
              .map(lambda x: x * 3)  # 5 * 3 = 15
              .and_then(lambda x: divide(x, 3)))  # 15 / 3 = 5

    print(f"Result: {result.unwrap()}")  # Should print 5.0

    # Example: Pipeline state
    initial_state = PipelineState()
    file_metadata = FileMetadata(
        relative_path=Path("Module.lagda"),
        stage=ProcessingStage.SOURCE,
        processing_time=0.1,
        file_size=1024
    )
    processed_file = ProcessedFile(
        source_path=Path("src/Module.lagda"),
        current_path=Path("_build/Module.lagda.md"),
        metadata=file_metadata
    )

    new_state = (initial_state
                 .add_file(processed_file)
                 .add_artifact("macros", Path("macros.json"))
                 .advance_to_stage(ProcessingStage.PREPROCESSED))

    print(f"Files processed: {new_state.statistics.files_processed}")
    print(f"Current stage: {new_state.stage}")
    print(f"✅ Type system working correctly!")
