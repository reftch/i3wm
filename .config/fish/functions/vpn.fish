
function vpn
  switch $argv[1]
    case up
      echo "vpn.secrets.password:$PASSWORD$argv[2]" > ~/.ssh/vpn_passwd  
      nmcli con up id compart_dev_tch passwd-file ~/.ssh/vpn_passwd
      rm ~/.ssh/vpn_passwd 
    case down
      nmcli con down compart_dev_tch
  end
end
