class mdw-gp {

file {
  "/tmp/greenplum-db-4.2.6.1-build-1-RHEL5-x86_64.zip":
  source => "puppet:///modules/greenplum/greenplum-db-4.2.6.1-build-1-RHEL5-x86_64.zip",
  mode => 640,
  owner => root,
  group => root
}

exec { "unzip_greenplum" :
  command => "unzip /tmp/greenplum-db-4.2.6.1-build-1-RHEL5-x86_64.zip -d /opt",
  path => $path,
  creates => "/opt/greenplum-db-4.2.6.1-build-1-RHEL5-x86_64",
  require => [ File["/tmp/greenplum-db-4.2.6.1-build-1-RHEL5-x86_64.zip"], Exec["apt-get install unzip"] ]
}

}
