class AddValidateTimeToIten < ActiveRecord::Migration[7.0]
  def change
    add_column :itens, :valite_time, :datetime
  end
end
