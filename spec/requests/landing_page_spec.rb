require 'rails_helper'

RSpec.describe 'LandingPages', type: :request do
  before(:each) do
    get root_url
  end
  describe 'GET /index' do
    it 'renders a successful response' do
      expect(response).to be_successful
    end
  end
end
