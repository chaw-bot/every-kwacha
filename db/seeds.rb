user = User.create!(name: 'John Doe', email: 'john@mail.com', password: 'john123', confirmed_at: Time.now)

icon1 = 'https://png.pngitem.com/pimgs/s/18-186729_food-beverage-food-and-beverage-icon-hd-png.png'
icon2 = 'https://www.pngitem.com/pimgs/m/264-2647646_transparent-fashion-icon-png-fashion-designing-icon-png.png'
icon3 = 'http://cdn.onlinewebfonts.com/svg/img_445017.png'
icon4 = 'https://cdn-icons-png.flaticon.com/512/2270/2270989.png'
icon5 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScyOyz56At0KjzlZvQXcp6VtPGnBwYbmCe5Q&usqp=CAU'


category1 = user.categories.create!(name: 'Food', icon: icon1)
category2 = user.categories.create!(name: 'Fashion', icon: icon2)
category3 = user.categories.create!(name: 'Health', icon: icon3)
category4 = user.categories.create!(name: 'Sport', icon: icon4)
category5 = user.categories.create!(name: 'Accessories', icon: icon5)

transaction1 = category4.records.create!(user: user, name: 'Trainers', amount: 152 )
transaction2 = category5.records.create!(user: user, name: 'Watch', amount: 500 )
transaction3 = category5.records.create!(user: user, name: 'Necklace', amount: 45 )
transaction4 = category4.records.create!(user: user, name: 'Football', amount: 56 )
transaction5 = category4.records.create!(user: user, name: 'Back pack', amount: 100 )
