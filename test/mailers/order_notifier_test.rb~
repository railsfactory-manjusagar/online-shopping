require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    #assert_equal "Pragmatic Store Order Confirmation", mail.subject
    assert_equal ["manjusagar@gmail.com"], mail.to
    assert_equal ["manjusagar.sn@gmail.com"], mail.from
    #assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    #assert_equal "Pragmatic Store Order Confirmation", mail.subject
    assert_equal ["manjusagar@gmail.com"], mail.to
    assert_equal ["manjusagar.sn@gmail.com"], mail.from
    #assert_match /\----/,mail.body.encoded
  end

end
