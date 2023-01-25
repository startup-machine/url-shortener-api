class UrlsController < ApplicationController
    def create
        @short_url = Url.create(original_url: params[:original_url], short_url: SecureRandom.hex(5))
        render json: { original_url: @short_url.original_url, short_url: 'localhost:3000/' + @short_url.short_url }
    end

    def redirect
        @url = Url.find_by(short_url: params[:short_url])
        redirect_to @url.original_url, allow_other_host: true
    end
end
