user = User.create!(name: 'John Doe', email: 'john@mail.com', password: 'john123')

icon1 = 'https://freedesignfile.com/upload/2020/09/Tasty-food-vector-icon.jpg'
icon2 = 'https://thumbs.dreamstime.com/b/fashion-boutique-rgb-color-icon-women-stylish-garment-online-store-shopping-mall-category-female-clothes-shoes-accessories-187269539.jpg'
icon3 = 'https://www.seekpng.com/png/detail/134-1349786_click-the-icons-below-for-more-info-on.png'
icon4 = 'https://image.emojipng.com/679/10488679.jpg'
icon5 = 'https://cdn-icons-png.flaticon.com/512/1974/1974756.png'


category1 = user.categories.create!(name: 'Food', icon: icon1)
category2 = user.categories.create!(name: 'Fashion', icon: icon2)
category3 = user.categories.create!(name: 'Health', icon: icon3)
category4 = user.categories.create!(name: 'Sport', icon: icon4)
category5 = user.categories.create!(name: 'Music', icon: icon5)

transaction1 = category4.records.create!(user: user, name: 'Trainers', amount: 152 )
transaction2 = category5.records.create!(user: user, name: 'Vinyl', amount: 500 )
transaction3 = category5.records.create!(user: user, name: 'Concert tickets', amount: 45 )
transaction4 = category4.records.create!(user: user, name: 'Football', amount: 56 )
transaction5 = category4.records.create!(user: user, name: 'Back pack', amount: 100 )
