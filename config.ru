require "qless"
require "qless/server"
require "qmore-server"

reqless_redis_url = ENV["REQLESS_REDIS_URL"] || "redis://localhost:6379/0"
qmore_refresh_frequency_seconds = ENV["QMORE_REFRESH_FREQUENCY_SECONDS"] || 60 * 5

client = Qless::Client.new(:url => reqless_redis_url)
Qmore.client = client
Qmore.configuration = Qmore::Configuration.new
Qmore.monitor = Qmore::Persistence::Monitor.new(
  Qmore.persistence,
  qmore_refresh_frequency_seconds,
)

builder = Rack::Builder.new do
  map("/") do
    run Qless::Server.new(client)
  end
end

run(builder)
