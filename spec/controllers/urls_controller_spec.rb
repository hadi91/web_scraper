require 'rails_helper'

RSpec.describe UrlsController, type: :controller do
  context "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_success
    end
  end

  context "POST #create" do
    it "returns url saved contents" do
      @url.should be 
    end
  end
end
