# launchy 친구를 불러온다
# launchy에게 브라우저 열어달라고 한다

require "launchy"
require "uri"
# "https://search.naver.com/search.naver?where=image&sm=tab_jum&query=multicampus"
# Launchy.open("")

# puts "안녕" + " hello" + " 루비"
keywords = ["daum", "google", "facebook"]

url = "https://search.naver.com/search.naver?where=image&sm=tab_jum&query="
keyword = (keywords[0])

n = 0
while(n<3)
    Launchy.open(url + keywords[n])
    n = n + 1
end