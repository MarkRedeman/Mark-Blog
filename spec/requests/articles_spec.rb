require 'spec_helper'

describe "Articles" do
  describe "GET /articles" do
    it "Display some articles" do
      visit articles_path
      page.should have_content 'wiskunde'
       
    end
  end
end
