define user::managed_user(
 $username = $title,
 $homedir = "/home/${title}",
 $group = $title
){

  File {
    owner => $username,
    group => $group
  }

  user {"managed_user_${username}":
    ensure => present,
    name   => $username,
    gid    => $group
  }

  group {"managed_group_${group}":
    ensure => present,
    name   => $group
  }

  file {"managed_home_${username}":
    ensure => directory,
    path   => $homedir
  }

}
