# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.count == 0
    User.create(name: 'Always Siew Ling', email: 'always_sltan@email.com', password: '123456');
else
    puts "User sample data already exists"
end

if Membership.count == 0
    Membership.create(store: 'Bossini', isRenewable: false);
    Membership.create(store: 'Watsons', isRenewable: true);
else
     puts "Membership sample data already exists"
end