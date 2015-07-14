class Book

  attr_accessor :author, :title, :genre
  # lets you read or write aka get or set



  def initialize(options={})
    @author = options[:author]
    @genre = options[:genre]
    @title = options[:title]
  end

  # def initialize(title, author, genre) # Initial Instance
  #   @title = title # instance variable
  #   @author = author # instance variable
  #   @genre = genre
  # end

  # def title # getter method
  #   @title
  # end

  # def author # getter method
  #   @author
  # end

  # def genre # getter method
  #   @genre
  # end

  # def title=(value) # setter
  #   @title = value
  # end


end # end Book class

