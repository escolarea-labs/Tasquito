require 'rubygems'
require 'faye'

EM.run {
  client = Faye::Client.new('http://localhost:9292/faye')
  
  client.subscribe '/messages' do |msg|
    puts msg.inspect
  end
}

