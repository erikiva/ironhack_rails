class AddIsbnToBooks < ActiveRecord::Migration
  def change
    add_column :books, :isbn, :integer, null:false, default:2
    add_index :books, :isbn
  end
end
