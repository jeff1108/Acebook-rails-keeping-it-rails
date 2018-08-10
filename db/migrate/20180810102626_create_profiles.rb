class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :summary
      t.string :image

      t.timestamps
    end
  end
end
