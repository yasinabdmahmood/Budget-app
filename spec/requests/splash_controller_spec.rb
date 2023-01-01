require 'rails_helper'
RSpec.describe 'Splash', type: :request do
  describe 'GET /index' do
    before(:example) { get '/' }
    it 'redirects' do
      expect(response).to have_http_status(:ok)
    end
  end
end
