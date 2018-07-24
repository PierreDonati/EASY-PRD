class FeaturesController < ApplicationController
  
  before_action :set_feature, only: [:show, :edit, :update, :destroy]

  def index
    @features = Feature.all
  end

  def show
  end

  def new
    @feature = Feature.new
  end

  def create
    @feature = Feature.new(feature_params)
    @feature.user = current_user
    if @feature.save
      redirect_to feature_path(@feature)
    else render 'new'
    end
  end

  def edit
  end

  def update
    @feature.update(feature_params)
    if @feature.save
        redirect_to feature_path(@feature)
    else render 'edit'
    end
  end

  def destroy
    @feature.delete
    redirect_to features_path
  end

  private

  def feature_params
    params.require(:feature).permit(:name, :description, :delivery)
  end

  def set_feature
    @feature = Feature.find(params[:id])   
  end
  
end
