# Nix Configuration Setup and Usage Guide

## Overview

This repository uses a sophisticated Nix configuration to manage dependencies, build
processes, and development environments for the Agda formalization of the Cardano
ledger specification.  The setup provides reproducible builds, pinned dependencies,
and multiple output formats including HTML documentation, PDF specifications, and
Haskell code generation.

---

## Architecture

### Directory Structure

```
./
├── default.nix                             # Main package definitions
├── flake.nix                               # Flake interface
└── build-tools/
    ├── nix/
    │   ├── sources.nix                     # Niv-generated dependency fetcher
    │   ├── sources.json                    # Pinned dependency versions
    │   ├── agda/default.nix                # Agda package scope
    │   └── build-support/agda/default.nix  # Low-level Agda build functions
    └── agda/
        ├── default.nix                     # Agda environment wrapper
        └── nix/fls-agda.nix                # Custom FLS Agda derivation
```

### Dependency Management

We use **niv** to manage external dependencies, which provides:

+ **Reproducible builds**: all dependencies pinned to specific commits/versions
+ **Easy updates**: `niv update <package>` updates individual dependencies
+ **Declarative dependencies**: all versions stored in `sources.json`

#### Current Dependencies

+ **nixpkgs**: base Nix packages collection
+ **agda-stdlib**: standard Agda library (v2.2)
+ **agda-stdlib-classes**: type-class extensions for Agda stdlib
+ **agda-stdlib-meta**: meta-programming utilities for Agda
+ **agda-sets**: abstract set theory library
+ **iog-agda-prelude**: supplementary prelude for Agda


---

## Available Packages and Derivations

### Core Packages

+  `agdaWithPackages`: pre-configured Agda environment with all required libraries installed and properly configured.

   ```bash
   nix-build -A agdaWithPackages
   ./result/bin/agda --version
   ```

+  `formalLedger`: main Agda project that type-checks the formal ledger specification.

   ```bash
   nix-build -A formalLedger
   ```

+  `fls-shake`: custom Shake-based build system for generating various outputs from Agda sources.

   ```bash
   nix-build -A fls-shake
   ./result/bin/fls-shake --help
   ```

### Generated Outputs

+  `html` generates HTML documentation from Agda sources.

   ```bash
   nix-build -A html
   # Output available in ./result/html/
   ```

+  `hsSrc` generates Haskell source code from Agda specifications.

   ```bash
   nix-build -A hsSrc
   # Output available in ./result/hs/
   ```

+  `docs.conway.fullspec` generates complete PDF specification document.

   ```bash
   nix-build -A docs.conway.fullspec
   # PDF available at ./result/cardano-ledger.pdf
   ```

+  `docs.conway.diffspec` generates Conway-specific differential PDF specification.

   ```bash
   nix-build -A docs.conway.diffspec
   # PDF available at ./result/conway-ledger.pdf
   ```

### Development Environments

+  `devShells.ci`: minimal environment for CI/CD builds.

   **Includes**

   + `fls-shake` build system

   **Commands**

   ```bash
   nix-shell -A devShells.ci
   fls-shake --help  # Available for building outputs
   ```

+  `devShells.mkDocs`: development environment focused on Agda development and documentation.

   **Includes**

   + `agdaWithPackages` (Agda 2.7.0.1 + all libraries)
   + `pandoc` for document conversion
   + `python311` with MkDocs, Material theme, and extensions
   + `coreutils` for basic shell utilities

   **Commands**

   ```bash
   nix-shell -A devShells.mkDocs
   agda --version     # Available for Agda development
   mkdocs --version   # Available for documentation
   # Note: fls-shake is NOT available in this shell
   ```

## Usage Instructions

### Building Everything

```bash
# Build all derivations
nix-build

# Check it completed successfully
ls -la result*
```

### Building Specific Targets

```bash
# Type-check the formal ledger
nix-build -A formalLedger

# Generate HTML documentation
nix-build -A html

# Generate Haskell code
nix-build -A hsSrc

# Build PDF documentation
nix-build -A docs.conway.fullspec
```

### Using Nix Flakes

If you prefer the modern flakes interface:

```bash
# Build all packages
nix build

# Enter development shell
nix develop

# Build a specific package
nix build .#formalLedger
nix build .#html
```

### Development Workflow

#### Agda Development with Documentation Tools

```bash
# Enter development environment with Agda + documentation tools
nix-shell -A devShells.mkDocs

# Work on Agda files in src/ directory
agda src/Ledger.agda
```

#### Build System and Output Generation

```bash
# Enter CI environment (includes fls-shake)
nix-shell -A devShells.ci

# Generate outputs using fls-shake
fls-shake html                    # Generate HTML docs
fls-shake hs                      # Generate Haskell code  
fls-shake cardano-ledger.pdf      # Generate PDF
```

#### Alternative: Build Outputs with Nix

```bash
# Build specific outputs without entering shell
nix-build -A html                     # Generate HTML docs
nix-build -A hsSrc                    # Generate Haskell code
nix-build -A docs.conway.fullspec     # Generate full PDF spec
nix-build -A docs.conway.diffspec     # Generate Conway diff PDF

# Results available in ./result/
```

#### Combined Workflow

```bash
# Option 1: Build fls-shake once, then use it
nix-build -A fls-shake
./result/bin/fls-shake cardano-ledger.pdf

# Option 2: Use different shells for different tasks
nix-shell -A devShells.mkDocs         # For Agda development
nix-shell -A devShells.ci             # For build system tasks
```

### Updating Dependencies

To update pinned dependencies:

```bash
# Update all dependencies
niv update

# Update specific dependency
niv update nixpkgs
niv update agda-stdlib

# Add new dependency
niv add owner/repo -v tag-or-branch
```

---

## Key Features

### Reproducibility

+ All dependencies pinned to specific versions.
+ Builds are completely reproducible across machines.
+ No dependency on system-installed packages.

### Multi-format Output

+ HTML documentation for web viewing.
+ PDF specifications for formal documentation.
+ Haskell code generation for executable specifications.

### Incremental Development

+ Fast development shells with pre-built dependencies.
+ Cached builds of Agda libraries.
+ Modular build system using Shake.

### Cross-platform Support

+ Currently supports x86_64-Linux.
+ Can be extended to other platforms by modifying `flake.nix`.

---

## Troubleshooting

### Common Issues

1.  **`fls-shake: command not found` in mkDocs shell**

    - The `fls-shake` tool is only available in the `ci` shell, not `mkDocs`
    - Use `nix-shell -A devShells.ci` or build it separately with `nix-build -A fls-shake`

2.  **Build failures due to locale issues**

    - The configuration sets proper UTF-8 locales automatically
    - If issues persist, ensure your system has UTF-8 locales available

3.  **Agda library conflicts**

    - All libraries are pre-configured with correct versions
    - Avoid installing Agda libraries system-wide when using this setup

4.  **Memory issues during builds**

    - Agda compilation can be memory-intensive
    - Consider increasing available memory for large projects

### Getting Help

- Check build logs for specific error messages.
- Ensure you're using a supported platform (x86_64-Linux).
- Verify that Nix is properly installed and configured.

---

## Integration with IDEs

### Emacs

```bash
nix-shell -A devShells.mkDocs
emacs src/YourFile.agda
# Use agda-mode commands as normal
```


### VS Code

Install the Agda extension and configure it to use the Agda binary from the Nix environment:

```bash
nix-build -A agdaWithPackages
# Point VS Code Agda extension to ./result/bin/agda
```

---

## Performance Notes

- Initial builds may take significant time due to Agda library compilation.
- Subsequent builds are faster due to Nix caching.
- Consider using a Nix binary cache for faster builds in CI environments.

