class RenameColumnKeyNameToKeyLabel < ActiveRecord::Migration[6.0]
  def change
    rename_column :keys, :key_name, :key_label
  end
end
