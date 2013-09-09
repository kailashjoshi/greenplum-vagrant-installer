class mdw-gp {

file {
  "/tmp/greenplum-db-4.2.6.1-build-1-RHEL5-x86_64.tar":
  source => "puppet:///modules/mdw-gp/greenplum-db-4.2.6.1-build-1-RHEL5-x86_64.tar",
  mode => 640,
  owner => root,
  group => root
}


exec { "untar_greenplum" :
  command => "tar xf /tmp/greenplum-db-4.2.6.1-build-1-RHEL5-x86_64.tar -C /opt",
  path => $path,
  creates => "/opt/greenplum-db-4.2.6.1-build-1-RHEL5-x86_64",
  require => [ File["/tmp/greenplum-db-4.2.6.1-build-1-RHEL5-x86_64.tar"] ]
}

}
