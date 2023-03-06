class CreateRooms < ActiveRecord::Migration[7.0]
  # rails g model Room questio:text answer:text user:references
  def change
    create_table :rooms do |t|
      t.text :question
      t.text :answer
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
