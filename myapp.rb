require 'sinatra'
enable :sessions

get '/' do
	'Hello World!'

end

=begin
get '/hello/:name' do |n|
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params[:name] is 'foo' or 'bar'
  # n stores params[:name]
  "Hello #{n}!"
end
=end

=begin
get "/only/admin/", :auth => :admin do
  "Only admins are allowed here!"
end
=end




get '/test' do

	string2 = ''

	params.each do |key, value|
		string2 += "Found #{key}, and #{value}\n"
		p "Found #{key}, and #{value}"

	end

	string2

  	# "Hello #{params[:p1]}, #{params[:p2]}"
end


get '/foo' do
  session[:message] = 'Hello Worldz!'
  redirect to('/bar')
end

get '/bar' do
  session[:message]   # => 'Hello World!'
end

get '/hello-world' do
  request.path_info   # => '/hello-world'
  request.fullpath    # => '/hello-world?foo=bar'
  request.url         # => 'http://example.com/hello-world?foo=bar'
end
