class AddAppToManager < ActiveRecord::Migration[5.2]
  def change
    add_reference :managers, :app, foreign_key: true
  end
end
