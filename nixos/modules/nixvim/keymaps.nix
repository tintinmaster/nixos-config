{
	programs.nixvim = {
		globals = {
			mapleader = " ";
		};

		keymaps = [
			{
				mode = [
          "n"
        ];
				key = "<leader>s";
				action = "<cmd>w<cr><esc>";
				options = {
					desc = "Save file";
				};
			}
			{
				mode = [
          "i"
          "n"
          "s"
          "x"
        ];
				key = "<C-s>";
				action = "<cmd>w<cr><esc>";
				options = {
					desc = "Save file";
				};
			}
			{
				mode = [
          "i"
          "n"
        ];
				key = "<esc>";
				action = "<cmd>noh<cr><esc>";
				options = {
					desc = "Escape and Clear hlsearch";
				};
			}

		];
	};
}
