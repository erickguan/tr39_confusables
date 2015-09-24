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
    assert_skeleton_equal "𝖶", "W"
    assert_skeleton_equal "so̷s", "søs"
    assert_skeleton_equal "scope", "scope"
    assert_skeleton_equal "lscopecc鬼obƅa", "1scopecс⿁оbьа"
  end

  def test_upper
    assert_skeleton_equal "lscopecC鬼obƅa", "1scopecC⿁оbьа"
  end

  def test_consuable?
    assert_equal true, Tr39Confusables.is_confusable?("lscopecC鬼obƅa", "1scopecC⿁оbьа")
  end
end
