class CreateRants < ActiveRecord::Migration
  def change
    create_table :rants do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
