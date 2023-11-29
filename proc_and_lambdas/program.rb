pr = Proc.new { |a, b| a + b }
p pr.call(1, 2)
#p pr.call(1, 2, 3, 4)

l = -> (a, b) { a + b }
# l = lambda { |a, b| a + b }
p l.call(1, 2)
#p l.call(1, 2, 3, 4)

def test_proc
  pr = Proc.new { |a, b| return a + b }
  pr.call(1,2)
  return 0
end

p test_proc

def test_lambda
  l = lambda { |a, b| return a + b }
  l.call(1, 2)
  return 0
end

p test_lambda

def sum_this(val1, val2, pr)
  p pr.call(val1, val2)
end

sum_this(3, 4, pr)

def sum_that(val1, val2, &pr)
  # yield(val1, val2)
  pr.call(val1, val2)
end

p sum_that(10, 10) {|a, b| a + b}

