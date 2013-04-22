require File.expand_path('../../../spec_helper.rb', __FILE__)

describe "Legacy search" do

  describe ".legacy_search_users" do
    it "returns matching username" do
      skip
      stub_get("https://api.github.com/legacy/user/search/sferik").
        to_return(json_response("legacy/users.json"))
      users = @client.search_users("sferik")
      expect(users.first.username).to eq("sferik")
    end
  end # .legacy_searcy_users

end