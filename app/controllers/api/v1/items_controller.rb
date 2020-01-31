module Api
  module V1

    class ItemsController < ApplicationController
      before_action :set_note
      before_action :set_note_item,only: [:show,:update,:destroy]


      def index
        @items=@note.items.order("created_at DESC")
        json_response(@items)
      end

      def create
        @note.items.create!(item_params)
        @item=@note.items.find_by(name: item_params[:name])
        json_response(@item, :created)
      end

      def show
        json_response(@item)
      end

      def update
        @item.update(item_params)
        json_response(@item)
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