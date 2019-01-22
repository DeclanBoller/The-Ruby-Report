class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text :headline
      t.text :story
      t.text :sources
      t.text :author
      t.boolean :exclusive

      t.timestamps
    end
  end
end
