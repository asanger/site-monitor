RSpec.describe Site, :type => :feature do
  
  let(:site){create(:site, url: "http://www.google.com")}

  describe "Create Site" do
    it "creates a new site" do
      visit "/"
      click_on "New Site"

      within("#new_site") do
        fill_in 'site_url', with: 'http://www.google.com'
      end

      click_on "Add"
      expect(page).to have_content("http://www.google.com")
    end
  end
end