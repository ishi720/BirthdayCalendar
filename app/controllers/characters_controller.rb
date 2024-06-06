class CharactersController < ApplicationController
    def index
        @characters = Character.all
        @characters = @characters.where(
            "name LIKE :search OR tag LIKE :search OR nickname LIKE :search",
            search: "%#{params[:search]}%"
        )
        @characters_count = @characters.count
        @characters = @characters.order(:month, :day)
        @characters = @characters.page(params[:page]).per(12)

        @current_page = (params[:page] || 1).to_i
        @start_index = ((@current_page - 1) * 12) + 1
        @end_index = [@start_index + @characters.size - 1, @characters_count].min
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
