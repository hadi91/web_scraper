require 'net/http'

class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    uri = URI(@url.website)
    contents = Net::HTTP.get(uri)
    encoded_contents = contents.force_encoding("ISO-8859-1").encode("UTF-8")
    @url.update_attribute(:content, encoded_contents)
    if @url.save
      redirect_to urls_path
    else
      render "new"
    end

  end

  def contents
  end

  def url_params
    params.require(:url).permit(:website)
  end
end
