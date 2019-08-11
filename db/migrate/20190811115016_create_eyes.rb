class CreateEyes < ActiveRecord::Migration[5.2]
  def change
    create_table :eyes do |t|
      t.string :eye_color

      t.timestamps
    end
  end
end
