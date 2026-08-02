
package { 'install cowsay on ubuntu':
  ensure => 'latest',
  name   => 'cowsay',
}

package { 'no games':
  ensure => 'absent',
  name   => 'pinball',
}
