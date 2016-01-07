require 'sinatra'

class WhatShouldIDo < Sinatra::Base
  get '/' do
    erb :home
  end

end
