class AddSummaryToBio < ActiveRecord::Migration[5.1]
  def change
    add_column :bio, :summary, :string
  end
end
