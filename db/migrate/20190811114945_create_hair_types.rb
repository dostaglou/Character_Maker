class CreateHairTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :hair_types do |t|
      t.string :hair_type_value

      t.timestamps
    end
  end
end
