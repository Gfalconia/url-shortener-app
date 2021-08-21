class Url < ApplicationRecord
    before_validation :generate_slug

    validates_presence_of :url
    validates :url, format: URI::regexp(%w[http https])
    validates_uniqueness_of :slug

    def short
        Rails.application.routes.url_helpers.short_url(slug: self.slug)
    end

    def generate_slug
        self.slug = SecureRandom.uuid[0..5] if self.slug.nil? || self.slug.empty?
        true
    end

end
