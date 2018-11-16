# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])


#!!!!!admin 계정!!!!!!
User.create(email:'admin@dantodanti.com',password:'admin123',password_confirmation:'admin123',username:'관리자')


for i in 1..100
    Suup.create(title: "수업#{i}", mentor_id: 1, endtime: Time.new(2018, 8, 26, 10, 00, 00))
end

for i in 1..20
    User.create(email: 'a@a.com', password: '123123', password_confirmation: '123123')
end


for i in 1..10
    Blacklist.create(name: "나쁜놈#{i}", major:'나쁜전공', number:i)
end




