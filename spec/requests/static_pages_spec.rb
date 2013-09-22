require 'spec_helper'

describe "Static  pages" do 

	context "Home Page" do 
		it "Should have the content 'Sample App'" do 
			visit '/static_pages/home'
			page.should have_content('Sample App')
		end

		it "Should have the right title" do 
			visit '/static_pages/home'
			page.should have_selector('title',
										text: "Ruby on Rails Tutorial Sample App | Home")
		end
	end

	context "Help Page" do 
		it "Should have the content 'Help'" do 
			visit '/static_pages/help'
			page.should have_content('Help')
		end

		it "should have Help in the title" do 
			visit '/static_pages/help'
			page.should have_selector('title',
										text: "Ruby on Rails Tutorial Sample App | Help")
		end
	end

	context "About page" do 
		it "Should have the content 'About Us'" do 
			visit '/static_pages/about'
			page.should have_content('About Us')
		end

		it "Should have About in the title" do 
			visit "/static_pages/about"
			page.should have_selector('title',
											text: "Ruby on Rails Tutorial Sample App | About")

		end 

	end


end