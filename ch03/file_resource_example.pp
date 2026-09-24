file { 'Create example directory':
  ensure => 'directory',
  recurse => true,
  purge => true,  #when used togeather with recursive everything else will be deleted that is not declared using puppet
  path => '/tmp/file_resource'
}

file { 'Test file with content':
  ensure => 'file',
  content => 'This file is managed by puppet',
  path => '/tmp/file_resource/test_file'
}

