class PointsController < ApplicationController
  def index
    @points = Point.all
    point_array
    # binding.pry
  end
  
  def new
    @point = Point.new
  end

  def show
  end

  def create
    @point = Point.new(point_params)
    if @point.save
      redirect_to root_path, notice: '作成しました'
    else
      render :new
    end
  end

  private

  def point_params
    params.require(:point).permit(:name ,:address, :latitude, :longitude)
  end
  def point_array
    points = []
    @points.each do |point|
      point_hash = {}
      point_hash = point
      points << point_hash
    end
  end




end