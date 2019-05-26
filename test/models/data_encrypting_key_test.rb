require 'test_helper'

class DataEncryptingKeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test '.primary' do
    primary = data_encrypting_keys(:primary)
    assert primary.id == DataEncryptingKey.primary.id
  end
  
  test ".generate!" do
    assert_difference "DataEncryptingKey.count" do
      key = DataEncryptingKey.generate!
      assert key
    end
  end
end
