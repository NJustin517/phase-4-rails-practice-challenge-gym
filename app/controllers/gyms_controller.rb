class GymsController < ApplicationController

  def index
    render json: Gym.all
  end

  def show
    gym = Gym.find(params[:id])
    render json: gym
  end

  def update
    gym = Gym.find(params[:id])
    gym.update!(gym_params)
    render json: gym, status: :ok
  end

  def destroy
    gym = Gym.find(params[:id])
    gym.destroy
    head :no_content
  end

  private

  def gym_params
    params.permit(:name, :address)
  end

end
