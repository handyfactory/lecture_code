# launchy 친구를 불러온다
# launchy에게 브라우저 열어달라고 한다

require "launchy"
require "uri"
# "https://search.naver.com/search.naver?where=image&sm=tab_jum&query=multicampus"
# Launchy.open("")

# puts "안녕" + " hello" + " 루비"
keywords = ["bts", "got7", "워너원"]

url = "https://search.naver.com/search.naver?where=image&sm=tab_jum&query="
keyword = (keywords[0])


keywords.each do|key|
    Launchy.open(url + key)
end