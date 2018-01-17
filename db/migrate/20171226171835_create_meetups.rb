class CreateMeetups < ActiveRecord::Migration[5.1]
  def change
    create_table :meetups do |t|
      t.string :title
      t.text :description
      t.text :requirements
      t.date :date
      t.time :start, :default => Time.parse("18:00", now)
      t.time :end, :default => Time.parse("20:00", now)

      t.timestamps
    end
  end
end
