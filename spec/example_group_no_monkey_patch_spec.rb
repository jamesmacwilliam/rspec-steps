require 'rspec-steps'
require 'rspec-sandbox'

describe RSpec::Core::ExampleGroup do

  RSpec::Steps.shared_steps "shared" do
    it("adds one to @a"){ @a += 1 }
  end

  RSpec::Steps.steps "with shared steps" do
    it("sets @a"){ @a = 1 }
    perform_steps "add one"
    perform_steps "add one"
    perform_steps "add one"
    it("reads @a"){ expect(@a).to eq 4 }
  end
end
