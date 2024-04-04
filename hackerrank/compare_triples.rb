def compareTriplets(a, b)
  a[a.length],b[b.length] = [0,0]
  a.each_with_index do |_, i|
    next if i == a.length - 1 || a[i] == b[i]
    (a[i] < b[i]) ? a[a.length-1] += 1 : b[b.length-1] += 1
  end
  [a[a.length-1],b[b.length-1]]
end
print compareTriplets([0,0,0],[3,6,10]), "\n"
