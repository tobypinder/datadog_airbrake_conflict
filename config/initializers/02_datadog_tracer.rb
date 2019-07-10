require 'ddtrace'

Datadog.configure do |c|
  c.use :rails
  c.use :http, service_name: 'datadog_airbrake_conflict'

  c.tracer enabled: true,
    debug: true
end
