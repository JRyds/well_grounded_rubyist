# frozen_string_literal: true

files = [
  "C:/Users/jpryd/Documents/Ruby Files/well_grounded_rubyist/chapter_4_modules/practice_projects/todo_list/classes/input_output.rb",
  #"C:/Users/jpryd/Documents/Ruby Files/well_grounded_rubyist/chapter_4_modules/practice_projects/todo_list/classes/task.rb",
  #"C:/Users/jpryd/Documents/Ruby Files/well_grounded_rubyist/chapter_4_modules/practice_projects/todo_list/classes/todo_list.rb",
  "C:/Users/jpryd/Documents/Ruby Files/well_grounded_rubyist/chapter_4_modules/practice_projects/todo_list/classes/user.rb",
  "C:/Users/jpryd/Documents/Ruby Files/well_grounded_rubyist/chapter_4_modules/practice_projects/todo_list/todolistapp_db/users.json",
  "C:/Users/jpryd/Documents/Ruby Files/well_grounded_rubyist/chapter_4_modules/practice_projects/todo_list/classes/app_window.rb",
#"C:/Users/jpryd/Documents/Ruby Files/well_grounded_rubyist/chapter_4_modules/practice_projects/todo_list/classes/calendar.rb",
]

File.open("output.txt", "w") do |f|
  files.each do |file|
    f.puts "\n=== Contents of file: #{file} ===\n"
    f.puts File.read(file)
  end
end
