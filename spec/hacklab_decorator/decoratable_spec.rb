require 'spec_helper'
describe HacklabDecorator::Decoratable do

  it '#ok?' do
    expect(create_project.ok?).to eq 'It works fine!'
  end

end