class CreateClaims < ActiveRecord::Migration[5.1]
  def change
    create_table :claims do |t|
      t.string :title
      t.text :content
      t.date :published
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
