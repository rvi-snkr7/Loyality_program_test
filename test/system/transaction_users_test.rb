# frozen_string_literal: true

require 'application_system_test_case'

class TransactionUsersTest < ApplicationSystemTestCase
  setup do
    @transaction_user = transaction_users(:one)
  end

  test 'visiting the index' do
    visit transaction_users_url
    assert_selector 'h1', text: 'Transaction Users'
  end

  test 'creating a Transaction user' do
    visit transaction_users_url
    click_on 'New Transaction User'

    fill_in 'Point', with: @transaction_user.point
    click_on 'Create Transaction user'

    assert_text 'Transaction user was successfully created'
    click_on 'Back'
  end

  test 'updating a Transaction user' do
    visit transaction_users_url
    click_on 'Edit', match: :first

    fill_in 'Point', with: @transaction_user.point
    click_on 'Update Transaction user'

    assert_text 'Transaction user was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Transaction user' do
    visit transaction_users_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Transaction user was successfully destroyed'
  end
end
