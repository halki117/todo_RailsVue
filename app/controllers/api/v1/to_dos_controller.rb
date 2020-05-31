class Api::V1::ToDosController < ApplicationController
  def index
    to_dos = ToDo.all
    render json: to_dos
  end
end
