require 'statistrano'

deployment = define_deployment "production", :releases do

  release_count 5
  release_dir "releases"
  public_dir "current"

end

deployment.register_tasks
