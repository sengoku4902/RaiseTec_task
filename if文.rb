def boolean(score)
  if score == 1
    return "引数が１なら真"
  end
  return "引数が０なら偽"
end

puts boolean(1)
puts boolean(0)
