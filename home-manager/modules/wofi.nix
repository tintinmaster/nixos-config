{
  programs.wofi = {
    enable = true;
    style = ''
window {
  margin: 5px;
  border: 3px solid #bd93f9;
  border-radius: 10px
  background-color: #282a36;
} 

#input {
  margin: 5px;
  /* border: 2px solid blue; */
  background-color: #6272a4;
}

#entry:selected {
  background-color: #6272a4;
}
    '';
  };
}
