require 'spec_helper'

describe "Static  pages" do 
	let(:title) {"Ruby on Rails Tutorial Sample App"}
	
	context "Home Page" do 
		it "Should have the h1 'Sample App'" do 
			visit '/static_pages/home'
			page.should have_selector('h1', text: 'Sample App')
		end

		it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

		it "should not have a custome page title" do 
			visit '/static_pages/home'
			page.should_not have_selector('title', text:'| Home')
		end
	end

	context "Help Page" do 
		it "Should have the h1 'Help'" do 
			visit '/static_pages/help'
			page.should have_selector('h1', text: 'Help')
		end

		it "Should have the base title" do 
			visit '/static_pages/help'
			page.should have_selector('title',
										text: "#{title}")
		end

		it "should not have a custome page title" do 
			visit '/static_pages/help'
			page.should_not have_selector('title', text:'| Help')
		end
	end

	context "About page" do 
		it "Should have the h1 'About Us'" do 
			visit '/static_pages/about'
			page.should have_selector('h1', text: 'About Us')
		end

		it "Should have the base title" do 
			visit '/static_pages/about'
			page.should have_selector('title',
										text: "#{title}")
		end

		it "should not have a custome page title" do 
			visit '/static_pages/about'
			page.should_not have_selector('title', text:'| About Us')
		end
	end

	context "Contact" do 
		it "Should have the h1 'Contact'" do 
			visit '/static_pages/contact'
			page.should have_selector('h1', text: 'Contact')
		end

		it "Should have the base title" do 
			visit '/static_pages/contact'
			page.should have_selector('title',
										text: "#{title}")
		end

		it "should not have a custome page title" do 
			visit '/static_pages/contact'
			page.should_not have_selector('title', text:'| Contact')
		end
	end



end