# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ee_person = EventElement.create(name: 'diego-moncada')
ee_exer = EventElement.create(name: 'Excercise',event_element_id:ee_person.id)
ee_abs = EventElement.create(starting_at: Time.new(2018,5,1,0,0), due_date:Time.new(2018,5,30,11,59), name: 'abdominal excercise',event_element_id:ee_exer.id)
ee_code = EventElement.create(name: 'Code better', event_element_id:ee_person.id)
ee_love = EventElement.create(name: 'Sensfulness', event_element_id:ee_person.id)
ee_father = EventElement.create(name: 'Parenthood', event_element_id:ee_person.id)

u_kms = Unit.create(name: "kilometers", short:"kms")
u_secs = Unit.create(name:'seconds', short:'secs')
u_mins = Unit.create(name:'minutes', short:'mins')
u_kgs = Unit.create(name:'kilograms', short:'kgs')
u_reps = Unit.create(name:'repetitions', short:'reps')

t_abs = ActivityType.create(name:'abdominal crunches', unit_id:u_reps.id)
t_jogg_d = ActivityType.create(name:'jogging-distance', unit_id:u_kms.id)
t_jogg_t = ActivityType.create(name:'jogging-time', unit_id: u_mins.id)
t_elip = ActivityType.create(name:'eliptica', unit_id: u_mins.id)
t_date = ActivityType.create(name:'date', unit_id:u_reps)

Activity.create(starting_at: Time.new(2018,5,4,23,00),finished_at: Time.new(2018,5,4,23,45) ,name:'first abs',event_element_id:ee_exer.id,measured_value:10,type_id:t_abs.id)
Activity.create(starting_at: Time.new(2018,5,5,13,00),finished_at: Time.new(2018,5,5,13,30) ,name:'2nd sess',event_element_id:ee_exer.id,measured_value:15,type_id:t_abs.id)
Activity.create(starting_at: Time.new(2018,5,6,15,23),finished_at: Time.new(2018,5,6,16,00) ,name:'third',event_element_id:ee_exer.id,measured_value:20,type_id:t_abs.id)
Activity.create(starting_at: Time.new(2018,5,1,10,00),finished_at: Time.new(2018,5,1,10,30) ,name:'started jogging', event_element_id:ee_exer.id, measured_value:30,type_id:t_jogg_t.id)
Activity.create(starting_at: Time.new(2018,5,14,20,00),finished_at: Time.new(2018,5,14,21,00) ,name:'Wendy\'s Dinner', event_element_id:ee_love.id, measured_value:1, type_id:t_date.id)