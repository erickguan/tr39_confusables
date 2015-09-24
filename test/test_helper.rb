require 'minitest/autorun'
require 'tr39_confusables'

def assert_mapping(expected, actual)
  assert_equal expected, Tr39Confusables.send(:mapping, actual)
end

def assert_skeleton_equal(expected, actual)
  assert_equal Tr39Confusables.skeleton(expected), Tr39Confusables.skeleton(actual)
end
