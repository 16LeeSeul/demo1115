require "rails_helper"

RSpec.describe HelloPageController, type: :controller do
  render_views
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HelloPageController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #hello" do
    it "returns a success response" do
      get :hello, params: {}, session: valid_session
      expect(response).to be_success
      expect(response.body).to include("Congratulations") #congratulations를 포함해야 코드가 돌아갈 수 있도록 설정(template화)
      expect(response.content_type).to eq("text/html")
    end
  end

  describe "POST #hello" do
    it "returns a success response" do
      post :hello, params: {}, session: valid_session
      expect(response).to be_success
      expect(response.body).to include("Congratulations")
      expect(response.content_type).to eq("text/html")
    end
  end

end