class slavemaker {

	package {'puppet':
		ensure => installed,
		allowcdrom => true,
	}

	file {'/etc/puppet/puppet.conf':
		content => template ("/etc/modules/slavemaker/templates/puppet.conf"),
		notify => Service ['puppet'],
	}

	service {'puppet':
		ensure => running,
		enable = true,
	}
}
