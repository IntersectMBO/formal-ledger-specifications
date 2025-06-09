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

We use `niv` to manage external dependencies, which provides

+ *reproducible builds*: all dependencies pinned to specific commits/versions;
+ *easy updates*: `niv update <package>` updates individual dependencies;
+ *declarative dependencies*: all versions stored in `sources.json`.

#### Current Dependencies

+ `nixpkgs`: base Nix packages collection;
+ `agda-stdlib`: standard Agda library (v2.2);
+ `agda-stdlib-classes`: type-class extensions for Agda stdlib;
+ `agda-stdlib-meta`: meta-programming utilities for Agda;
+ `agda-sets`: abstract set theory library;
+ `iog-agda-prelude`: supplementary prelude for Agda.

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

   + `fls-shake` build system.

   **Commands**

   ```bash
   nix-shell -A devShells.ci
   fls-shake --help  # available for building outputs
   ```

+  `devShells.mkDocs`: dev environment focused on Agda development and documentation.

   **Includes**

   + `agdaWithPackages` (Agda 2.7.0.1 + all libraries);
   + `pandoc` for document conversion;
   + `python311` with MkDocs, Material theme, and extensions;
   + `coreutils` for basic shell utilities.

   **Commands**

   ```bash
   nix-shell -A devShells.mkDocs
   agda --version     # available for Agda development
   mkdocs --version   # available for documentation
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
# Type-check the formal ledger:
nix-build -A formalLedger

# Generate HTML documentation:
nix-build -A html

# Generate Haskell code:
nix-build -A hsSrc

# Build PDF documentation:
nix-build -A docs.conway.fullspec
```

### Using Nix Flakes

If you prefer the modern flakes interface:

```bash
# Build all packages:
nix build

# Enter development shell:
nix develop

# Build a specific package:
nix build .#formalLedger
nix build .#html
```

### Development Workflow

#### Agda Development with Documentation Tools

```bash
# Enter development environment with Agda + documentation tools:
nix-shell -A devShells.mkDocs

# Work on Agda files in src/ directory:
agda src/Ledger.agda
```

#### Build System and Output Generation

```bash
# Enter CI environment (includes fls-shake):
nix-shell -A devShells.ci

# Generate outputs using fls-shake:
fls-shake html                     # generate html docs
fls-shake hs                       # generate Haskell code
fls-shake cardano-ledger.pdf       # generate pdf
```

#### Alternative: Build Outputs with Nix

```bash
# Build specific outputs without entering shell:
nix-build -A html                  # generate html docs
nix-build -A hsSrc                 # generate Haskell code
nix-build -A docs.conway.fullspec  # generate full spec pdf
nix-build -A docs.conway.diffspec  # generate Conway diff spec pdf

# Results available in ./result/
```

#### Combined Workflow

```bash
# Option 1. Build fls-shake once, then use it:
nix-build -A fls-shake
./result/bin/fls-shake cardano-ledger.pdf

# Option 2. Use different shells for different tasks:
nix-shell -A devShells.mkDocs      # for Agda development
nix-shell -A devShells.ci          # for fls-shake build tasks
```

### Updating Dependencies

To update pinned dependencies:

```bash
# Update all dependencies:
niv update

# Update specific dependency:
niv update nixpkgs
niv update agda-stdlib

# Add new dependency:
niv add owner/repo -v tag-or-branch
```

---

## Key Features

### Reproducibility

+ All dependencies pinned to specific versions.
+ Builds are completely reproducible across machines.
+ No dependency on system-installed packages.

### Multi-format Output

+ Html documentation for web viewing.
+ Pdf specifications for formal documentation.
+ Haskell code generation for executable specifications.

### Incremental Development

+ Fast development shells with pre-built dependencies.
+ Cached builds of Agda libraries.
+ Modular build system using Shake.

---

## Troubleshooting

### Common Issues

1.  **`fls-shake: command not found`** (e.g., in mkDocs shell)

    - The `fls-shake` tool is only available in the `ci` shell, not `mkDocs`.
    - Use `nix-shell -A devShells.ci` or build it separately with `nix-build -A fls-shake`.

2.  **Build failures due to locale issues**

    - The configuration sets proper UTF-8 locales automatically.
    - If issues persist, ensure your system has UTF-8 locales available.

3.  **Agda library conflicts**

    - All libraries are pre-configured with correct versions.
    - Avoid installing Agda libraries system-wide when using this setup.

4.  **Memory issues during builds**

    - Agda compilation can be memory-intensive.
    - Consider increasing available memory for large projects.
4. **Memory issues during builds:**
   - Agda compilation can be memory-intensive for large projects
   - **Agda-specific**: Increase GHC heap size using RTS options:
     ```bash
     # Set environment variable to give Agda more memory
     export AGDA_RTS_OPTIONS="+RTS -M8G -A128M -RTS"
     nix-build -A formalLedger
     ```
   - **Nix build options**: Reduce parallel builds to lower memory pressure:
     ```bash
     nix-build --max-jobs 1 --cores 1  # Build sequentially
     ```
   - **System-level**: Add swap space if you have limited RAM:
     ```bash
     # Check current memory/swap
     free -h
     # Consider adding swap if needed (system-dependent)
     ```
   - **Monitor usage**: Use `htop` or `nix-top` during builds to identify bottlenecks

### Getting Help

+ Check build logs for specific error messages.
+ Ensure you're using a supported platform (x86_64-Linux).
+ Verify that Nix is properly installed and configured.

---

## Integration with IDEs

### Emacs

#### Quick Setup (Simple)

For basic Agda development with the project's Agda environment, launch Emacs as follows:

```bash
nix-shell -A devShells.mkDocs
emacs src/YourFile.agda
# Use agda-mode commands as normal (C-c C-l to load, etc.)
```

#### Advanced Setup (Multiple Agda Versions)

For a setup that allows switching between different Agda versions, do the following:

1. **Build and symlink the project's Agda:**
   ```bash
   nix-build -A agdaWithPackages -o ~/ledger-agda
   ```
   
   **Notes:**
   - Replace `~/ledger-agda` with your preferred path
   - This creates a persistent symlink to the project's Agda with all libraries
   - You can verify with: `~/ledger-agda/bin/agda --version`

2. **Configure Emacs for version switching**.
   
   Add the following to your [Emacs init file](https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html) (highlight and `M-x eval-region` to load without restarting):

   ```elisp
   ;; Defines a function `my/switch-agda' that switches between different
   ;; `agda' executables defined in `my/agda-versions'. The first entry of
   ;; `my/agda-versions' is assumed to be the default Agda.
   ;;
   ;; If there are two entries in `my/agda-versions', `my/switch-agda' toggles
   ;; between the two. If there are more entries, it will ask which one
   ;; to choose.
   (setq my/agda-versions `(("System Agda"  "2.6.4" "agda")  ; Adjust version as needed
                            ("Ledger Agda"  "2.7.0.1" "~/ledger-agda/bin/agda")))
   (setq my/selected-agda (caar my/agda-versions))
   
   (defun my/switch-agda (name version path)
     (interactive
      (cond ((> (length my/agda-versions) 2)
             (assoc (completing-read "Agda: " my/agda-versions '(lambda (x) 't) 't) my/agda-versions))
            ((= (length my/agda-versions) 2)
             (car (seq-filter '(lambda (x) (not (string= my/selected-agda (car x)))) my/agda-versions)))
            (t (error "my/agda-versions needs to have at least two elements!"))))
     (message "Selecting %s, version %s" name version)
     (setq my/selected-agda   name
           agda2-version      version
           agda2-program-name path)
     (agda2-restart))
   
   ;; Bind the switch function to C-c C-x C-t in agda2-mode
   (with-eval-after-load 'agda2-mode 
     (define-key agda2-mode-map (kbd "C-c C-x C-t") 'my/switch-agda))
   ```

   **Configuration Notes:**
   - Update the system Agda version in `my/agda-versions` to match your installation
   - Check your system Agda with: `which agda && agda --version`
   - Once configured, use `C-c C-x C-t` to switch between Agda versions
   - This works with most Emacs distributions (Doom, Spacemacs, vanilla, etc.)

3. **Usage:**
   - Open any `.agda` file in Emacs
   - Use `C-c C-x C-t` to switch to the ledger Agda version
   - Use standard agda-mode commands (`C-c C-l` to load, `C-c C-c` to case split, etc.)
   - The project's libraries will be automatically available

#### Troubleshooting Emacs Setup

+  **agda-mode not found**

   Install agda-mode with `M-x package-install RET agda2-mode`.

+  **Wrong Agda version**

   Check `agda2-program-name` variable with `C-h v agda2-program-name`.

+  **Library not found**

   Ensure you're using the project's Agda (`~/ledger-agda/bin/agda`).


### VS Code

#### Installation and Configuration

1. **Install the Agda Language Server extension**.

   + Open VS Code.
   + Go to Extensions (`Ctrl+Shift+X`).
   + Search for "agda-mode".
   + Install the official Agda extension.

2. **Build the project's Agda binary**.

   ```bash
   nix-build -A agdaWithPackages
   # Note the output path, e.g., /nix/store/r7qslc6myc3s2l1482vahqddv2lhzndp-agdaWithPackages-2.7.0.1
   ```

3. **Configure VS Code to use the project's Agda**.

   **Method 1: Via Settings UI**

   + Open VS Code Settings (`Ctrl+,`).
   + Search for "agda".
   + Find "Agda Mode › Connection: Paths".
   + Click "Add Item".
   + Add the path to your built Agda binary; e.g.,

     ```
     /nix/store/r7qslc6myc3s2l1482vahqddv2lhzndp-agdaWithPackages-2.7.0.1/bin/agda
     ```

   **Method 2: Via settings.json**

   + Open Command Palette (`Ctrl+Shift+P`).
   + Type "Preferences: Open Settings (JSON)".
   + Add or modify the "agdaMode.connection.paths" setting; e.g.,

     ```json
     {
       "agdaMode.connection.paths": [
         "/nix/store/r7qslc6myc3s2l1482vahqddv2lhzndp-agdaWithPackages-2.7.0.1/bin/agda",
         "agda"
       ]
     }
     ```

4. **Create a persistent symlink (recommended)**.
   
   To avoid updating the path every time you rebuild:

   ```bash
   nix-build -A agdaWithPackages -o ~/ledger-agda
   ```
   
   Then use in VS Code settings:
   ```json
   {
     "agdaMode.connection.paths": [
       "~/ledger-agda/bin/agda",
       "agda"
     ]
   }
   ```

5. **Switch between Agda versions**.

   + Use `Ctrl+C Ctrl+R` to switch between configured Agda executables.
   + The first path in the list is the default.

#### VS Code Usage

+ Open any `.agda` file.
+ The extension should automatically start the Agda Language Server.
+ Use `Ctrl+C Ctrl+L` to type-check/load the current file.
+ Hover over definitions to see types.
+ Use `Ctrl+C Ctrl+R` to switch Agda versions if you have multiple configured.

#### Troubleshooting VS Code Setup

+  **"Cannot find agda"**

   Ensure the path in settings points to the actual binary

+  **Libraries not found**

   Make sure you're using the project's Agda with libraries (`agdaWithPackages`)

+  **Extension not working**

   Check VS Code's Output panel for error messages

+  **Performance issues**

   The Agda Language Server can be memory-intensive; close other applications if needed.

## Performance Notes

- Initial builds may take significant time due to Agda library compilation
- Subsequent builds are faster due to Nix caching
- Consider using a Nix binary cache for faster builds in CI environments
