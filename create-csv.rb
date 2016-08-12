require 'csv'

puts 'Name of a file?'
filename = STDIN.gets.chomp
CSV.open(filename, 'wb', write_headers: true,
                         headers: %w(name lastname)) do |csv|
  csv << %w(Andrzej Tomaka)
  csv << %w(Andrzej Tomaka)
  csv << %w(Andrzej Tomaka)
  csv << %w(Magda Marian)
  csv << %w(Andrzej Kowalski)
  csv << %w(Justyna Steczkowska)
  csv << %w(Anna Kowalski)
end
