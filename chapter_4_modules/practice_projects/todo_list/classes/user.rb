# frozen_string_literal: true

require "json"

class User
  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
  end

  def save
    data = {
      username: @username,
      password: @password
    }

    File.open(
      "C:/Users/jpryd/Documents/Ruby Files/well_grounded_rubyist/chapter_4_modules/practice_projects/todo_list/todolistapp_db/users.json", "a") do |file|
      file.puts JSON.generate(data)
    end
  end

  def self.login(username, password)
    users = []

    File.open("C:/Users/jpryd/Documents/Ruby Files/well_grounded_rubyist/chapter_4_modules/practice_projects/todo_list/todolistapp_db/users.json", "r") do |file|
      file.each_line do |line|
        users << JSON.parse(line)
      end
    end

    user_data = users.find { |user| user["username"] == username }

    if user_data
      if user_data["password"] == password
        User.new(username, password)
      else
        puts "Incorrect password"
        nil
      end
    else
      puts "Username not found"
      nil
    end
  end


  def self.create(username, password)
    user = User.new(username, password)
    user.save
    user
  end

end
