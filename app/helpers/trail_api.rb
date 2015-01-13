require 'unirest'
require 'json'

def trail_api(searched_city)
response = Unirest.get "https://trailapi-trailapi.p.mashape.com/?q[city_cont]=#{searched_city}",
  headers:{
    "X-Mashape-Key" => "z8jP4kZrhYmshgYdNDnAGbpdHOVAp1Ana2MjsnrN9pdIA3B1wy"
  }
 return JSON.parse(response.raw_body)['places']
end

# def activity_type(trail)
#   trail['places'].first['activities'].first['activity_type']['name']
# end

# def trail_length(trail)
#   trail['places'].first['activities'].first['length']
# end
