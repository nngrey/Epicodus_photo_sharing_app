require 'spec_helper'

describe Photo do
  context 'viewing pages' do
    it 'lets the user view the index page' do
      visit root_url
      page.should have_content "Photo Album"
    end

    # it 'lets the user link to the show page' do
    #   visit root_url
    #   photo = FactoryGirl.create :photo
    #   save_and_open_page
    #   click_link 'Honey Badger'
    #   page.should have_content "Edit Photo"
    # end
    # creating photos in factoryGirl? Figure it out.
  end
end
