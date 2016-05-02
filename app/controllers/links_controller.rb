class LinksController < ApplicationController
    before_filter :authenticate

    def index
        @links = Link.all
    end

    def show
        @link = Link.find(params[:id])

        visit_dates = Hash[@link.visits.map {|v| [v.created_at]}]
        visit_count_by_date = visit_dates.inject(Hash.new(0)) do |hist, date|
            hist[date[0].strftime(Time::DATE_FORMATS[:single])] += 1
            hist
        end

        @stats = Hash.new
        Date.parse(visit_count_by_date.keys.first).upto(Date.today) do |date|
            d = date.strftime(Time::DATE_FORMATS[:single])
            @stats[d] = visit_count_by_date[d]
        end
    end

    def new
        @link = Link.new()
    end

    def edit
        @link = Link.find(params[:id])
    end

    def create
        #render plain: params[:link].inspect
        @link = Link.new(link_params)
        if @link.save
            redirect_to @link
        else
            render 'new'
        end
    end

    def update
        @link = Link.find(params[:id])

        if @link.update(link_params)
            redirect_to @link
        else
            render 'edit'
        end
    end

    def destroy
        @link = Link.find(params[:id])
        @link.destroy

        redirect_to links_path
    end

    private

        def link_params
            params.require(:link).permit(:url, :slug)
        end

        def authenticate
            authenticate_or_request_with_http_basic do |username, password|
                username == ENV["ADMIN"] && password == ENV["ADMIN_SECRET"]
            end
        end
end
