require 'csv'

CSV.foreach("vote.csv") do |v|
    yes += v[1].to_i
end

puts yes