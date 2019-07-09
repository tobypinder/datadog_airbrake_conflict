# https://github.com/airbrake/airbrake-ruby#configuration
Airbrake.configure do |c|
  c.project_id  = ENV['AIRBRAKE_PROJECT_ID']
  c.project_key = ENV['AIRBRAKE_PROJECT_KEY']

  c.root_directory      = Rails.root
  c.logger              = Logger.new(STDOUT, level: Rails.logger.level)
  c.environment         = Rails.env
  c.ignore_environments = %w[test development]

  c.performance_stats = true
end
