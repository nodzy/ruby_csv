require 'csv'
require_relative 'person'

rows = []
rows = Person.load_list

rows.uniq! do |row|
  [row.name, row.lastname]
end

rows.each do |row|
  puts row
end
