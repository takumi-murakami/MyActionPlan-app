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

  def show
    @user = User.find(params[:id])
    @plans = Plan.where(user_id: @user.id)
  end

  private
  def plan_params
    params.require(:plan).permit(:title, :text, :genre_id, :start_date, :end_date, :address, :postal_code).merge(user_id: current_user.id )
  end
end
