#!/usr/bin/env ruby

EMOJI_FILE = File.expand_path('../emoji.txt', __FILE__).freeze
EMOJI = File.readlines(EMOJI_FILE).map(&:chomp).freeze

IO.popen('pbcopy', 'w') { |clipboard| clipboard << "LGTM :#{EMOJI.sample}:" }

puts 'LGTM with random emoji copied to clipboard'
