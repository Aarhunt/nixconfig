{ config, ... }:

{
  sops.secrets."university_password" = {
    sopsFile = ./configs/secrets/university.yaml;
    key = "university_password";
  };

  sops.templates."university_password".content = ''
      password="$(cat ${config.sops.secrets."university_password".path})"

      install -d -m 0700 /var/lib/iwd

      cat > /var/lib/iwd/tue-wpa2.8021x <<EOF
      [IPv6]
      Enabled=true

      [Security]
      EAP-Method=PEAP
      EAP-Identity=username
      EAP-PEAP-Phase2-Method=MSCHAPV2
      EAP-PEAP-Phase2-Identity=username
      EAP-PEAP-Phase2-Password="${config.sops.secrets.university_password}"
      EOF

      chmod 0600 /var/lib/iwd/tue-wpa2.8021x
    '';
}
