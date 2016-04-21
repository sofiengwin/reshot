class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :original_url
      t.string :vanity_string
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
