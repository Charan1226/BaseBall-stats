class PlayersController < ApplicationController
  def index
    @players = Rails.cache.fetch('Players/stats', expires_in: 1.hour) do
      Player.where('year >= ?', 1998)
    end
  end
end
