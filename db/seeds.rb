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
