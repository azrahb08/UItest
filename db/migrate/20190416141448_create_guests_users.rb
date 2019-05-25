class CreateGuestsUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :guests_users, :id => false do |t|
      t.integer "guest_id"
      t.integer "event_id"
    end
    add_index("guests_users", ["guest_id","event_id"])
  end
  def down
    drop_table :guests_users
  end
end
