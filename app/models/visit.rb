class Visit < ActiveRecord::Base
  	belongs_to :link

    def location
        location = ""
        location = self.city + ", " if !self.city.empty?
        location += self.country
    end
end
