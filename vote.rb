require 'csv'

CSV.open("vote.csv","w+") do |v|
    v << ["yerim",1]
    v << ["changwon",1]
    v << ["seungjin",0]
end