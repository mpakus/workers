require 'csv'
require 'faker'

#
# --- CUSTOMERS ---
#
Customer.delete_all
customers = []
10_000.times do |i|
  customers << {
      email:              "customer#{i}@mail.com",
      encrypted_password: '$2a$11$8/uTtIFnI82BrlEqdiJIxuQGnEbS6Ew3455w.ENIvnEihEiyk6DXS', # Password1
      type:               'Customer'
  }
end
Customer.import(customers, validate: false)

#
# --- SKILLS
#
Skill.destroy_all
skills = CSV.read(Rails.root.join('db', 'skills.csv'))
Skill.import(skills.collect{ |row| {name: row[0]} }, validate: false)

#
# --- WORKERS
#
srand
Worker.destroy_all
1_000.times do |i|
  skills = []
  # collect from 0 to 5 skills
  rand(5).times do
    skills << Skill.order('RANDOM()').take
  end
  # worker with skills
  worker = Worker.new(
    name:               Faker::Name.name,
    email:              "worker#{i}@mail.com",
    encrypted_password: '$2a$11$8/uTtIFnI82BrlEqdiJIxuQGnEbS6Ew3455w.ENIvnEihEiyk6DXS'
  )
  worker.save(validate: false)
  worker.skills = skills.uniq
  worker.save!
end
