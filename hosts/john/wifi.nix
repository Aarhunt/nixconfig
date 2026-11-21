{ config, ... }:

{
  sops.secrets."university_password" = {
    sopsFile = ../../configs/secrets/university.yaml;
    key = "university_password";
  };

  sops.templates."tue-wpa2.8021x" = {
    path = "/var/lib/iwd/tue-wpa2.8021x";
    mode = "0600";
    content = ''
      [IPv6]
      Enabled=true

      [Security]
      EAP-Method=PEAP
      EAP-Identity=your-username
      EAP-PEAP-Phase2-Method=MSCHAPV2
      EAP-PEAP-Phase2-Identity=your-username
      EAP-PEAP-Phase2-Password=${config.sops.placeholder."university_password"}
    '';
  };
}
