class CharactersController < ApplicationController
  before_action :user_id, only: [:new, :create, :index]
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  def index
    redirect_to user_path(@user)
  end

  def show
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = @user
    if character.save
      redirect_to user_character_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @character.update(character_params)
    @character.save
    redirect_to user_path
  end

  def destroy
    @character.destroy
    redirect_to user_path
  end

  private

  def user_id
    @user = User.find(params[:user_id])
  end

  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :description, :allies, :enemies, :race_id)
  end
end
