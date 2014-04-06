class mysql {

  # root mysql password
  $mysqlpw = "d3v0p5"
  $new_password = "d3v0p5"
  $new_user = "devops"
  $new_db_name = "laravel"

  # install mysql server
  package { "mysql-server":
    ensure => present,
    require => Exec["apt-get update"]
  }

  #start mysql service
  service { "mysql":
    ensure => running,
    require => Package["mysql-server"],
  }

  # set mysql password
  exec { "set-mysql-password":
    unless => "mysqladmin -uroot -p$mysqlpw status",
    command => "mysqladmin -uroot password $mysqlpw",
    require => Service["mysql"],
  }

  # Set up a database instance
  exec { "create-${new_db_name}-db": 
    unless => "/usr/bin/mysql -uroot ${new_db_name}",
    command => "/usr/bin/mysql -uroot -e \"CREATE DATABASE ${new_db_name}; CREATE USER ${new_user} IDENTIFIED BY 'd3v0p5'; GRANT ALL PRIVILEGES ON ${new_db_name}.* TO ${new_user}@'%'; \"",
    require => Service["mysql"],
  }

}
