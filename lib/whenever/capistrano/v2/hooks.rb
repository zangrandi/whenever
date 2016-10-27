require "whenever/capistrano/v2/recipes"

Capistrano::Configuration.instance(:must_exist).load do
  after "deploy:create_symlink", "whenever:update_crontab"
  after "deploy:rollback", "whenever:update_crontab"
end
