class CreatePeeps < ActiveRecord::Migration
  def change
    create_table :peeps do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
