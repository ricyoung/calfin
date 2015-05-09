# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# create three Events
2.times do |i|
  Event.create(
      name: "Event #{i + 1}", 
      :start => DateTime.now,
      location: "Location #{i + 1}")
end
# create three Events
2.times do |i|
  Event.create(
      name: "Upcoming Event #{i + 1}", 
      :start => Time.now + 10.days,
      location: "Different Location #{i + 1}")
end

# create three Events
1.times do |i|
  Event.create(
      name: "Old Event #{i + 1}", 
      :start => Time.now - 3.days,
      location: "Old loc #{i + 1}")
end

# create five Users
5.times do |i|
    User.create(
        name: "User #{i + 1}",
        email: "user#{i + 1}@email.com",
    )
end

# associate Events and Users as follows
# event_id | user_id
# ----------------------
#     1          1
#     1          2
Event.find(1).users << User.find(1)
Event.find(1).users << User.find(2)
Event.find(2).users << User.find(3)
Event.find(2).users << User.find(4)
Event.find(3).users << User.find(5)
