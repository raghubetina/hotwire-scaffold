desc "Fill the database tables with some sample data"
task({ sample_data: :environment }) do
  Thing.destroy_all

  things = [
    "Laptop",
    "Phone",
    "Headphones",
    "Keyboard",
    "Mouse",
    "Monitor",
    "Tablet",
    "Charger",
    "USB Drive",
    "Camera",
    "Printer",
    "Speaker"
  ]

  things.each do |thing_name|
    Thing.create!(name: thing_name)
  end

  puts "Created #{Thing.count} things"
end
