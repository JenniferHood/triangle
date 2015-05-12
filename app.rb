require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload ('lib/*.rb')

get('/')do
erb(:index)
end

get('/triangle') do
  @side1 = params.fetch('side1').to_f()
  @side2 = params.fetch('side2').to_f()
  @side3 = params.fetch('side3').to_f()
  @user_input = (@side1 != 0) && (@side2 != 0) && (@side3 != 0)
  triangle = Triangle.new(@side1, @side2, @side3)
  @triangle = triangle.type()
  @result = triangle.type()
  erb(:triangle)
end
