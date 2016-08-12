require 'csv'
require_relative 'person'

case ARGV[0]
when '--sort-by-name-last_name'
  rows = []
  rows = Person.load_list
  rows.sort_by! { |row| [row.name, row.lastname] }
  rows.each do |row|
    puts row
  end

when '--sort-by-last_name-name'
  rows = []
  rows = Person.load_list
  rows.sort_by! { |row| [row.lastname, row.name] }
  rows.each do |row|
    puts row
  end

else
  rows = []
  rows = Person.load_list
  rows.each do |row|
    puts row
  end
end
