class RedirectController < ApplicationController
	def show
        begin
            @link = Link.find_by slug: params[:slug]

            entity = params[:e] || 'N/S'
            ip = request.remote_ip
            geopoint = Geocoder.search(ip)
      		city = geopoint[0].data['city']
      		country = geopoint[0].data['country_name']

            visit = @link.visits.create(entity: entity, ip: ip, city: city, country: country)

            redirect_to @link.url
        rescue
            redirect_to root_path if @link.nil?
        end
    end
end
