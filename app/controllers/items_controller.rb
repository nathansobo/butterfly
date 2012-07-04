class ItemsController < ApplicationController
  respond_to :json

  def create
    item = Item.create(params[:field_values])
    respond_with item
  end

  def update
    item = Item.find(params[:id])
    item.update_attributes(params[:field_values])
    respond_with item
  end
end
