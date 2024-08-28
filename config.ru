require 'reqless/server'

reqless_db_url = ENV['REQLESS_UI_DB_URL']

client = Reqless::Client.new(:url => reqless_db_url)

builder = Rack::Builder.new do
  use Rack::RewindableInput::Middleware

  map('/') do
    run Reqless::Server.new(client)
  end
end

run(builder)
