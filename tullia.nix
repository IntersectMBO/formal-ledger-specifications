self:

let
  ciInputName = "GitHub event";
in
rec {
  tasks = let
    inherit (self.inputs.tullia) taskSequence;

    common = { config, ... }: {
      preset = {
        # needed on top-level task to set runtime options
        nix.enable = true;

        github-ci = {
          # Tullia tasks can run locally or on Cicero.
          # When no facts are present we know that we are running locally and vice versa.
          # When running locally, the current directory is already bind-mounted
          # into the container, so we don't need to fetch the source from GitHub
          # and we don't want to report a GitHub status.
          enable = config.actionRun.facts != { };
          repo = "input-output-hk/formal-ledger-specifications";
          sha = config.preset.github-ci.lib.getRevision ciInputName null;
        };
      };
    };

    mkLedgerOutputTasks = outputs: imports: let
      taskSets = map (output: {
        "build/${output}/docs" = { lib, ... }: {
          imports = [ common ] ++ imports;

          command.text = ''
            nix build -L .#${lib.escapeShellArg output}.docs
          '';
        };

        "build/${output}/executableSpec" = { lib, ... }: {
          imports = [ common ] ++ imports;

          command.text = ''
            nix build -L .#${lib.escapeShellArg output}.executableSpec
          '';
        };
      }) outputs;
    in
      __foldl' self.inputs.nixpkgs.lib.mergeAttrs {} taskSets;

    ciTasks = {
      "build/agdaLedger" = { ... }: {
        imports = [ common ];

        command.text = ''
          nix build -L .#agdaLedger
        '';

        memory = 1024 * 8;
        nomad.resources.cpu = 10000;
      };
    } // mkLedgerOutputTasks [ "ledger" "midnight" ] [
      {
        memory = 1024 * 8;
        nomad.resources.cpu = 10000;
      }
    ];

    ciTasksSeq = taskSequence "ci/" ciTasks (__attrNames ciTasks);
  in ciTasks // ciTasksSeq // {
    "build/agda" = { ... }: {
      imports = [ common ];

      command.text = ''
        nix build -L .#agda
      '';

      memory = 1024 * 8;
      nomad.resources.cpu = 10000;
    };

    ci = {...}: {
      imports = [ common ];
      after = __attrNames ciTasksSeq;
    };
  };

  actions."formal-ledger-specifications/ci" = {
    task = "ci";
    io = ''
      // This is a CUE expression that defines what events trigger a new run of this action.
      // There is no documentation for this yet. Ask SRE if you have trouble changing this.

      let github = {
        #input: "${ciInputName}"
        #repo: "input-output-hk/formal-ledger-specifications"
      }

      #lib.merge
      #ios: [
        #lib.io.github_push & github,
        { #lib.io.github_pr, github, #target_default: false },
      ]
    '';
  };
}
