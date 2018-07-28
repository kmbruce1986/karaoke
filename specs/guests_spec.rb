require("minitest/autorun")
require("minitest/rg")

require_relative("../guests.rb")
require_relative("../rooms.rb")

class TestGuests < MiniTest::Test

  def setup
    @guest = Guests.new("John", 10)
  end

  def test_can_get_guest_name
    assert_equal("John", @guest.guest_name)
  end

  def test_can_get_amount_in_wallet
    assert_equal(10, @guest.wallet)
  end

  def test_can_remove_money_from_wallet
    @guest.remove_money_from_wallet(5)
    assert_equal(5, @guest.wallet)
  end
  
end
