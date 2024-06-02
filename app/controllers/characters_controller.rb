class CharactersController < ApplicationController
    def index
        @characters = Character.all
        @characters = @characters.where(
            "name LIKE :search OR tag LIKE :search OR nickname LIKE :search",
            search: "%#{params[:search]}%"
        )
        @characters = @characters.order(:month, :day)
        @characters = @characters.page(params[:page]).per(12)
    end

    def new
        @character = Character.new
    end

    def edit
        @character = Character.find(params[:id])
    end

    def create
        @character = Character.new(character_params)

        if @character.save
            redirect_to characters_path
        else
            render :new
        end
    end

    def update
        @character = Character.find(params[:id])
        if @character.update(character_params)
            redirect_to characters_path
        else
            render :edit
        end
    end

    def destroy
        @character = Character.find(params[:id])
        @character.destroy
        redirect_to characters_path
    end

    private

    def character_params
        params.require(:character).permit(
            :name,
            :nickname,
            :month,
            :day,
            :tag,
            :icon_image,
            :description
        )
    end
end
