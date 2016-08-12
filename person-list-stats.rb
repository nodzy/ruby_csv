require 'csv'
require_relative 'person'

rows = []
rows = Person.load_list
names = rows.group_by(&:name).map { |k, v| [k, v.count] }
lastnames = rows.group_by(&:lastname).map { |k, v| [k, v.count] }

puts "\nNazwiska:\n\n"
lastnames.each { |lname, count| puts "#{lname} (#{count})" }
puts "\nImiona:\n\n"
names.each { |name, count| puts "#{name} (#{count})" }
