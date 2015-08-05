class CreateCurrentWinds < ActiveRecord::Migration
  def change
    create_table :current_winds do |t|

      t.timestamps null: false
    end
  end
end
