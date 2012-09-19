
#
# Example of how to move a static file
#
file { '/tmp/static.conf':
   ensure => file,
   mode => '644',
   source => "puppet:///modules/apache_setup/001-atlas-admin.oreilly.com.conf",
}


#
# Example of dynamic template
#
file { '/tmp/dynamic.conf':
   ensure => file,
   mode => '644',
   content => template("apache_setup/001-atlas-admin.oreilly.com.conf.erb")
}