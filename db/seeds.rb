require 'csv'

#
# --- CUSTOMERS ---
#
Customer.delete_all
customers = []
10_000.times do |i|
  customers << {
      email:              "customer#{i}@mail.com",
      encrypted_password: '$2a$11$8/uTtIFnI82BrlEqdiJIxuQGnEbS6Ew3455w.ENIvnEihEiyk6DXS',
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
