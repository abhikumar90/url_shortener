module Api
  module V1
    class UrlsController < ApplicationController

      http_basic_authenticate_with name: USERNAME, password: PASSWORD, only: [:index,:create]

     # curl -u "username:password" http://localhost:3000/api/v1/urls
      def index
        @urls = Url.all.collect{|a| [a.main_url,a.shortener_url]}
        data = []
        data << @urls
        render json: data
      end

      #curl -u "username:password" -d "url=URL"  http://localhost:3000/api/v1/urls
      def create
        if params[:url]
          client = Bitly.client
          @url = client.shorten(params[:url])
          @urls = Url.create(main_url: @url.long_url ,shortener_url: @url.short_url) if @url
        end
        render json: @urls
      end

    end
   end
end
