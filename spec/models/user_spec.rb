require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(name: 'Test_name', email: 'test_email@gmail.com', password: 'testpassword', password_confirmation: 'testpassword')
  end

  it 'User should have valid name attribute' do
    expect(@user.name).to eq('Test_name')
  end

  it 'User should have valid email attribute' do
    expect(@user.email).to eq('test_email@gmail.com')
  end

  it 'user should have valid password' do
    expect(@user.password).to eq('testpassword')
  end

  it 'user should have valid password confirmation' do
    expect(@user.password_confirmation).to eq('testpassword')
  end

  it 'user for inventory food should be valid' do
    expect(@user).to be_valid
  end
end
