require 'rails_helper'

RSpec.describe Sponsor, type: :model do
  it 'has a username field' do
    expect(Sponsor.new).to respond_to(:username)
  end

  it 'has a password field' do
    expect(Sponsor.new).to respond_to(:password)
  end

  it 'has a name field' do
    expect(Sponsor.new).to respond_to(:first_name)
  end

  it 'has a name field' do
    expect(Sponsor.new).to respond_to(:last_name)
  end

  it 'has a goal field' do
    expect(Sponsor.new).to respond_to(:goal)
  end

  it 'has a net worth field' do
    expect(Sponsor.new).to respond_to(:net_worth)
  end
end
