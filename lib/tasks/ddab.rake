namespace :ddab do
  task conflict: :environment do
    puts 'This results in an error as performance stats are enabled'
    Airbrake.configure do |c|
      c.performance_stats = true
    end

    do_net_http_stuff
  end


  task workaround: :environment do
    puts 'This succeeds as performance stats are disabled'
    Airbrake.configure do |c|
      c.performance_stats = false
    end

    do_net_http_stuff
  end

  def do_net_http_stuff
    require 'net/http'
    Net::HTTP.get(URI('https://status.airbrake.io/history.rss'))
    Net::HTTP.get(URI('https://status.datadoghq.com/history.rss'))
  end
end
