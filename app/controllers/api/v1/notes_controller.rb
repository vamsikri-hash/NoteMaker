module Api
  module V1
    class NotesController < ApplicationController

      before_action  :set_note, only: [:show,:update,:destroy]

    def index
      @notes=current_user.notes.order("created_at DESC")
      json_response(@notes)
    end

    def create
      @note=current_user.notes.create!(note_params)
      json_response(@note,:created)
    end

    def show
      json_response(@note)
    end

    def update
      @note.update(note_params)
      json_response(@note)
    end


    def destroy
      @note.destroy
      head :no_content
    end



    private

    def note_params
      params.permit(:title)
    end

    def set_note
      @note=Note.find(params[:id])
    end


    end

  end
end
