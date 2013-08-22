class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :title
      t.string :content
      t.string :time
      t.string :category

      t.timestamps
    end
  end
end
