require 'rubygems'
require 'statistrano'

namespace :middleman do
  task build: :environment do
    system "middleman build"
  end
end
deployment = define_deployment "basic" do

  hostname   'velaru'
  #user       'freddie' # optional if remote is setup in .ssh/config
  #password   'something long and stuff' # optional if remote is setup in .ssh/config

  remote_dir '/var/www/apps/machogeek'
  local_dir  'build'
  build_task 'middleman:build' # optional if nothing needs to be built
  post_deploy_task 'base:post_deploy' # optional if no task should be run after deploy

  dir_permissions  755 # optional, the perms set on rsync & setup for directories
  file_permissions 644 # optional, the perms set on rsync & setup for files
  rsync_flags      '-aqz --delete-after' # optional, flags for rsync

  check_git  true # optional, set to false if git shouldn't be checked
  git_branch 'master' # which branch to check against


end

deployment.register_tasks


