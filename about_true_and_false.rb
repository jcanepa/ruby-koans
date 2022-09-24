require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutTrueAndFalse < Neo::Koan
  def truth_value(condition)
    if condition
      :true_stuff
    else
      :false_stuff
    end
  end

  # true should be true.
  def test_true_is_treated_as_true
    assert_equal :true_stuff, truth_value(true)
  end

  # false should be false.
  def test_false_is_treated_as_false
    assert_equal :false_stuff, truth_value(false)
  end

  # nil (null) should be false.
  def test_nil_is_treated_as_false_too
    assert_equal :false_stuff, truth_value(nil)
  end

  # any value should be true.
  def test_everything_else_is_treated_as_true
    assert_equal __, truth_value(1)
    assert_equal __, truth_value(0)
    assert_equal __, truth_value([])
    assert_equal __, truth_value({})
    assert_equal __, truth_value("Strings")
    assert_equal __, truth_value("")
  end

end
