{ config, ... }: {
	programs.zsh = {
		enable = true;
		enableCompletion = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;

		shellAliases = 
			let
				flakeDir = "~/nix";
			in {
			rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
			rbt = "sudo nixos-rebuild test --flake ${flakeDir}";
			upd = "nix flake update --flake ${flakeDir}";
			upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

			hms = "home-manager switch --flake ${flakeDir}";

			conf = "nvim ${flakeDir}/nixos/configuration.nix";
			pkgs = "nvim ${flakeDir}/nixos/packages.nix";
			upkgs = "nvim ${flakeDir}/home-manager/user-packages.nix";

			ll = "ls -lh";
			v = "nvim";
			se = "sudoedit";
      lg = "lazygit";
      ssh = "kitten ssh";
		};


		history.size = 10000;
		history.path = "${config.xdg.dataHome}/zsh/history";


		oh-my-zsh = {
			enable = true;
      plugins = [ 
        "colored-man-pages"   
        "docker"
        "extract"               # Extracts every archive
        "fzf"
        "git" 
        "man"
        "rust"
        "ssh"
        "sudo" 
        "vscode"
        "virtualenv"
      ];
			theme = "clean";
		};
	};
}
