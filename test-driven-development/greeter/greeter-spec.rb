# Rspec

# 3 main components
#  - RSpec core
#  - RSpec expectation
#  - RSpec mock

require "./greeter"

# setting specification with example (test case) enclosed in an it block
describe "Greeter" do
  it "greets Rico" do
    expect(greeter("Chloe")).to eq "Hello, Chloe, how are you today?"
  end
end


# it "greets Rico" do
# 	name = "Rico" # Given
# 	result = greet(name) # When
# 	expect(result).to eq "Hello, Rico, how are you today?") # Then
# end

# .to eq = RSpec built in matcher

# The 'one expectation' tip is more broadly expressed as 'each test should make only one assertion'. 
