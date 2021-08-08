# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

application_list = [
  ["Google",	"Search Engine", "Red", true,"http://www.google.com"],
  ["Wisc", "UW homepage", "Blue", false	http://www.wisc.edu],
  ["GLBRC",	"Great Lakes Bioenergy Research Center", "Yellow", true, "http://www.glbrc.org"],
  ["WEI",	"Wisconsin Energy Institute",	"Green", false, "https://energy.wisc.edu/]",  
  ["Twitter",	"Twitter", "Purple", false,	"https://twitter.com/"] 
]

application_list.each do |name,description,color,default_status,link|
  Application.create(name: name,description: description,color:color,default_status: default_status,link: link)
end
