require 'spec_helper'

describe "Articles" do
  describe "GET /articles" do
    it "works! (now write some real specs)" do
    	'hello'
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get articles_index_path
      response.status.should be(200)
    end
  end
end
