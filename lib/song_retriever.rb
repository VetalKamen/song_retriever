require 'song_retriever/engine'
require 'json'
require 'net/http'
require 'open-uri'
require 'openssl'

module SongRetriever

  def form_http_request(id)
    url = URI("https://genius.p.rapidapi.com/songs/#{id}")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["X-RapidAPI-Key"] = '1c5686de66msh830779470a04804p1c7f06jsnda11d223415c'
    request["X-RapidAPI-Host"] = 'genius.p.rapidapi.com'
    http.request(request)
  end

  def get_song_by_id(song_id)
    response = form_http_request(song_id)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_random_song
    random_id = rand(3000)
    response = form_http_request(random_id)
    JSON.parse(response.body, symbolize_names: true)
  end

  def listen(song)
    response = song[:response][:song] ? song[:response][:song] : get_random_song
    song_url = response[:media].first[:url]
    system_open_url(song_url)
  end

  def system_open_url(song_url)
    cmd = case RbConfig::CONFIG['host_os']
          when /mswin|mingw|cygwin/ then
            "start"
          when /darwin/ then
            "open"
          when /linux|bsd/ then
            "xdg-open"
          else
            raise "No OS detected"
          end
    system(cmd, song_url.to_s)
  end
end
