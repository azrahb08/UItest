class AddFieldsToEvent < ActiveRecord::Migration[5.2]
  def up
    add_column("events", "date_of_event", :datetime, :after => "name")
    add_column("events", "location", :string, :after => "description")
    add_column("events", "rsvp_cut_off", :datetime, :after => "location")
  end

  def down
    remove_column("events", "rsvp_cut_off")
    remove_column("events", "location")
    remove_column("events", "date_of_event")
  end
end
