# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Application.destroy_all

application_list = [
  ["Google",	"Search Engine", "Red", true,"http://www.google.com"],
  ["Wisc", "UW homepage", "Blue", false, "http://www.wisc.edu"],
  ["GLBRC",	"Great Lakes Bioenergy Research Center", "Yellow", true, "http://www.glbrc.org"],
  ["WEI",	"Wisconsin Energy Institute",	"Green", false, "https://energy.wisc.edu/"],  
  ["Twitter",	"Twitter", "Purple", false,	"https://twitter.com/"],
  ["Defector",	"Sports and Culture", "Red", true,	"https://defector.com/"], 
  ["Stack Overflow",	"Developers Learn & Share", "Purple", true,	"https://stackoverflow.com/"], 
  ["Github",	"Code Repository", "Blue", true,	"https://github.com/"], 
  ["Ruby On Rails",	"Rails Framework documentation", "Purple", true,	"https://rubyonrails.org/"], 
  ["Ruby",	"Programming Language", "Purple", true,	"https://www.ruby-lang.org/en/"], 
  ["Docker",	"Containerization", "Blue", false,	"https://www.docker.com/"],
  ["The Weather Channel", "Local and National Weather", "Blue", false, "https://weather.com/"],
  ["Visual Studio Code", "Code Editor", "Blue", true, "https://code.visualstudio.com/"] 
]

user_list = [
  ["user1", "user1@wisc.edu", "glbrcpass","glbrcpass"],
  ["user2", "user2@wisc.edu", "glbrcpass","glbrcpass"],
  ["user3", "user3@wisc.edu", "glbrcpass","glbrcpass"]
]
application_list.each do |name,description,color,default_status,link|
  Application.create(name: name,description: description,color:color,default_status: default_status,link: link)
end

user_list.each do |login, email, password, password_confirmation|
  User.create(login:login, email:email, password:password, password_confirmation:password_confirmation)
end



default_apps = Application.where(default_status: "true")

users = User.all

users.each do |user|
  default_apps.each do |apps|
    user.applications << apps
  end
end


