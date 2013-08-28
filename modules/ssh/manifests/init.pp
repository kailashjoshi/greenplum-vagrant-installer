class ssh {

file {
  "/etc/hosts":
  source => "puppet:///modules/ssh/hosts",
  mode => 644,
  owner => root,
  group => root,
 }
}
