##
## Ruby example for the GhostWolf Threat Intel API
## Not fully parametereized, illustrative purposes only
##
## @author	jfitterer@ghostwolfindustries.com
## @copyright	2014-2019 Hoplite Industries, Inc.
## @license	
## @version	0.1
## @since	v0.1
##

require 'net/http'
require 'uri'

uri = URI.parse("https://ti-api.ghostwolfindustries.com/token")
request = Net::HTTP::Post.new(uri)
request.set_form_data(
  "client_id" => "user@domain.com",
  "client_secret" => "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
  "grant_type" => "client_credentials",
)

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end

# response.code
# response.body
