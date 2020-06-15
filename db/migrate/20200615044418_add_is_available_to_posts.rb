class AddIsAvailableToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :is_available, :boolean, default: false
  end
end
