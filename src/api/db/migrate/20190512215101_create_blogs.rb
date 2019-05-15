class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.text :content
      t.string :title, null: false # * Manually add to require presence of attribute on db level
      t.string :slug, null: false # * Manually add to require presence of attribute on db level

      t.timestamps
    end
    add_index :blogs, :slug, unique: true  # * Use slug:string:uniq to require uniquness of attribute on db level
  end
end
