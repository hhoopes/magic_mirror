class AddCurrentToMotd < ActiveRecord::Migration
  def change
    add_column :motds, :current, :boolean, default: false
  end
end
