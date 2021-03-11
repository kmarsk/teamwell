# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Company.destroy_all
Activity.destroy_all
User.destroy_all

trainer_user = User.create!(role: 'trainer', email: 'bea@gmail.com', first_name: 'Beatrice', last_name: 'Rogers', password: 'Beatrice123', bio: 'ex-dancer and nutrition expert with passion for movement and making each workout fun')
employee_user = User.create!(role: 'employee', email: 'amanda@gmail.com', first_name: 'Amanda', last_name: 'Tex', password: 'Amanda123', bio: 'passionate coder who loves to run and to develop her yoga practice')
company_user = User.create!(role: 'employer', email: 'boss@gmail.com', first_name: 'Teresa', last_name: 'Morales', password: 'Teresa123', bio: 'HR manager excited to enhance the wellbeing of my team' )
user = User.create!(role: 'employee', email: 'marta@gmail.com', first_name: 'Marta', last_name: 'Kas', password: 'Marta123', bio: 'enjoyes team sports and hiking')

4.times do
  activity = Activity.create!(
    category: ['yoga', 'pilates', 'barre', 'sculpt'].sample,
    date: [Date.today, Date.today + 2.days].sample,
    time: [Time.now, Time.now + 2.hours].sample,
    frequency: [ 'weekly', 'monthly', 'daily', 'every lunchtime'].sample,
    equipment: ['yoga matt', 'bands', 'weights', 'socks'].sample,
    description: ['high intensity cardio', 'gentle slow flow with static poses', 'muscle activation, strenghtening', 'relaxing, calming practice'].sample,
    duration: ['20', '45', '60', '90'].sample,
    user_id: trainer_user.id,
  )
end


3.times do
  booking = Booking.create!(
    date: [Date.today, Date.today + 2.days].sample,
    time: [Time.now, Time.now + 2.hours].sample,
    user_id: employee_user.id,
    activity_id: Activity.all.sample.id
  )
end



3.times do
    company = Company.create!(
    name: ['Apple', 'Microsoft', 'Intel'].sample,
    user_id: company_user.id,
  )
end

employee_user.company_id = Company.last.id
employee_user.save!





