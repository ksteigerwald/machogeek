require 'rubygems'
require 'statistrano'

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

deployment = define_deployment "production", :releases do

  # in addition to the "base" config options, there
  # are some (all defaulted) options specific for releases
  release_count 5
  release_dir  "releases"
  public_dir   "current"

end

deployment.register_tasks

