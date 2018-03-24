class CreateFils < ActiveRecord::Migration[5.1]
  def change
    create_table :fils do |t|
      t.string :title
      t.string :domain
      t.text :content

      t.timestamps
    end
  end
end
