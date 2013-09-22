require 'spec_helper'

describe "Static  pages" do 
	let(:title) {"Ruby on Rails Tutorial Sample App "}
	context "Home Page" do 
		it "Should have the content 'Sample App'" do 
			visit '/static_pages/home'
			page.should have_content('Sample App')
		end

		it "Should have the right title" do 
			visit '/static_pages/home'
			page.should have_selector('title',
										text: "#{title}| Home")
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
										text: "#{title}| Help")
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
											text: "#{title}| About")
		end 
	end

	context "Contact" do 
		it "should have the content 'Contact'" do 
			visit '/static_pages/contact'
			page.should have_content('Contact')
		end 

		it "should have Contact in the title" do 
			visit "/static_pages/contact"
			page.should have_selector("title",
											text: "#{title}| Contact")
		end
	end



end