# frozen_string_literal: true

RSpec.describe Bp3::Hello::World do
  it "has a version number" do
    expect(Bp3::Hello::World::VERSION).not_to be_nil
  end

  it "does something useful" do
    expect(Bp3::Hello::World::Context.new.say_it!).to eq("Hello World")
  end
end
