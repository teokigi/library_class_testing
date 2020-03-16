class LibraryClass

attr_writer:books, :library

    def initialize(library_name,books)
        @library = library_name
        @books = books

    end
    #create a getter for the books
    def get_books
        return @books
    end



    #create a method that takes in a book title and retuns all assosiated information
    def lookup_book(book_name)
        for book in @books
            if book[:title] == book_name
                return book
            end
        end
        return nil
    end
#create a method that takes in a book title and adds it to book list
    def add_book(book_name)
        new_book = {title: book_name,
                    rental_details:
                        {student_name: "",
                         date: ""
                        }
                    }
        @books.push(new_book)
    end
#student names and date are empty strings
#create a method that changes the rental details by taking in the title of the book,
#the student renting it and the date its due to be returned


end
