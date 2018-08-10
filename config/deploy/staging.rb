server 'srvlwebruby2.easycenter.fr', port: '22', roles: [:web, :app, :db], primary: true
set :stage, :staging
set :rvm_ruby_version, '2.4.1@myght-global-core'
set :user,            'telemedecine'
set :deploy_to,       "/local/www/#{fetch(:application)}"
set :ssh_options,     { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub) }