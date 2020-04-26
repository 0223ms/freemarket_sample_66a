class Addcolumproduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :description,   :text,       null: false
    # add_column :products, :category,      :references, null: false, foreign_key: true
    # add_column :products, :brand,         :references, foreign_key: true
    add_column :products, :condition,     :string,     null: false
    add_column :products, :delivery_cost, :string,     null: false
    add_column :products, :delivery_way,  :string,     null: false
    add_column :products, :delivery_days, :string,     null: false
    # add_column :products, :buyer_id,      :integer,    foreign_key: true
    # add_column :products, :saller_id,     :integer,    foreign_key: true
  end
end
