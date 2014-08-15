name "sip_server"
description "Install a sip server"

override_attributes(
  "freeswitch" => {
    "autoload_modules" => %w[
      mod_console
      mod_logfile
      mod_event_socket
      mod_sofia
      mod_commands
      mod_dptools
      mod_dialplan_xml
      mod_spidermonkey
      mod_callcenter
      mod_xml_cdr
      mod_xml_curl
    ]
  }
)
run_list(
  "recipe[apt]",
  "recipe[freeswitch]"
)
