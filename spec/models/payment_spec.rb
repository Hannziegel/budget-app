require 'rails_helper'

RSpec.describe Payment, type: :model do
  before(:each) do
    @user = User.create(name: 'Test_name', email: 'test_email@gmail.com', password: 'testpassword', password_confirmation: 'testpassword')
    @category = Category.create(name: 'test_category', user_id: subject.id)
    @transaction = Payment.create(name: 'test_payment', amount: 24, user_id: @user.id)
  end

  it 'Inventoryfood should have valid attributes' do
    expect(@transaction.name).to eq('test_payment')
  end

  it 'Inventoryfood should have valid attributes' do
    expect(@transaction.amount).to eq(24)
  end

  it 'user for inventory food should be valid' do
    expect(@user).to be_valid
  end
end
