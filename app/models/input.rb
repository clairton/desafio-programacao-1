require 'csv'

class Input < ApplicationRecord
  has_many :purchases

  def self.parse(file)
    ActiveRecord::Base.transaction do
	  input = Input.create! content: file.read.force_encoding('UTF-8'), total: 0.0

	  lines = CSV.new input.content, headers: true, col_sep: "\t"

      lines.each do |line|
        purchase = input.purchases.create!(
    		  purchaser_name: line['purchaser name'],
    		  item_description: line['item description'],
    		  item_price: line['item price'],
    		  purchase_count: line['purchase count'],
    		  merchant_address: line['merchant address'],
    	 	  merchant_name: line['merchant name'],
          purchase_total: line['purchase count'].to_f * line['item price'].to_f
        )
        input.total += purchase.purchase_total
      end
      input.save!
      input
    end
  end
end
