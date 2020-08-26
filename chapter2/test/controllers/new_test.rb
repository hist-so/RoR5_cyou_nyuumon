require 'minitest/autorun'

# class Tekitou
#   def method1
#     'return1'
#   end
# end


# class TestTekitou < Minitest::Test
  
#   def setup
#     @tekitou = Tekitou.new.method1
#   end

#   def test_method1
#       assert_equal 'return1', @tekitou
#       assert       @tekitou
#       assert_nil   nil
#       # assert_empty @tekitou
#   end
# end

class Fix
  def method_y
    1 + 1
  end
end

class Test_fix < Minitest::Test
  def test_fix
    assert Fix.new.method_y
    assert_equal(1, Fix.new.method_y, 'you missed!')
    assert_nil nil
    assert_empty([])
  end
end