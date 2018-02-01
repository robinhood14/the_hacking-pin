require 'test_helper'

class PinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup

    @pin = User.first.pins.create(url: "www.google.com")

  end

  test "should be valid" do

    assert @pin.valid?

  end

  test "url should be present" do

    @pin.url = "     "

    assert_not @pin.valid?

  end

   test "url should be an url" do

    @pin.url = "blablabla"

    assert_not @pin.valid?

  end


end
