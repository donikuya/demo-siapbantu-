set :application, "siapbantu"
set :deploy_to, "/var/www/apps/#{application}"
#set :repository,  "set your repository location here"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

role :app, "siapbantu.zonecore.info"
role :web, "siapbantu.zonecore.info"
role :db,  "siapbantu.zonecore.info", :primary => true

default_run_option[:pty] = true
set :repository, ""
set :scm, "git"
set :branch, "master"
set :deploy_via, :remote_cache

set :user, "deploy"
set :admin_runner, "deploy"

namespace :deploy do
	desc "restart application"
	task :restart,:roles => :app do
		run "touch #{current_path}/tmp/restart.txt"
	end
	desc "Start Application -- not needed for passenger"
	task :start, :roles => :app do
		# nothing -- need to override default cap start task when using Passenger
	end
end