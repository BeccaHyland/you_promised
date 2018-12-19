class PromisesController < ApplicationController
  def index
    @promises = Promise.all
  end

  def new
    @promise = Promise.new
  end

  def create
    @promise = Promise.create(promise_params)
    if @promise.save
      flash[:notice] = "Added your promise from #{@promise.giver}, they will probably definitely follow through on that."
      redirect_to promises_path
    else
      flash[:notice] = "Oops, please try again"
      render :new
    end
  end

  def edit
    @promise = Promise.find(promise_params[:id])
  end

  def update

  end

  private

  def promise_params
    params.require(:promise).permit(:id, :description, :giver, :status)
  end
end
