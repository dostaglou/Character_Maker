class CreateWealths < ActiveRecord::Migration[5.2]
  def change
    create_table :wealths do |t|
      t.string :wealth_value

      t.timestamps
    end
  end
end
