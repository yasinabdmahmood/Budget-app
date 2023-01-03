require 'rails_helper'
RSpec.describe 'Catagory', type: :request do
  describe 'GET /new' do
    before(:example) { get '/catagory/new' }
    it 'redirects' do
      expect(response).to have_http_status(:found)
    end
  end

  describe 'GET /index' do
    before(:example) { get '/catagory/index' }
    it 'redirects' do
      expect(response).to have_http_status(:found)
    end
  end

  describe 'POST /create' do
    before(:example) { post '/catagory/create' }
    it 'redirects' do
      expect(response).to have_http_status(:found)
    end
  end
end
