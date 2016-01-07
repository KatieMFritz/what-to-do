require 'sinatra'
require 'cat_api'

class WhatShouldIDo < Sinatra::Base
  get '/' do
    @catpics = CatAPI.new.get_images(results_per_page: 1)
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
