class CreateBravoBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :bravo_blogs do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
