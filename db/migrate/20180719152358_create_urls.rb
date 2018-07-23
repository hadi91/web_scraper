class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :website
      t.text :content

      t.timestamps
    end
  end
end
