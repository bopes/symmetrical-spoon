class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.string :text
      t.integer :chat_id

      t.timestamps
    end
  end
end
