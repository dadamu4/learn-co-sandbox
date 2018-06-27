def userquestion
  puts "WELCOME to Snapchat! What is your preferred username?"
  username = gets.chomp
end

def userpassword
  puts "What's your password?"
  password = gets.chomp
end

def userfriendlist
  puts "Who are your friends?"
  friend = gets.chomp
end

def userstory
  puts "Create your story!"
  story = gets.chomp
end

# def usermessage
#   message = {}
  
#   puts "Who do you want to message with?"
#   messagewith = gets.chomp
  
# end
  

class SnapchatUser
  attr_accessor :username, :password, :story

  @@streaks = 0
  @@friends = []

  def initialize(username, password, friend, story)
    @story = story
    @username = username
    @password = password
    @@friends << friend
    @@streaks += 1
  end


  def self.friendlist
    @@friends
  end

  def self.streakcount
    @@streaks
  end

  def sendstory
    puts "Your story: #{story}"
  end

end


user1 = SnapchatUser.new(userquestion, userpassword, userfriendlist, userstory)
# user2 = SnapchatUser.new(userquestion, userpassword, userfriendlist, userstory)

puts user1.username
puts user1.password
puts "Your friend list is: #{SnapchatUser.friendlist}"
puts user1.sendstory

# puts user2.username
# puts user2.password
# puts "Your friend list is: #{SnapchatUser.friendlist}"
# puts user2.sendstory

