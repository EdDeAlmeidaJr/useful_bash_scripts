#!/usr/bin/env ruby

current_path = ARGV[0]
path_array = current_path.split(":")
path_array.uniq!
path_array.reject! { |item| item.nil? || item.empty? }
puts path_array.join(":")
