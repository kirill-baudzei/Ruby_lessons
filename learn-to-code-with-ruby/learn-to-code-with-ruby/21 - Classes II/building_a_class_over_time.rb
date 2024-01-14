class Book
  attr_reader :title, :autor, :pages

  def initialize(title, autor, pages)
    @title = title
    @autor = autor
    @pages = pages
  end
end

goosebumps = Book.new("Night of the Living Dummy", "R.L. Stine", 100)
# goosebumps.read

class Book
  def read
    1.step(pages, 10) { |page| puts "Reading page #{page}" }
    puts "Done! #{title} was a great book!"
  end
end

goosebumps.read

# Reading page 1
# Reading page 11
# Reading page 21
# Reading page 31
# Reading page 41
# Reading page 51
# Reading page 61
# Reading page 71
# Reading page 81
# Reading page 91
# Done! Night of the Living Dummy was a great book!
