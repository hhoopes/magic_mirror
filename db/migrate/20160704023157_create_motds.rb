class CreateMotds < ActiveRecord::Migration
  def change
    create_table :motds do |t|
      t.string :message
      t.string :author

      t.timestamps null: false
    end
  end
end
