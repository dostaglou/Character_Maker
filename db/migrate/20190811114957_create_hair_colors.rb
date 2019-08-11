class CreateHairColors < ActiveRecord::Migration[5.2]
  def change
    create_table :hair_colors do |t|
      t.string :hair_color_value

      t.timestamps
    end
  end
end
