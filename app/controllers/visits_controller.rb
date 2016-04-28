class VisitsController < ApplicationController
  def create
    @link = Link.find(params[:link_id])
    @visit = @link.visits.create(visit_params)
    redirect_to link_path(@link)
  end
 
  def destroy
    @link = Link.find(params[:link_id])
    @visit = @link.visits.find(params[:id])
    @visit.destroy
    redirect_to link_path(@link)
  end
 
  private
    def visit_params
      params.require(:visit).permit(:ip)
    end
end