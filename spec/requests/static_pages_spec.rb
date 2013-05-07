require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Kinky Cookie" }

  describe "Home page" do

    it "should have the content 'Kinky Cookie'" do
      visit '/static_pages/home'
      page.should have_content('Kinky Cookie')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title}")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
  end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} | About")
    end
end