# require 'httparty'
# require 'nokogiri'

# # 1. Naver 에 원하는 정보가 담긴 페이지를 요청한다.
# # 2. Naver 에게 받은 문서 안에 있는 원하는 정보를 빼온다.
# # 3. 빼온 정보를 출력한다.

# res = HTTParty.get("https://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&sug=&sugo=&q=%ED%99%98%EC%9C%A8")
# # 임시 변수에 저장, res(result)

# val = Nokogiri::HTML(res).css("#exBoxTab > a.tab_tit.stock_down.on > span")
# # css, cascading style sheet

# puts "현재 코스피 지수는" + " " + val.text + "입니다."

require 'httparty'
require 'nokogiri'

# 1. naver에 원하는 정보가 담긴 페이지를 요청한다.
# 2. 네이버에게 받은 문서 안에 있는 원하는 정보를 빼온다.
# 3. 빼온 정보를 출력한다.

headers = {
  'User-Agent': 'Mozilla/5.0 (Windows; U; MSIE 9.0; WIndows NT 9.0; ko-KR))'
} 
res = HTTParty.get("https://search.daum.net/search?w=tot&q=%EB%8B%AC%EB%9F%AC%ED%99%98%EC%9C%A8", headers: headers)
val = Nokogiri::HTML(res).css("#exBoxTab > a.tab_tit.stock_down.on > span > em.txt_num")
puts "오늘의 달러 환율은" + " " +val.text + " 원 입니다."

