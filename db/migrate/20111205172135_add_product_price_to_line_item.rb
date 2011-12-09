class AddProductPriceToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :price, :decimal
    LineItem.reset_column_information
	 

    LineItem.all.each do |li|
      li.price = li.product.price
    end
  end
end
