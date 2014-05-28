Given(/^a entrada "(.*?)"$/) do |input|
  @input = input
end

When(/^a calculadora e executada$/) do
  @output = `ruby calc.rb #{@input}`
  raise('command failed') unless $?.success?
end

Then(/^a saida e "(.*?)"$/) do |resultado|
  @output.should eq resultado
  #pending # express the regexp above with the code you wish you had
end