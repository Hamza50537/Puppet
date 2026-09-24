
package { 'install cowsay on rhel':
  ensure => 'latest',
  name   => 'cowsay',
}

package { 'no games':
  ensure => 'absent',
  name   => 'pinball',
}
