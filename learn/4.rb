# Run the code in this file by typing:
# ruby 4.rb
# into your command-line interface.

# Creating a data structure for something that would go into a social media profile

my_profile = { 
    name: "Brian", 
    location: { 
        city: "Chicago", 
        state: "Illinois"
    },
    timeline: ["Teaching at Kellogg!", "Eating tacos!"]
}

puts my_profile[:name]
puts my_profile[:location][:city]
puts my_profile[:timeline][0]