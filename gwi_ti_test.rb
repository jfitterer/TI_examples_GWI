##
## Ruby example for the GhostWolf Threat Intel API
## Not fully parametereized, illustrative purposes only
##
## @author	jfitterer@ghostwolfindustries.com
## @copyright	2014-2019 GhostWolf Industries, Inc.
## @license	
## @version	0.1
## @since	v0.1
##

require 'net/http'
require 'uri'

uri = URI.parse("https://ti-api.ghostwolfindustries.com/ip/128.75.222.116")
request = Net::HTTP::Get.new(uri)
request["Authorization"] = "Bearer XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end

# response.code
# response.body
