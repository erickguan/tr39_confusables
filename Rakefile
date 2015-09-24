#!/usr/bin/env rake
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc "Run tests"
task :default => :test

task :update_dict do
  require 'open-uri'

  def pack(strings)
    strings.split(' ').map(&:hex).map { |c| [c].pack("U") }.join
  end

  table = {}

  File.read(open('http://www.unicode.org/Public/security/latest/confusables.txt')).each_line do |line|
    next unless line =~ /;/
    orignal, mapping = line.split(';')[0..1].map(&:strip)
    table[pack(orignal)] = pack(mapping)
  end

  File.open("lib/confusables", "w") { |file| Marshal.dump(table, file) }
end
