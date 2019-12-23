class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false, default: ""
      t.string :comment
      t.string :img, null: false, default: ""

      t.timestamps
    end
  end
end
