require 'net/http'
require 'json'
require 'uri'

class ApiLinkFollower
  BASE_URL = "https://www.letsrevolutionizetesting.com/challenge.json"

  def initialize
    @index = 1
  end

  def follow(id = nil)
    uri = build_uri(id)
    response = fetch_data(uri)

    handle_response(response)
  end

  private

  def build_uri(id)
    url = "#{BASE_URL}#{id_query_param(id)}"
    URI.parse(url)
  end

  def id_query_param(id)
    id ? "?id=#{id}" : ""
  end

  def fetch_data(uri)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.get(uri.request_uri)
  end

  def handle_response(response)
    result = JSON.parse(response.body)

    if result["follow"]
      puts "#{result["message"]} (#{format_index})"
      id = extract_id(result["follow"])

      @index += 1
      follow(id)
    else
      puts result["message"]
    end
  rescue JSON::ParserError => e
    puts "An error occurred while parsing JSON: #{e.message}"
  end

  def extract_id(url)
    url.match(/id=(\d+)/)[1]
  end

  def format_index
    @index.to_s.rjust(2,"0")
  end
end

ApiLinkFollower.new.follow
