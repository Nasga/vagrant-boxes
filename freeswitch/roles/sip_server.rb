name "sip_server"
description "Install a sip server"
run_list(
  "recipe[apt]",
  "recipe[freeswitch]"
)
