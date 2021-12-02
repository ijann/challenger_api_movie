class GenerosController < ApplicationController

  def index
    render json: Genero.all
  end

  def create
    genero = Genero.new(genero_params)
    if genero.save
      render json: {
        status: 'SUCCESS',
        message: 'Genero creado exitosamente',
        data: genero
      }, status: :ok
    else
      render json: {
        status: 'FAILED',
        message: 'Genero no pudo ser creado',
        data: genero.errors
      }, status: :unprocessable_entity
    end
  end

  def destroy
    genero = Genero.find(params[:id])
    if pelicula.destroy
      render json: {
        status: 'SUCCESS',
        message: 'Genero eliminado con exito',
        data: genero
      }, status: :ok
    else
      render json: {
        status: 'FAILED',
        message: 'Genero no pudo ser eliminado',
        data: genero.errors
      }, status: :unprocessable_entity
    end
  end

  def update
    genero = Genero.find(params[:id])
    if genero.update(genero_params)
      render json: {
        status: 'SUCCESS',
        message: 'Genero actualizado con exito',
        data: genero
      }, status: :ok
    else
      render json: {
        status: 'FAILED',
        message: 'Genero no pudo ser actualizada',
        data: genero.errors
      }, status: :unprocessable_entity
    end
  end

  private

  def genero_params
    params.permit(:nombre, :imagen)
  end

end
