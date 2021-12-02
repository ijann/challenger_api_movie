class PersonajesController < ApplicationController

  def index
    render json: Personaje.all
  end

  def show
    personaje = Personaje.find(params[:id])
    if personaje
      render json: {
        status: 'SUCCESS',
        message: 'Personaje encontrado exitosamente',
        data: personaje
      }, status: :ok
    else
      render json: {
        status: 'FAILED',
        message: 'Personaje no existe',
        data: personaje.errors
      }, status: :unprocessable_entity
    end
  end

  def create
    personaje = Personaje.new(personaje_params)
    if personaje.save
      render json: {
        status: 'SUCCESS',
        message: 'Personaje creado exitosamente',
        data: personaje
      }, status: :ok
    else
      render json: {
        status: 'FAILED',
        message: 'Personaje no pudo ser creado',
        data: personaje.errors
      }, status: :unprocessable_entity
    end
  end

  def destroy
    personaje = Personaje.find(params[:id])
    if personaje.destroy
      render json: {
        status: 'SUCCESS',
        message: 'Personaje eliminado con exito',
        data: personaje
      }, status: :ok
    else
      render json: {
        status: 'FAILED',
        message: 'Personaje no pudo ser eliminado',
        data: personaje.errors
      }, status: :unprocessable_entity
    end
  end

  def update
    personaje = Personaje.find(params[:id])
    if personaje.update(personaje_params)
      render json: {
        status: 'SUCCESS',
        message: 'Personaje actualizado con exito',
        data: personaje
      }, status: :ok
    else
      render json: {
        status: 'FAILED',
        message: 'Personaje no pudo ser actualizado',
        data: personaje.errors
      }, status: :unprocessable_entity
    end
  end

  private

  def personaje_params
    params.permit(:nombre, :imagen, :edad, :peso, :historia, :peliculas)
  end
  
end
