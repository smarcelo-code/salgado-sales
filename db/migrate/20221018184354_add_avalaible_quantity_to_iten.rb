class AddAvalaibleQuantityToIten < ActiveRecord::Migration[7.0]
  def change
    add_column :itens, :avalaible_quantity, :integer
  end
end
