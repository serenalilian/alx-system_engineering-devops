# 100-puppet_ssh_config.pp

# Ensure SSH client is configured to use the private key ~/.ssh/school
file_line { 'Declare identity file':
  path  => '/etc/ssh/ssh_config', # or the path to your ssh client configuration file
  line  => '    IdentityFile ~/.ssh/school',
  match => '^#?\s*IdentityFile\s.*',
}

# Ensure SSH client is configured to refuse authentication using a password
file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/ssh_config', # or the path to your ssh client configuration file
  line  => '    PasswordAuthentication no',
  match => '^#?\s*PasswordAuthentication\s.*',
}
