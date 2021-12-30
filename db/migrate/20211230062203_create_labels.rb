class CreateLabels < ActiveRecord::Migration[7.0]
  def change
    create_table :labels do |t|
      t.string :title
      t.string :color
      t.string :slug

      t.timestamps
    end
  end
end
