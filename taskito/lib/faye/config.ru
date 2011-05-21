require 'rack'
require 'faye'

faye = Faye::RackAdapter.new(:mount => '/faye', :timeout => 15)
run faye

