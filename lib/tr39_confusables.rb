require 'unf'

module Tr39Confusables
  @@table = Marshal.load(File.open("lib/confusables", "r"))

  def self.skeleton(string)
    string = UNF::Normalizer.normalize(string, :nfc)
    UNF::Normalizer.normalize(mapping(string), :nfc)
  end

  def self.is_confusable?(a, b)
    skeleton(a) == skeleton(b)
  end

  private

  def self.mapping(string)
    string.chars.map { |c| @@table.fetch(c, c) }.join
  end
end
