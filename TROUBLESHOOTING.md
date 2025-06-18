## Troubleshooting

### Common Issues

1.  **`fls-shake: command not found` error:**

    - The `fls-shake` tool is available in both the default development shell and ci shell.
    - Use `nix-shell` (default) or `nix-shell -A devShells.ci` or build separately with `nix-build -A fls-shake`.

2.  **LaTeX/latexmk errors when building PDFs**

    **Error** `latexmk: createProcess: exec: invalid argument (Bad file descriptor)`

    **Causes and Solutions**

    +  **Missing latexmk**

       Install latexmk and LaTeX

       ```bash
       # Ubuntu/Debian
       sudo apt update
       sudo apt install latexmk texlive-full
       # Or minimal: sudo apt install latexmk texlive-latex-extra
       ```

    +  **PATH issues**

       Ensure latexmk is in your PATH

    +  **Nix users**

       This should be handled automatically

3.  **Unicode/encoding errors**

    **Error**

    `commitBuffer: invalid argument (cannot encode character '\8474')`

    **Cause**

    Agda trying to write Unicode characters with wrong encoding.

    **Solutions**

    ```bash
    # Option 1: Set locale for single command
    LC_ALL=en_US.UTF-8 fls-shake cardano-ledger.pdf

    # Option 2: Set globally in shell
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
    ```

4.  **Build failures due to locale issues**

    - The configuration sets proper UTF-8 locales automatically.
    - If issues persist, ensure your system has UTF-8 locales available.

5.  **Agda library conflicts**

    - All libraries are pre-configured with correct versions.
    - Avoid installing Agda libraries system-wide when using this setup.

6.  **Memory issues during builds**

    **Problem**

    Agda compilation is memory-intensive for large projects.

    **Solutions**

    +  **Agda-specific**

       Increase GHC heap size using RTS options.

       ```bash
       # Set environment variable to give Agda more memory
       export AGDA_RTS_OPTIONS="+RTS -M8G -A128M -RTS"
       nix-build -A formalLedger
       ```

    +  **Nix build options**

       Reduce parallel builds to lower memory pressure.

       ```bash
       nix-build --max-jobs 1 --cores 1  # Build sequentially
       ```

    +  **System-level**

       Add swap space if you have limited RAM.

       ```bash
       # Check current memory/swap
       free -h
       # Consider adding swap if needed (system-dependent)
       ```
    +  **Monitor usage**

       Use `htop` or `nix-top` during builds to identify bottlenecks.

7.  **Flake command errors:**

    **Error:** `does not provide attribute 'packages.x86_64-linux.default'`

    **Cause:** Flake doesn't expose required attributes

    **Solution:** Update your `flake.nix` to properly expose `devShells` and set defaults:
    ```nix
    # In flake.nix outputs
    packages = packageSet // {
      default = packageSet.formalLedger;
    };
    devShells = packageSet.devShells // {
      default = packageSet.devShells.default;
    };
    ```

### Getting Help

+ Check build logs for specific error messages.
+ Ensure you're using a supported platform (x86_64-Linux).
+ Verify that Nix is properly installed and configured.
+ Open a [New Issue][] in [our GitHub repository][formal-ledger-specifications].



[formal-ledger-specifications]: https://github.com/IntersectMBO/formal-ledger-specifications
[New Issue]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/new/choose
