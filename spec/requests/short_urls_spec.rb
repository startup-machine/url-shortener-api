require 'rails_helper'

describe 'ShortUrls API' do
  describe 'POST /shorten' do
    it 'creates a new short url' do
      post '/shorten', params: { original_url: 'https://www.example.com' }

      expect(response).to have_http_status(200)
      
      expect(JSON.parse(response.body)['short_url'].split("/")[0]).to eq"localhost:3000"
    end
  end

  describe 'GET /:short_code' do
    let(:short_url) { Url.create(original_url: 'https://www.example.com', short_url: SecureRandom.hex(5)) }

    it 'redirects to the original url' do
      
      get "/#{short_url.short_url}"

      expect(response).to have_http_status(:found)
      expect(response).to redirect_to('https://www.example.com')
    end
  end
end
