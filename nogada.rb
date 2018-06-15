# 1. 파일을 만든다 100개만
# - 특정 폴더로 들어간다
# - 파일을 만든다
# 2. 파일들(100개)의 이름을 수정한다



puts Dir.pwd

Dir.mkdir("files")
Dir.chdir("files")

puts Dir.pwd

File.open("list.txt", "w")