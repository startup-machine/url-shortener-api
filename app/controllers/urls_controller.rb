class UrlsController < ApplicationController
    def create
        @short_url = Url.create(original_url: params[:original_url], short_url: SecureRandom.hex(5))
        render json: { original_url: @short_url.original_url, short_url: @short_url.short_url }
    end

    
end
