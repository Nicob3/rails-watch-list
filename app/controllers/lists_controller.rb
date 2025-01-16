class ListsController < ApplicationController
  def index
    @lists = Movie.all
  end

  def show
    @list = Movie.find(params[:id])
  end

  def new
    @list = Movie.new
  end

  def create
    @list = Movie.new(params[:movie])
    @list.save
  end
end
