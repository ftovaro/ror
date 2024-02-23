def average(a, i = 0)
  return a[i].to_f/a.size if i == a.length - 1

  return average(a, i + 1) + a[i].to_f/a.size
end


a = [5,8,10,12]
p average(a, i = 0)


# ChatGPT
# def recursive_sum(a,  i = 0)
#   return a[i] if i == a.length - 1

#   recursive_sum(a, i + 1) + a[i]
# end

# def average(a)
#   recursive_sum(a).to_f/a.length
# end


# a = [5,8,10,12]
# p average(a)
