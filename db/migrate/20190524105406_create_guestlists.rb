class CreateGuestlists < ActiveRecord::Migration[5.2]
  def change
    create_table :guestlists do |t|
      t.string :name
      t.string :email
      t.string :response
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
