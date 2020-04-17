class CreateListitems < ActiveRecord::Migration[6.0]
  def change
    create_table :listitems do |t|
      t.references :playlist
      t.references :show

      t.timestamps
    end
  end
end
