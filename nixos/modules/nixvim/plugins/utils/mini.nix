{
  programs.nixvim.plugins.mini = {
    enable = true;

    modules = {
      align = {};
      basics = {
        options.extra_ui = true;
      };
      cursorword = {};
      doc = {};
      indentscope = {};
      trailspace = {};
      misc = {};
      surround = {};
      icons = {
        style = "glyph";
      };
    };

    mockDevIcons = true;
  };
}
