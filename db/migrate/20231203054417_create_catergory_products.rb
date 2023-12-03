class CreateCatergoryProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :catergory_products do |t|
      t.integer :category_id
      t.integer :product_id

      t.timestamps
    end
  end
end
