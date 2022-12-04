
puts "🌱 Seeding..."


10.times do
seeded_managers = Manager.create( name: Faker::Name.unique.name )
end

10.times do
    developers = Developer.create!( name: Faker::Name.unique.name )
end

30.times do
    seeded_projects = Project.create!(
        title: Faker::Game.title, 
        description:  Faker::Lorem.sentence(word_count: 30),
        deadline: Faker::Date.between(from: '2023-01-01', to: '2023-05-01'),
        manager_id: rand(1..10),
        developer_id: rand(1..10)
    )
end


puts "✅ Done seeding!"