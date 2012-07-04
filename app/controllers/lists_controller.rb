class ListsController < ApplicationController
  respond_to :json

  def index
    respond_to do |format|
      format.html
      format.json do
        lists_by_id = Hash[List.all.map {|l| [l.id, l]}]
        items_by_id = Hash[Item.all.map {|l| [l.id, l]}]
        render json: {'List' => lists_by_id, 'Item' => items_by_id}
      end
    end
  end

  def create
    list = List.create
    respond_with list
  end

  def update
    list = List.find(params[:id])
    list.update_attributes(params[:field_values])
    respond_with list
  end

end
