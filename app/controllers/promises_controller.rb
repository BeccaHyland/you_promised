class PromisesController < ApplicationController
  def index
    @promises = Promise.all
  end
end
