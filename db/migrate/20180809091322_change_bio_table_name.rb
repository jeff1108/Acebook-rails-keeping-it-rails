class ChangeBioTableName < ActiveRecord::Migration[5.1]
  def change
    rename_table :bio, :bios
  end
end
