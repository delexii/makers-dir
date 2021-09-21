require "library"

describe Library do
  it 'can find a specific book' do
    # Arrange
    library = Library.new
    # Act
    library.find_book("POODR")
    # Assert
    expect(library.find_book("POODR")).to eq({title: "POODR", author: "Sandi Metz", subject: "OOP"})
  end
  
  it 'can add a new book' do
    # Arrange
    library = Library.new
    # Act
    library.add_book({title: "Start with why", author: "Simon Sinek", subject: "Business"})
    # Assert
    expect(library.find_book("Start with why")).to eq({title: "Start with why", author: "Simon Sinek", subject: "Business"})
  end

  it 'can remove a book' do
    # Arrange
    library = Library.new
    # Act
    library.remove_book("Start with why")
    # Assert
    expect(library.find_book("Start with why")).to eq nil
  end

  it 'can list all the books on a specific subject' do
    # Arrange
    library = Library.new
    # Act
    library.all_books_by_subject("OOP")
    # Assert
    expect(library.find_book("POODR")).to eq({title: "POODR", author: "Sandi Metz", subject: "OOP"})
  end
end
