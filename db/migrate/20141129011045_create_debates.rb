class CreateDebates < ActiveRecord::Migration
  def change
    create_table :debates do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
