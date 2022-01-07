n = 10
words = [*"a".."z"]

n.times do |i|
  Post.create(content: words[i] * 140)
end