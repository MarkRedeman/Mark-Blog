require 'spec_helper'

describe "Articles" do
	@article = Article.create :title => "De wiskunde van het designen", :body => "Op school heb je waarschijnlijk alleen maar saaie dingen geleerd over wiskunde, maar wist je dat er in kunst ook wiskunde zit?"

	describe "GET /articles" do
		it "Display some articles" do
			visit articles_path
		  	page.should have_content 'wiskunde'
		end

		it "Creates a new article" do
			visit new_article_path
			fill_in 'article_title', :with => "New article"
			fill_in 'article_body', :with => "Let's add some articles"
			click_button 'Create Article'

			current_path.should == articles_path
			page.should have_content "Let's add some articles"
		end

	end

	describe "Put /tasks" do
		it "edits a task" do
			visit articles_path
			click_link 'Edit'

			current_path.should == edit_article_path(@article)

			page.should have_content 'wiskunde'

			fill_in 'Title', :with => 'Updated article'
			click_button 'Update Article'

			page.should have_content 'Updated Article'
		end
	end
end
