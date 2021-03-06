# misc/bastion.pp

# bastion hosts

class misc::bastionhost {
	system_role { "misc::bastionhost": description => "Bastion" }

	require mysql::client
	
	package { "irssi":
		ensure => absent;
	}

	file { "/etc/sudoers":
		owner => root,
		group => root,
		mode => 0440,
		source => "puppet:///files/sudo/sudoers.appserver";
	}
}
