set :stage, :production

#set :deploy_to, '/home/deployer/focusedfitness'

set :branch, 'master'

set :rails_env, 'production'

#set :full_app_name, "#{fetch(:application)}_#{fetch(:stage)}"
set :full_app_name, 'focusedfitness'

set :unicorn_worker_count, 5

set :deploy_to, "/home/#{fetch(:deploy_user)}/apps/#{fetch(:full_app_name)}"
set :server_name, '104.236.116.93' #'www.focusedfitnessnyc.com focusedfitnessnyc.com'

server '104.236.116.93', user: 'deployer', roles: %w{web app db}, primary: true


# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

#role :app, %w{deployer@104.236.116.93}

set :enable_ssl, false

set :ssh_options, {
  user: 'deployer'
}


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

#server 'example.com', user: 'deploy', roles: %w{web app}, my_property: :my_value


# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
