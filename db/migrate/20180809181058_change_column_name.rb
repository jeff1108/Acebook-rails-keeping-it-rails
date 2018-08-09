class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :profiles, :image, :avatar
  end
end
