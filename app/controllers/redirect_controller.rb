class RedirectController < ApplicationController
	def show
        @link = Link.find_by slug: params[:slug]
        entity = params[:e]
        ip = request.remote_ip
        geopoint = Geocoder.search(ip)
  		city = geopoint[0].data['city']
  		country = geopoint[0].data['country_name']
        visit = @link.visits.create(entity: entity, ip: ip, city: city, country: country)

        redirect_to @link.url
    end
end
