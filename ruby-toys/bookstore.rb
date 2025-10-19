class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def get_isbn
    @isbn
  end

  def get_price
    @price
  end

  def price=(new_price)
    @price = new_price
  end

  def to_s 
    "ISBN: #{@isbn}, price: #{@price}"
  end
end

b1 = BookInStock.new("isbn1", 3)
puts b1
b2 = BookInStock.new("isbn2", 3.14)
puts b2
b3 = BookInStock.new("isbn3", "5.67")
puts b3

book = BookInStock.new("isbn4", 12.34)
puts "get ISBN = #{book.get_isbn}"
puts "get Price = #{book.get_price}"
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
book.price = book.price * 0.75
puts "discount Price = #{book.price}"
