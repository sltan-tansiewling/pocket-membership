class CreateMalls < ActiveRecord::Migration[6.0]
  def change
    create_table :malls do |t|
      t.string :name

      t.timestamps
    end
  end
end
