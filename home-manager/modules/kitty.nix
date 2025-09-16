{
  programs.kitty = {
    enable = true;

    settings = {
      enable_audio_bell = false;
      visual_bell_duration = "1.5";

      font_family = "family='FiraCode Nerd Font Mono' postscript_name=FiraCodeNFM-Reg";
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font= "auto";

      tab_bar_style = "powerline";

      #Theme Dracula
      foreground            = "#f8f8f2";
      background            = "#282a36";
      selection_foreground  = "#ffffff";
      selection_background  = "#44475a";
      url_color = "#8be9fd";
      color0  = "#21222c";
      color8  = "#6272a4";
      color1  = "#ff5555";
      color9  = "#ff6e6e";
      color2  = "#50fa7b";
      color10 = "#69ff94";
      color3  = "#f1fa8c";
      color11 = "#ffffa5";
      color4  = "#bd93f9";
      color12 = "#d6acff";
      color5  = "#ff79c6";
      color13 = "#ff92df";
      color6  = "#8be9fd";
      color14 = "#a4ffff";
      color7  = "#f8f8f2";
      color15 = "#ffffff";
      cursor            = "#f8f8f2";
      cursor_text_color = "background";
      active_tab_foreground   = "#282a36";
      active_tab_background   = "#f8f8f2";
      inactive_tab_foreground = "#282a36";
      inactive_tab_background = "#6272a4";
      mark1_foreground = "#282a36";
      mark1_background = "#ff5555";
    };

    keybindings = {
      "ctrl+plus" = "change_font_size all +1.0";
      "ctrl+kp_plus" = "change_font_size all +1.0";
      "ctrl+minus" = "change_font_size all -1.0";
      "ctrl+kp_minus" = "change_font_size all -1.0";
      "ctrl+shift+c" = "copy_and_clear_or_interrupt";
      "ctrl+c" =  "copy_or_interrupt";
      "ctrl+shift+t" = "new_tab_with_cwd";
    };
  };
}
