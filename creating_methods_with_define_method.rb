# class Author
#   define_method("some_method") do
#     puts "Some details"
#   end
# end

# author = Author.new
# author.some_method

# class Author
#   def fiction_details(arg)
#     puts "Fiction"
#     puts arg
#     puts "something else..."
#   end

#   def coding_details(arg)
#     puts "Coding"
#     puts arg
#     puts "something else..."
#   end

#   def history_details(arg)
#     puts "History"
#     puts arg
#     puts "something else..."
#   end
# end

# author = Author.new
# author.fiction_details "Cal Newport"

class Author
  genres = %w(fiction history coding)

  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end
end

author = Author.new
author.coding_details "Ayn Rand"