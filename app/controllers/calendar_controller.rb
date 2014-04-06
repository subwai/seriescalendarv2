class CalendarController < ApplicationController
  def edit
  end

  def search
    response = Net::HTTP.get_response("api.trakt.tv", URI::escape("/search/shows.json/" + Rails.configuration.trakt_apikey + "?query=" + params[:q]))
    shows = JSON.parse(response.body)

    data = []
    shows.each do |show|
      data << {
        title: show["title"],
        overview: show["overview"],
        id: show["tvdb_id"]
      }
    end

    render :json => data
  end
end
