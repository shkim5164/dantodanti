# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
for i in 1..100
    Suup.create(title: "수업#{i}", mentor_id: 1, endtime: Time.new(2018, 8, 26, 10, 00, 00))
end

User.create(email: 'a@a.com', password: '123123', password_confirmation: '123123')




