_: {
  programs = {
    helix = {
      enable = true;
      languages = [
        {
          name = "nix";
          language-server = {
            command = "nil";
          };
          roots = ["flake.nix" "flake.json"];
          auto-format = true;
          formatter = {
            command = "alejandra";
          };
        }
      ];
      settings = {
        theme = "catppuccin_mocha";
        editor = {
          line-number = "relative";
          color-modes = true;
          statusline = {
            left = ["mode" "spinner"];
            center = ["file-name"];
            right = ["diagnostics" "selections" "position" "file-encoding" "file-line-ending" "file-type"];
            separator = "φ";
          };
          lsp = {
            display-messages = true;
          };
          cursor-shape = {
            normal = "block";
            insert = "bar";
            select = "underline";
          };
          file-picker = {
            hidden = false;
            parents = false;
            ignore = false;
            git-ignore = false;
            git-global = false;
            git-exclude = false;
          };
          whitespace = {
            render = "none";
            characters = {
              space = "·";
              tab = "→";
              tabpad = "→";
              newline = "⏎";
            };
          };
          indent-guides = {
            render = true;
          };
        };
      };
    };
  };
}
