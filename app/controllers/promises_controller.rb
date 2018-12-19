class PromisesController < ApplicationController
  def index
    @promises = Promise.all
  end

  def new
    @promise = Promise.new
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
