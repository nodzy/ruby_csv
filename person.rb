require 'csv'

class Person
  attr_accessor :name, :lastname
  
  def initialize(name:, lastname:)
    self.name = name
    self.lastname = lastname
  end

  def to_s
    "#{name} #{lastname}"
  end
  
  def self.load_list
    puts "Name of a file?"
    filename = STDIN.gets.chomp
    rows = []
    CSV.foreach(filename, headers: true) do |row|
      row = row.to_h 
      row = row.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
      rows << row
    end
    rows.map do |row|
      Person.new(row)
    end
  end
end
