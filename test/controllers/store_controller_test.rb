require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a',minimum: 4
   assert_select '#main .entry', 3
   assert_select 'h3', 'programming ruby 1.9'
  assert_select '.price', $9,99
end

   test "markup needed for store.js.coffee is in place" do
   get :index
   assert_select '.store .entry > img', 3
    assert_select '.entry input[type=submit]', 3
end
end
