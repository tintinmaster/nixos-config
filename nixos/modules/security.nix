{
  security.pam.services = {
    login = {
      limits = [
        {
          domain = "@usrp";
          type = "-";
          item = "rtprio";
          value = 99;
        }
      ];
    };
  };
}
