require 'test_helper'

module Rmp
  class AccountTest < ActiveSupport::TestCase
    test "invalid with no account types" do
      account = Account.new
      assert_not account.valid?
      assert_equal ["Account type must be asset, equity, liability, revenue or expense"], account.errors.messages[:account_type]
    end

    test "valid with one of five allowed account types" do
      account = Account.new
      %w(asset equity liability revenue expense).each do |valid_type|
        account.account_type = valid_type
        assert account.valid?
      end
    end

    test "invalid with not allowed account types" do
      account = Account.new
      account.account_type = 'string'
      assert_not account.valid?
    end
  end
end
