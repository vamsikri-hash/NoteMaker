module Api
  module V1

    class ItemsController < ApplicationController
      before_action :set_note
      before_action :set_note_item,only: [:show,:update,:destroy]


      def index
        @items=@note.items
        json_response(@items)
      end

      def create
        @note.items.create!(item_params)
        json_response(@note, :created)
      end

      def show
        json_response(@item)
      end

      def update
        @item.update(item_params)
        head :no_content
      end

      def destroy
        @item.destroy
        head :no_content
      end

      private
      def item_params
        params.permit(:name,:done,:deadline)
      end

      def set_note
        @note=Note.find(params[:note_id])
      end

      def set_note_item
        @item=@note.items.find_by!(id: params[:id]) if @note
      end
      end


  end
end