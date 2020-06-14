class Api::V1::ToDosController < ApplicationController
  def index
    @to_dos = ToDo.all
    # render json: to_dos
  end

  def destroy
    @to_do = Todo.find_by(id: params[:id])
    @to_do.destroy
    redirect_to to_do_url
  end
end
