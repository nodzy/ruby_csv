require 'csv'
require_relative 'person'

rows = []
rows = Person.load_list

rows.uniq!(&:lastname)

rows.each do |row|
  puts "\n#{row.lastname}"
end
