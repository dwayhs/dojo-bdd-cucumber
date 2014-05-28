
begin
  print ARGV[0].split(",").map { |e| eval(e)  }.join(",")
rescue
  print '!!!'
end