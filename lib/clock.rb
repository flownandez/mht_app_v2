require 'clockwork'
require 'clockwork/manager_with_database_tasks'
require 'xively-rb'
require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)

module Clockwork
  handler do |job|
    puts "Running #{job}"
    get https://api.xively.com/v2/feeds/705754061/datastreams/Pulse.json
  end

  # handler receives the time when job is prepared to run in the 2nd argument
  # handler do |job, time|
  #   puts "Running #{job}, at #{time}"
  # end

  every(10.seconds, 'frequent.job')
end