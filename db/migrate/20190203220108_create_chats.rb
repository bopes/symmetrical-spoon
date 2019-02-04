class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.integer :deliverer_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
