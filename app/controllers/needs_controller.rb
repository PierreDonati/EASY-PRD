class NeedsController < ApplicationController
  
  before_action :set_feature
  before_action :set_need, only: [:edit, :update, :destroy]

  def create
    @need = Need.new(need_params)
    @need.user = current_user
    @need.feature = @feature 
    if @need.save
      redirect_to feature_path(@feature)
    else
      redirect_to feature_path(@feature)
    end
  end

  def edit
  end

  def update
    @need.update(need_params)
    if @need.save
      redirect_to feature_needs_path
    else
      render 'edit'
    end
  end

  def destroy
    @need.delete
    redirect_to feature_needs_path
  end

  private

  def set_feature
    @feature = Feature.find(params[:feature_id])
  end

  def set_need
    @need = Need.find(params[:id])
  end

  def need_params
    params.require(:need).permit(:description)
  end

end
