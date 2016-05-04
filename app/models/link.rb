class Link < ActiveRecord::Base
	has_many :visits, -> { order 'created_at DESC' },
                     dependent: :destroy

	validates :url, presence: true
	validates :url, format: { with: URI.regexp }, if: Proc.new { |a| a.url.present? }
    validates :slug, presence: true,
                    length: { minimum: 2 },
                    uniqueness: { case_sensitive: false }

    def visits_count
    	self.visits.count
    end

    def last_visit
    	self.visits.order("created_at DESC").first
    end
end
