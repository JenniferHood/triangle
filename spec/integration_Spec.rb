require('capybara/rspec')
require('./app')
Capybara.app = Sinatra:: Application
set(:show_exceptions, false)

describe('The result path', {type => :feature}) do
  it('user enters thhree numbers and program will output if it is a triangle and what kind, or if it not a triangle') do
  visit('/')
  fill_in('side1', :with => 10)
  fill_in('side2', :with => 10)
  fill_in('side3', :with => 10)
  click_button('See your triangle!')
  expect(page).to have_content('equilateral')
end

 it('program displays an error message if not all three numbers have been entered') do
   visit('/')
   fill_in('side1', :with => 15)
   fill_in('side2', :with => 10)
   click_button('See your triangle!')
   expect(page).to have_content('Alert: Please enter three numbers!')
 end
end
