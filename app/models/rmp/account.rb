module Rmp
  class Account < ApplicationRecord
    validates_inclusion_of :account_type,
      in: ['asset', 'equity', 'liability', 'revenue', 'expense'],
      message: 'Account type must be asset, equity, liability, revenue or expense'
  end
end
