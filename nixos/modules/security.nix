{
  security.pam.services = {
    login = {
      limits = ''
        @usrp - rtprio 99
      '';
    };
  };
}
