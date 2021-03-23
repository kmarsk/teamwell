require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Booking.destroy_all
Company.destroy_all
Activity.destroy_all

#-------------------------------------------------------TRAINER SEEDS-------------------------------------------------------------------------------------------------------------------------------------------------------------
trainer1= User.create!(role: 'Trainer', email: 'broger@gmail.com', first_name: 'Beatrice', last_name: 'Rogers', password: '123456', bio: 'Ex-dancer and nutrition expert with a passion for movement and making each workout fun!')
file = open("https://res.cloudinary.com/nostalgicalien/image/upload/v1616073498/pexels-wellington-cunha-1918445_dmmq2o.jpg")
trainer1 = User.last
trainer1.photo.attach(io: file, filename: 'some-image.jpg')
trainer1.save!

trainer2= User.create!(role: 'Trainer', email: 'schavez@gmail.com', first_name: 'Sade', last_name: 'Chavez', password: '123456', bio: 'Traveling Yogi who loves to help others find inner peace')
file = open("https://res.cloudinary.com/nostalgicalien/image/upload/v1616073781/pexels-polina-kovaleva-6019890_bcfpsn.jpg")
trainer2 = User.last
trainer2.photo.attach(io: file, filename: 'some-image.jpg')
trainer2.save!

trainer3= User.create!(role: 'Trainer', email: 'jknott@gmail.com', first_name: 'John', last_name: 'Knott', password: '123456', bio: 'Ex marine and 2015 golden gloves champion who will teach you about self defense and whip you into the best shape of your life')
file = open("https://res.cloudinary.com/nostalgicalien/image/upload/v1616073583/pexels-thisisengineering-3912953_zli8vp.jpg")
trainer3 = User.last
trainer3.photo.attach(io: file, filename: 'some-image.jpg')
trainer3.save!
#-------------------------------------------------------EMPLOYEE SEEDS-------------------------------------------------------------------------------------------------------------------------------------------------------------
employee1= User.create!(role: 'Employee', email: 'mhiroshi@gmail.com', first_name: 'Megumi', last_name: 'Hiroshi', password: '123456', bio: 'Photographer looking to become more active before the 9-5 grind.')
file = open("https://res.cloudinary.com/nostalgicalien/image/upload/v1616083596/daniel-rigdon-dXmXKPP2L4E-unsplash_a69vh6.jpg")
employee1 = User.last
employee1.photo.attach(io: file, filename: 'some-image.jpg')
employee1.save!

employee2= User.create!(role: 'Employee', email: 'jatkinson@gmail.com', first_name: 'John', last_name: 'Atkinson', password: '123456', bio: 'Goofy stand-up comedian looking to get as strong as my punchlines')
file = open("https://res.cloudinary.com/nostalgicalien/image/upload/v1616083597/christian-buehner-DItYlc26zVI-unsplash_tmyacm.jpg")
employee2 = User.last
employee2.photo.attach(io: file, filename: 'some-image.jpg')
employee2.save!
#-------------------------------------------------------ACTIVITY SEEDS-------------------------------------------------------------------------------------------------------------------------------------------------------------
activity1 = Activity.create!(category: 'Yoga', equipment: "Yoga mat, towel and yoga leggings or shorts", description: "Lets create a union between the soul, body and mind", duration: 60, user_id: trainer2.id)
file = open("https://res.cloudinary.com/nostalgicalien/image/upload/v1616085347/kike-vega-F2qh3yjz6Jk-unsplash_1_qtqfni.jpg")
activity1 = Activity.last
activity1.photo.attach(io: file, filename: 'some-image.jpg')
activity1.save!

activity2 = Activity.create!(category: 'Salsa', equipment: "A partner and your best dance shoes. ", description: "A dance composed of African sounds developed in 1920's Cuba.", duration: 90, user_id: trainer1.id)
file = open("https://res.cloudinary.com/nostalgicalien/image/upload/v1616086226/isaiah-mcclean-9_D4NtyYHE8-unsplash_jngbob.jpg")
activity2 = Activity.last
activity2.photo.attach(io: file, filename: 'some-image.jpg')
activity2.save!

activity3 = Activity.create!(category: 'Conditioning', equipment: "A jumprope, dumbells, a yoga mat and a pull-up bar.", description: "Get in the best shape of your life.", duration: 60, user_id: trainer3.id)
file = open("https://res.cloudinary.com/nostalgicalien/image/upload/v1616086543/jakayla-toney-oN6WEp3tbjE-unsplash_eajmok.jpg")
activity3 = Activity.last
activity3.photo.attach(io: file, filename: 'some-image.jpg')
activity3.save!

activity4 = Activity.create!(category: 'Meditation', equipment: "A peaceful and quiet place", description: "Find inner peace", duration: 30, user_id: trainer2.id)
file = open("https://res.cloudinary.com/nostalgicalien/image/upload/v1616095200/jared-rice-NTyBbu66_SI-unsplash_lyasyo.jpg")
activity4 = Activity.last
activity4.photo.attach(io: file, filename: 'some-image.jpg')
activity4.save!

activity5 = Activity.create!(category: 'Belly Dancing', equipment: "Hip scarf, skirt, top, pantaloons, bedleh and headband.", description: "Come learn the oldest form of dance according to many historians.", duration: 60, user_id: trainer1.id)
file = open("https://res.cloudinary.com/nostalgicalien/image/upload/v1616095359/vitor-pinto-6QWLOSS6-Dk-unsplash_rjnlsm.jpg")
activity5 = Activity.last
activity5.photo.attach(io: file, filename: 'some-image.jpg')
activity5.save!

activity6 = Activity.create!(category: 'Boxing', equipment: "Boxing gloves, hand wraps, head guard and mouth guard ", description: "Get in the ring and take part in the world's most popular combat sport!", duration: 60, user_id: trainer3.id)
file = open("https://res.cloudinary.com/nostalgicalien/image/upload/v1616095700/natalie-runnerstrom-TiVwpVnPuVk-unsplash_o33jsk.jpg")
activity6 = Activity.last
activity6.photo.attach(io: file, filename: 'some-image.jpg')
activity6.save!
#-------------------------------------------------------SCHEDULE SEEDS-------------------------------------------------------------------------------------------------------------------------------------------------------------


def date_rand from = Time.now, to = Time.now.next_month(1).to_time
    Time.at(from + rand * (to.to_f - from.to_f))
end

def time_rand      
    time = rand(8..22).hours + (rand(2) * 30).minutes
    return time       
end

def schedule_activity(activity)
    3.times do
         schedule = Schedule.create!(
          date: date_rand,
          time: date_rand,
          activity_id: activity.id
        )
    end  
end

schedule_activity(activity1)
schedule_activity(activity2)
schedule_activity(activity3)
schedule_activity(activity4)
schedule_activity(activity5)
schedule_activity(activity6)
#-------------------------------------------------------BOOKING SEEDS-------------------------------------------------------------------------------------------------------------------------------------------------------------
def booking_activity(employee)
    6.times do
        booking1 = Booking.create!(
          user_id: employee.id,
          schedule_id: Schedule.all.sample.id
        )
    end

end

booking_activity(employee1)
booking_activity(employee2)