require 'spec_helper'

	describe "Creating Prayer Requests" do |variable|
		it "redirects to the prayer request index page on success" do
			visit "/prayerrequests"
			click_link "New Prayer Request"
			expect(page).to have_content("New Prayerrequest") 

			fill_in "Title", with: "My sample Prayer"
			fill_in "Description", with: "My sample Prayer description"
			click_button "Create Prayerrequest"

			expect(page).to have_content("My sample Prayer")
	end

	it "displays an error when the prayer request has no title" do
		
			visit "/prayerrequests"
			click_link "New Prayer Request"
			expect(page).to have_content("New Prayerrequest") 
			expect(Prayerrequest.count).to eq(0)
			fill_in "Title", with: ""
			fill_in "Description", with: "My sample Prayer description"
			click_button "Create Prayerrequest"

			expect(page).to have_content("error")
			expect(Prayerrequest.count).to eq(0)

			visit "/prayerrequests"
			expect(page).to_not have_content("My sample Prayer description")
	end
	it "displays an error when the prayer request has a title with less than 3 characters" do
	
		visit "/prayerrequests"
		click_link "New Prayer Request"
		expect(page).to have_content("New Prayerrequest") 
		fill_in "Title", with: "hi"
		fill_in "Description", with: "My sample Prayer description"
		click_button "Create Prayerrequest"

		expect(page).to have_content("error prohibited")
		expect(Prayerrequest.count).to eq(0)

		visit "/prayerrequests"
		expect(page).to_not have_content("My sample Prayer description")
	end
end