module Admin
  class UrlsController < Admin::ApplicationController
    def old_slugs
      urls = Url.old_slugs
      urls.destroy_all
      redirect_to admin_urls_path
    end
  end
end
