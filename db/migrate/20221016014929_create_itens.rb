class CreateItens < ActiveRecord::Migration[7.0]
  def change
    create_table :itens do |t|
      t.string :name
      t.string :category
      t.integer :quantity
      t.string :description

      t.timestamps
    end
  end
end
