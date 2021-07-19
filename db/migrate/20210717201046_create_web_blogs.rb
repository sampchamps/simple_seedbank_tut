class CreateWebBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :web_blogs do |t|
      t.string :title
      t.string :author
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
