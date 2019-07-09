require 'ddtrace'

Datadog.configure do |c|
  c.use :rails
  c.use :http, service_name: 'datadog_airbrake_conflict'

  c.tracer enabled: true,
    debug: true,
    hostname: '172.17.0.1',
    port: 8126
end
