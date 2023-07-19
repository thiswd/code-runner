require 'net/https'
require 'json'

def follow(id = nil, index = 1)
  url = build_url(id)
  uri = URI.parse(url)
  response = fatch_data(uri)

  result = JSON.parse(response.body)

  if result["follow"]
    puts "#{result["message"]} (#{add_zero(index)})"
    id = extract_id(result["follow"])

    follow(id, index + 1)
  else
    puts result["message"]
  end
end

def build_url(id)
  "https://www.letsrevolutionizetesting.com/challenge.json#{build_challenge_id(id)}"
end

def build_challenge_id(id)
  id ? "?id=#{id}" : ""
end

def fatch_data(uri)
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  http.get(uri.request_uri)
end

def extract_id(url)
  url.match(/id=(\d+)/)[1]
end

def add_zero(index)
  index.to_s.rjust(2,"0")
end

follow()
