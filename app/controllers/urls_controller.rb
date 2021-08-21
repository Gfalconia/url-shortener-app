class UrlsController < ApplicationController

    def show
        @url = Url.find_by_slug(params[:slug]) 
        @url.update_attribute(:clicked, @url.clicked + 1)
        redirect_to @url.url
    end

    def create
        url = Url.create(url: params[:url])
        render json: url
    end

    def index
        url = Url.select('clicked').find_by_slug(params[:slug])
        render json: url
    end

    def destroy
        url = Url.find_by(slug: params[:slug])
        url.destroy
    end

    def update
        url = Url.find_by(password: params[:password])
        url.update(slug: params[:updated_slug])
    end

    def old_slugs
        urls = Url.old_slugs
        render json: urls
    end

end
