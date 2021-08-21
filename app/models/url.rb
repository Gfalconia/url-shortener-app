class Url < ApplicationRecord
    before_validation :generate_slug, :generate_password

    validates_presence_of :url
    validates :url, format: URI::regexp(%w[http https])
    validates_uniqueness_of :slug

    scope :old_slugs, -> { where("created_at < ?", 2.months.ago) }

    def short
        Rails.application.routes.url_helpers.short_url(slug: self.slug)
    end

    def generate_slug
        self.slug = SecureRandom.uuid[0..5] if self.slug.nil? || self.slug.empty?
        true
    end

    def generate_password
        self.password = SecureRandom.uuid[0..18]
        true
    end

end
