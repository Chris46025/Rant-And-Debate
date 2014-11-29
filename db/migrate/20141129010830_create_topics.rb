class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.boolean :rant
      t.boolean :debate

      t.timestamps
    end
  end
end
