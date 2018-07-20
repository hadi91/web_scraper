require 'net/http'

class Scrape
  def initialize(url)
    @url = url
  end

  def get_info
    uri = URI(@url)
    info = Net::HTTP.get(uri)
    return info
  end
end
