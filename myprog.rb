=begin
puts "Hello, Ruby programmer"
puts "It is now #{Time.now}"
=end


=begin
puts "gin joint".length
puts "Rick".index("c")
puts 42.even?
=end

=begin

def say_goodnight(name)
	# return "Good night #{name}"

	"good night #{name}"
	# return salute.capitalize
end
#salute
puts say_goodnight('Johnny')
=end
=begin

# how to define an array
myarray = [1, 2, 'cat', 5]
#puts myarray[10]

p myarray
=end

=begin
weight = 0
while( weight < 100 || ( weight < 20 ) )
	weight += 1
	puts weight
end
=end


=begin
while line = gets
	print line
end
=end

=begin
puts "You gave #{ARGV.size} arguments"
p ARGV if ARGV.size > 0
=end


=begin
test = %w( ant be cat dog)
test.each do |animal|

	puts "hahahaha #{animal}"
end


test.each { |animal| puts animal }
=end

=begin
def wrap &b
	puts "santa says"
	3.times(&b)
	puts "\n"
end

wrap { print "Ho"}
=end

=begin

class BookInStock
	attr_accessor :isbn, :price
	def initialize ( isbn, price )
		@isbn = isbn
		@price = Float(price)
	end

	# def to_s
	# 	"ISBN: #{@isbn}, and price: #{@prio}"

	# end

	# def isbn
	# 	@isbn
		
	# end

	# def price
	# 	@price

	# end 


	# def price= ( new_price )
	# 	@price = new_price
		
	# end

	def price_in_cents
		
	end

end


a_book = BookInStock.new("isbn1", 3)
another_book = BookInStock.new("isbn", 5.6)

puts "ISBN for #{a_book} is #{a_book.isbn} and price is #{a_book.price}"
a_book.price = a_book.price*0.5
puts "ISBN for #{a_book} is #{a_book.isbn} and price is #{a_book.price}"
=end

=begin
p a_book
puts a_book
p another_book
puts another_book
=end


=begin
class CsvReader
	def initialize
		@books_in_stock = []
	end
	
	def read_in_csv_data(csv_file_name)
		CSV.foreach(csv_file_name, headers: true ) do |row|
			@books_in_stock << BookInStock.new(row["ISBN"], row["Ammount"])
		end
	end

	def total_value_in_stock
		
	end

	def number_of_each_isbn
		
	end
	
end

reader = CsvReader.new
reader.read_in_csv_data('file1.csv')
puts "Total value in stock: #{reader.total_value_in_stock}"
=end


class Account
	attr_accessor :balance

	def initialize(balance)
		@balance = balance
		
	end

	def test
	end



	
end

class Transaction
	def initialize(account_a, account_b)
		@account_a = account_a
		@account_b = account_b

	end
	
	private
		def debit(account, amount)
			account.balance -= amount
			
		end

		def credit(account, amount)
			account.balance += amount

		end

	public
		def transfer(amount)
			debit(@account_a, amount)
			credit(@account_b, amount)
		end
	
end

=begin
savings = Account.new(100)
checking = Account.new(200)


p savings
p checking

transaction = Transaction.new(savings, checking)
transaction.transfer(50)

p savings.balance
p checking.balance

p checking
=end

=begin
a = [ 2, 3, 4]
a[0]
p a[0]
puts a[0]

p a[2, 2]
a[5] = 7
p a

b = %w(a b c)
p b

a[0, 2] = b[1, 2]

p a

a.push 'test'
p a
=end

def scan(word)
	word.downcase.scan(/[\w]+/)
	
end

=begin
test = "I want to show you something show"
p scan(test)

def count_frequency(word_list)
	counts = Hash.new(0)
	
	word_list.each do |word|
		counts[word] += 1

	end

	p counts

end

test = count_frequency (scan(test))

p test.sort_by{ |count| count }
p test.sort_by{ |word, count| count }.last(1)
=end


=begin
sum = 0
test = [1,2]

test.each {|value| puts value*value}
test.each do |value; sum|
	puts value*value
	sum = value*value
end

puts sum
=end

def fib(max)
	i1, i2 = 1, 1
	
	while i1 <= max
		yield i1
		i1, i2 = i2, i1+i2
		
	end

	
end

# fib(1000) {|f| print f, " " }



class Array
	def find
		for i in 0...size
			value = self[i]
			
			return value if yield(value)

		end

		return nil

	end

end

# p [1,3,5,7,9].find{|v| v*v>30}


class Array
	def test
		self.each_with_index do |var, index|
			p "On line#{index}: #{var}"
		
		end

	end
end

#[1,3,2].test

=begin
myarray2 = [1,2,4]
p myarray2

myarray2 << 5
p myarray2
=end

class Person
	def initialize(name)
		@name = name
		
	end
	
	def to_s
		return "My name is #{@name}"

	end

end

# p1 = Person.new("Michael")
# puts p1;


class TestMe
	attr_reader :name

	def initialize(name)
		@name = name
	end
	
	def to_s
		return '545'+@name

	end

end
=begin

p = TestMe.new('test')
puts p
p 'test'.equal? p.name
=end


# 1.upto(5) { |i| print "Hello", i, "\n", "a" }

def test (test)
	return "test2"+test.to_s

end

=begin
x=''

puts "something before our value: #{test('3324')}"
p x
=end

=begin
Song = Struct.new(:title, :author)

test = []
test << Song.new('adasd', 'sdad23222')
test << Song.new('xxxx', 'sdad23222')

test.each do |song|
	p song.title
end
=end


=begin
string = "There's a cat in here somewhere"

if (/cat/ =~ string)
	puts "We have a cat!"
end


string2 = "Dog and cat"
# puts "Let's go to the #{string2.sub(/cat/, "Gerbil")}"

string2 = string2.sub(/cat/, "Gerbil")
puts string2
=end
=begin

string3 = "abcdefabc"
p string3=~/a/
p /a/.match(string3)
=end


=begin
def show_regexp(string, pattern)
	match = pattern.match(string)
	if match 
		"#{match.pre_match}->#{match[0]}<-#{match.post_match}"

	else
		"no match"
	
	end

end

puts show_regexp('very interesting', /t/)
=end


def meth_three
	100.times do |num|
		square = num*num
		return num, square if ( square > 1000 )
	
	end

end

=begin
p meth_three

num = meth_three
p num[0]
=end

artist = 'test'
=begin
if artist == 'test'
	cast = 1
elsif artist == 'test2'
	cast = 2
end
=end

# puts ( ( artist == 'test' ) ? 'yes' : 'no' )

=begin
use_nickames = 'no'

if artist == 'test'
	artist = "'est"
end unless use_nickames == 'no'
=end

# puts artist
=begin

array = [1,2,3,4]

array.each_with_index do |value, index|
	puts "On line #{index} we have #{value}"
end
=end


=begin
require 'open-uri'
web_page = open("http://pragprog.com/podcasts")
output = File.open("podcasts.html", "w")

while line = web_page.gets
	puts line
end

output.close
=end

# puts gets
# 234

=begin
def test
	puts "you are in the method"
	yield
	puts "method again"
	yield
	
end

test { puts "You are in the block" }
=end
