require 'rails_helper'

RSpec.describe 'Records', type: :request do
  describe 'GET /index' do
    it 'should have a response status code of 200 for success' do
      get users_path
      expect(response).to have_http_status(200)
    end

    it 'should render the correct template' do
      get users_path
      expect(response).to render_template(:index)
    end
  end
end
