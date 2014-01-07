require 'spec_helper'

describe "Static pages" do
	subject { page }

	describe "Home page" do
		before { visit root_path }

		it { should have_content('Sean Lowen') }
		it { should have_title(full_title('')) }
    	it { should_not have_title('| Home') }
	end

	describe "Projects page" do
		before { visit projects_path }
		
		it { should have_content('Projects') }
		it { should have_title(full_title('Projects')) }
	end

	describe "About page" do
		before { visit about_path }
		
		it { should have_content('About') }
		it { should have_title(full_title('About')) }
	end

	it "should have the right links on the layout" do
		visit root_path
		click_link "Projects"
		expect(page).to have_title(full_title('Projects'))
		click_link "About"
		expect(page).to have_title(full_title('About'))
		click_link "Home"
		expect(page).to have_title(full_title(''))
	end
end
