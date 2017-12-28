require 'net/http'

module ApplicationHelper

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    session[:user_id] != nil
  end

  def redirect_unless_logged_in
    redirect_to new_session_path unless logged_in?
  end

  def redirect_unless_owner(user)
    redirect_to root_path unless current_user == user
  end

  def authorized?(user)
    current_user == user
  end


  def set_time(time)
    time.strftime("at %l:%M %P")
  end

  def set_date(date)
    date.strftime("%m/%d/%y")
  end

  def pretty_date(date)
    date.strftime("%B %dth '%y")
  end

  # def grab_songs
  #   base_url = "https://itunes.apple.com/search?term=phish"
  #   resp = Net::HTTP.get_response(URI.parse(base_url))
  #   buffer = resp.body
  #   result = JSON.parse(buffer)
  #   p "*************"
  #   songs = result["results"]
  #   songs.map {|data| data["trackName"]}
  # end

  def grab_songs(band)
    ##grab base link for api endpoint and pass in band name
    base_url = "https://itunes.apple.com/search?term=#{band}"
    p base_url
    ##create get response object and pass in url
    resp = Net::HTTP.get_response(URI.parse(base_url))
    buffer = resp.body
    result = JSON.parse(buffer)
    ##take response and carve out JSON objs
    p "*************"
    songs = result["results"]
    ##traverse down and map over to get desired results
    songs.map {|data| data["trackName"]}
  end


end
