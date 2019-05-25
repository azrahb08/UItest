class AlterGuestsUsers < ActiveRecord::Migration[5.2]
  def up
    rename_table("guests_users", "events_guests")
  end
  def down
    rename_table("events_guests", "guests_users")
  end
end
