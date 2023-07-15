require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'the truth' do
    assert true
  end

  test 'should not save a user with blank name' do
    user = User.new
    user.designation = 'Software Engineer'
    user.bio = 'A human being'
    assert_not user.save, 'Saved User without name'
  end

end
