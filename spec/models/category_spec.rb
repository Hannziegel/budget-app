require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    User.create(name: 'Test_name', email: 'test_email@gmail.com', password: 'testpassword',
                password_confirmation: 'testpassword')
  end
  before do
    @category = Category.create(name: 'test_category', user_id: subject.id)
  end

  context 'Validations should be working' do
    it 'ALL validations should be valid' do
      expect(subject).to be_valid
    end

    it 'Name inventory validation should return true' do
      expect(@category.name).to eql('test_category')
    end

    it 'Name user validation should return true' do
      expect(subject.name).to eql('Test_name')
    end

    it 'Name user validation should return true' do
      expect(subject.email).to eql('test_email@gmail.com')
    end

    it 'Inventory user validation should return true' do
      expect(@category.user_id).to eql(subject.id)
    end
  end
end
