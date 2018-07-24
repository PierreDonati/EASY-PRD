class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string :name
      t.text :description
      t.string :delivery
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
