#!/usr/bin/env bash
# Using pupprt to connect without password

file { "/etc/ssh/ssh_config":
  ensure => present,
}

file_line { "Turn off passwd auth":
  path    => "/etc/ssh/ssh_config",
  line    => "PasswordAuthentication no",
  match   => "#PasswordAuthentication",
}

file_line { "Declare identity file":
  path    => "/etc/ssh/ssh_config",
  line    => "IdentityFile ~/.ssh/ssh/school",
  match   => "^#IdentityFile",
}
