class RedirectController < ApplicationController
	def show
        @link = Link.find_by slug: params[:slug]


        visit = @link.visits.create(ip: request.remote_ip)


        redirect_to @link.url
    end
end
