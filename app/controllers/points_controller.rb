class PointsController < ApplicationController
  before_action :basic_auth

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
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['AIAU_BASIC_AUTH_USER'] && password == ENV['AIAU_BASIC_AUTH_PASSWORD']  # 環境変数を読み込む記述に変更
    end
  end



end