# frozen_string_literal: true

require 'test_helper'

class TransactionUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction_user = transaction_users(:one)
  end

  test 'should get index' do
    get transaction_users_url
    assert_response :success
  end

  test 'should get new' do
    get new_transaction_user_url
    assert_response :success
  end

  test 'should create transaction_user' do
    assert_difference('TransactionUser.count') do
      post transaction_users_url, params: { transaction_user: { point: @transaction_user.point } }
    end

    assert_redirected_to transaction_user_url(TransactionUser.last)
  end

  test 'should show transaction_user' do
    get transaction_user_url(@transaction_user)
    assert_response :success
  end

  test 'should get edit' do
    get edit_transaction_user_url(@transaction_user)
    assert_response :success
  end

  test 'should update transaction_user' do
    patch transaction_user_url(@transaction_user), params: { transaction_user: { point: @transaction_user.point } }
    assert_redirected_to transaction_user_url(@transaction_user)
  end

  test 'should destroy transaction_user' do
    assert_difference('TransactionUser.count', -1) do
      delete transaction_user_url(@transaction_user)
    end

    assert_redirected_to transaction_users_url
  end
end
