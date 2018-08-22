candidate1 = { 'min_salary'=>120000 }
candidate2 = { 'min_salary'=>190000 }
job1 = { 'max_salary'=>130000 }
job2 = { 'max_salary'=>80000 }
job3 = { 'max_salary'=>171000 }

# match(candidate1, job1) = true
# match(candidate2, job2) = false

def match(candidate, job)
  if !candidate.has_key?("min_salary") || !job.has_key?("max_salary")
    throw error
  end
  candidate["min_salary"] * 0.9 <= job["max_salary"]
end

puts match(candidate1, job1) # true
puts match(candidate1, job3)
puts match(candidate2, job3)

puts match(candidate1, job2) #false
puts match(candidate2, job1)
puts match(candidate2, job2)
