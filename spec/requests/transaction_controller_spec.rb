require 'rails_helper'
RSpec.describe 'Transaction', type: :request do
  describe 'GET /index' do
    before(:example) { get '/transaction/index/:id' }
    it 'redirects' do
      expect(response).to have_http_status(:found)
    end
  end

  describe 'GET /new' do
    before(:example) { get '/transaction/new/:id' }
    it 'redirects' do
      expect(response).to have_http_status(:found)
    end
  end

  describe 'POST /create' do
    before(:example) { post '/transaction/create' }
    it 'redirects' do
      expect(response).to have_http_status(:found)
    end
  end
end
