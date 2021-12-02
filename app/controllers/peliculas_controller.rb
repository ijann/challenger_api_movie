class PeliculasController < ApplicationController

  def index
    render json: Pelicula.all
  end

  def show
    render json: Pelicula.find(params[:id])
  end

  def create
    pelicula = Pelicula.new(pelicula_params)
    if pelicula.save
      render json: {
        status: 'SUCCESS',
        message: 'Pelicula creado exitosamente',
        data: pelicula
      }, status: :ok
    else
      render json: {
        status: 'FAILED',
        message: 'Pelicula no pudo ser creado',
        data: pelicula.errors
      }, status: :unprocessable_entity
    end
  end

  def destroy
    pelicula = Pelicula.find(params[:id])
    if pelicula.destroy
      render json: {
        status: 'SUCCESS',
        message: 'Pelicula eliminado con exito',
        data: pelicula
      }, status: :ok
    else
      render json: {
        status: 'FAILED',
        message: 'Pelicula no pudo ser eliminado',
        data: pelicula.errors
      }, status: :unprocessable_entity
    end
  end

  def update
    pelicula = Pelicula.find(params[:id])
    if pelicula.update(pelicula_params)
      render json: {
        status: 'SUCCESS',
        message: 'Pelicula actualizada con exito',
        data: pelicula
      }, status: :ok
    else
      render json: {
        status: 'FAILED',
        message: 'Pelicula no pudo ser actualizada',
        data: pelicula.errors
      }, status: :unprocessable_entity
    end
  end

  private

  def pelicula_params
    params.permit(:titulo, :imagen, :calificacion, :personajes)
  end

end
