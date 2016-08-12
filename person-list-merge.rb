require 'csv'

def csv_headers
  %w(name lastname)
end
files = []
files += [ARGV[0], ARGV[1]]

file_contents = files.map { |f| CSV.read(f) }

csv_string = CSV.generate do |csv|
  csv << csv_headers
  file_contents.each do |file|
    file.shift
    file.each do |row|
      csv << row
    end
  end
end

File.open(ARGV[2], 'w') { |f| f << csv_string }
