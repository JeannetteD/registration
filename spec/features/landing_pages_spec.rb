require 'rails_helper'
RSpec.feature "LandingPages", type: :feature do

# Story: As an internet user, I can go to a web site where I am presented with a registration form containing the following fields:
  context 'Going to website' do
    Steps 'Registration form information' do
      Given 'I am on the page ' do
        visit '/'
      end
      # Full name
      Then 'I can enter values in the empty registration form ' do
        fill_in 'name_id', with: 'Joe'
      end
      # Street address
      Then 'I can enter values in the empty registration form ' do
        fill_in 'street_address', with: '777 The Right Street'
      end
      # City
      Then 'I can enter values in the empty registration form ' do
        fill_in 'city', with: 'San Diego'
      end
      # State
      Then 'I can enter values in the empty registration form ' do
        fill_in 'state', with: 'CA'
      end
      # Postal code
      Then 'I can enter values in the empty registration form ' do
        fill_in 'postal_code', with: '92126'
      end
      # Country
      Then 'I can enter values in the empty registration form ' do
        fill_in 'country', with: 'USA'
      end
      # Email address
      Then 'I can enter values in the empty registration form ' do
        fill_in 'email_address', with: 'JoeShomo@gmail.com'
      end
      # User ID is required
      Then 'I can enter values in the empty registration form ' do
        fill_in 'user_id', with: 'Joe'
      end
      # Password is required
      Then 'I can enter values in the empty registration form ' do
        fill_in 'password_id', with: '!@#$%6234'
      end

      Then 'I can submit the information' do
        click_button 'Submit'
      end

    end #Step end
  end # context end
end # feature end
