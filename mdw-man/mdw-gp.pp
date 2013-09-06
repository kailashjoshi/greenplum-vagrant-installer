include mdw::gp
include ssh

group { "puppet":
  ensure => "present",
}

exec { 'apt-get install unzip':
	command => '/usr/bin/apt-get install unzip'
}
