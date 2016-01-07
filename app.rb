require 'sinatra'

class WhatShouldIDo < Sinatra::Base
  get '/' do
    erb :home
  end

  helpers do

    def idea
      ['Clean the kitchen',
        'Crochet',
        'Code',
        'Read a book',
        'Do yoga',
        'Watch a movie',
        'Organization project',
        'Do laundry',
        'Catch up on work reading',
        'Play a game'
      ]
      .sample
    end

    def current_year
      Time.now.year
    end

  end
end
