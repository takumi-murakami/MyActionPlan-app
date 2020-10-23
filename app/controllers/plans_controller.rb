class PlansController < ApplicationController
  def index
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.valid?
      @plan.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  private
  def plan_params
    params.require(:plan).permit(:title, :text, :start_date, :end_date, :begin_at, :closed_at, :genre_id, :address, :postal_code).merge(user_id: current_user.id )
  end
end
