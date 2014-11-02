class platform {

  file { "/tmp/testpuppet":
    content => "Etc/UTC",
    ensure => present,
  } 

}

Exec { path => [ "/bin", "/sbin" , "/usr/bin", "/usr/sbin" ] }
include platform


