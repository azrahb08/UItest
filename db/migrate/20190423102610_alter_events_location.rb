class AlterEventsLocation < ActiveRecord::Migration[5.2]
  def up
    add_column('events', 'address', :string, :after => "date_of_event")
    add_column('events', 'latitude', :decimal, :after => "address")
    add_column('events', 'longitude', :decimal, :after => "latitude")
  end

  def down
    remove_column("events", "longitude")
    remove_column("events", "latitude")
    remove_column("events", "address")
  end
end
