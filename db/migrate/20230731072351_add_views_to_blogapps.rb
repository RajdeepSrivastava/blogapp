class AddViewsToBlogapps < ActiveRecord::Migration[7.0]
  def change
    add_column :blogapps, :views, :integer
  end
end
