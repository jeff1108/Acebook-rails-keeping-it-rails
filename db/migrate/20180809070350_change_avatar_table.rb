class ChangeBioTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :bios, :bio
  end
end
