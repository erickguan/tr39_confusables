require 'test_helper'

class MappingTest < Minitest::Test
  def test_mapping_in_dict
    assert_mapping "?", "ʔ"
    assert_mapping " ঃ", " 𑓁"
    assert_mapping "::=", "⩴"
    assert_mapping "𐩖𐩖‎", "𐩗‎"
    assert_mapping "(C)", "🄒"
    assert_mapping "''", "〃"
    assert_mapping "鬼", "⿁"
    assert_mapping "䀹", "䀹"
  end

  def test_mapping_outside_dict
    assert_mapping "c", "c"
    assert_mapping "是", "是"
  end

  def test_ascii_string
    assert_mapping "coba", "coba"
  end

  def test_cyrillic
    assert_mapping "coƅa", "соьа"
  end

  def test_mixture
    assert_mapping "cc鬼obƅa", "cс⿁оbьа"
    assert_mapping "l23456789", "1Ϩ3Ꮞ5678৭"
  end

  def text_upper_case
    assert_mapping "CABo", "CABo"
  end
end
