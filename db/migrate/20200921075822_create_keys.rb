class CreateKeys < ActiveRecord::Migration[6.0]
  def change
    create_table :keys do |t|
      t.string :key, null: false
      t.string :key_name, null: false
      t.references :user, null: false, forein_key: true

      t.timestamps
    end
  end
end
