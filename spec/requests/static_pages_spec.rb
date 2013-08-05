require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do

  	it "should have h1 as 'Simple App'" do
  		
  		visit '/static_pages/home'
  		page.should have_selector('h1',
  									:text => "Simple App")
    end


    it "should have the title 'Home'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('title',
      							:text =>"Ruby on Rails Tutorial Simple App|Home")
    end
  end

 describe "Help Page" do

 	it "should have the h1 as 'Help' " do
 		visit "/static_pages/help"
 		page.should have_selector('h1',
 								:text => "Help")
 	end

 	it "should have the title as 'Help'" do
 		visit "/static_pages/help"
 		page.should have_selector('title',
 								:text => "Ruby on Rails Tutorial Simple App|Help")	
 	end
 end

 describe "About Page"	do

 	it "should have h1 as 'About'" do
 		visit "/static_pages/about"
 		page.should have_selector('h1',
 								:text => "About")
 	end

 	it "should have the title as 'About Us'" do
 		visit "/static_pages/about"
 		page.should have_selector('title',
 								:text => "Ruby on Rails Tutorial Simple App|About Us")
 	end
 end	
end
