require 'minitest/autorun'
require 'tr39_confusables'

class SkeletonTest < Minitest::Test
  def test_paypal
    assert_skeleton_equal "ρ⍺у𝓅𝒂ן", "𝔭𝒶ỿ𝕡𝕒ℓ"
    assert_skeleton_equal "paypal", "𝔭𝒶ỿ𝕡𝕒ℓ"
    assert_skeleton_equal "ρ⍺у𝓅𝒂ן", "paypal"
    assert_skeleton_equal "paypal", "paypal"
  end

  def test_equal
  end

  def test_upper

  end

  def test_consuable?
    assert_equal true, Tr39Confusables.is_confusable?("lscopecC鬼obƅa", "1scopecC⿁оbьа")
  end
end
