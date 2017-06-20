require 'test_helper'

module Rmp
  class FinancialTransactionsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @financial_transaction = rmp_financial_transactions(:one)
    end

    test "should get index" do
      get financial_transactions_url
      assert_response :success
    end

    test "should get new" do
      get new_financial_transaction_url
      assert_response :success
    end

    test "should create financial_transaction" do
      assert_difference('FinancialTransaction.count') do
        post financial_transactions_url, params: { financial_transaction: { date: @financial_transaction.date, description: @financial_transaction.description } }
      end

      assert_redirected_to financial_transaction_url(FinancialTransaction.last)
    end

    test "should show financial_transaction" do
      get financial_transaction_url(@financial_transaction)
      assert_response :success
    end

    test "should get edit" do
      get edit_financial_transaction_url(@financial_transaction)
      assert_response :success
    end

    test "should update financial_transaction" do
      patch financial_transaction_url(@financial_transaction), params: { financial_transaction: { date: @financial_transaction.date, description: @financial_transaction.description } }
      assert_redirected_to financial_transaction_url(@financial_transaction)
    end

    test "should destroy financial_transaction" do
      assert_difference('FinancialTransaction.count', -1) do
        delete financial_transaction_url(@financial_transaction)
      end

      assert_redirected_to financial_transactions_url
    end
  end
end
