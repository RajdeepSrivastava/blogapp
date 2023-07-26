class CreateBlogapps < ActiveRecord::Migration[7.0]
  def change
    create_table :blogapps do |t|
      t.string :title
      t.string :body
      t.string :author_id

      t.timestamps
    end
  end
end
