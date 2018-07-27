require 'rails_helper'

RSpec.describe UrlsController, type: :controller do
  describe "GET urls#index" do
    context "when index page is rendered" do
      it "returns a success response" do
        get :index
        expect(response).to be_success
      end
    end
  end

  describe "GET urls#new" do
    context "when new page is rendered" do
      it "gets a new url" do
        get :new
        expect(assigns(:url)).to be_a_new_record
      end
    end
  end

  describe "POST #create" do
    context "when user create passes and save" do
      it "creates and saves" do
        post :create, params: {}
        is_expected.to redirect_to post urls_path
      end
    end
    context "when user create fails" do
      it { expect(response).to render_template :new}
    end
  end
end
