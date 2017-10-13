class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :template_type
      t.boolean :availability
      t.string :language
      t.string :brand_name
      t.string :description
      t.string :weblink
      t.string :modelname
      t.string :product_title
      t.integer :year

      t.timestamps
    end
  end
end
