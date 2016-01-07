require 'sinatra'

class WhatShouldIDo < Sinatra::Base
  get '/' do
    erb :home
  end

  helpers do

    def idea
      ['Idea 1', 'Idea 2', 'Idea 3'].sample
    end

    def current_year
      Time.now.year
    end

  end
end
