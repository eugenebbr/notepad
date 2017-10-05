require_relative 'task.rb'
require_relative 'link.rb'
require_relative 'post.rb'
require_relative 'memo.rb'

puts "Привет, я блокнот!"
puts "Что нужно записать?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index |
    puts "\t #{index}. #{type}"
  end
  choice = STDIN.gets.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Заметка успешно сохранена!"