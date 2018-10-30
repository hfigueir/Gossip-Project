class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.string :content
      t.datetime :date
      t.references :recipient, foreign_key: true
      t.references :sender, foreign_key: true

      t.timestamps
    end
  end
end
