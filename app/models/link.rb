class Link < ActiveRecord::Base
	has_many :visits, dependent: :destroy

	validates :url, presence: true
	validates :url, format: { with: URI.regexp }, if: Proc.new { |a| a.url.present? }
    validates :slug, presence: true,
                    length: { minimum: 2 }

    def visits_count
    	self.visits.count
    end

    def last_visit
    	self.visits.order("created_at DESC").first
    end
end
