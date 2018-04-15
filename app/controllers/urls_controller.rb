class UrlsController < ApplicationController

  def index
   @urls = Url.all
  end

  def new
  end

  def create
    if !params[:url].blank? and user_signed_in?
      client = Bitly.client
      @url = client.shorten(params[:url])
      Url.create(main_url: @url.long_url ,shortener_url: @url.short_url) if @url
      redirect_to :action => 'index'
    else
      flash[:notice] = "Please login and create the url shortener."
      render :action => 'new'
    end
  end

end
