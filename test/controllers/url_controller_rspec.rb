describe UrlsController do
  describe "GET index" do
    it "display @urls" do
      url = FactoryGirl.create(:url)
      get :index
      expect(assigns(:url).to eq([user]))
    end
