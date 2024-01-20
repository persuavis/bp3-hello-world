# frozen_string_literal: true

RSpec.describe Bp3::Hello::World do
  it 'has a version number' do
    expect(Bp3::Hello::World::VERSION).not_to be_nil
  end

  it "says 'hello world'" do
    expect(Bp3::Hello::World::Context.new.say_it!).to eq('hello world')
  end

  it 'speaks multiple languages' do
    I18n.with_locale(:nl) do
      expect(Bp3::Hello::World::Context.new.say_it!).to eq('hallo wereld')
    end
  end
end
