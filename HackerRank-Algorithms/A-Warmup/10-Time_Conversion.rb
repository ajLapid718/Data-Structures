Link: www.hackerrank.com/challenges/time-conversion/problem

Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.

Sample Input

07:05:45PM

Sample Output

19:05:45

# My solution

def timeConversion(s)
  am_or_pm = s.chars.last(2).join
  s.delete!(am_or_pm)

  staging_time = s.split(":")
  hour_to_change = staging_time.first

  afternoon = hour_to_change.to_i.between?(1,11) && am_or_pm.include?("PM")
  midnight = hour_to_change.to_i == 12 && am_or_pm.include?("AM")

  case
  when afternoon
    staging_time.shift
    staging_time.unshift("#{hour_to_change.to_i + 12}")
    staging_time.join(":")
  when midnight
    staging_time.shift
    staging_time.unshift("00")
    staging_time.join(":")
  else
    staging_time.join(":")
  end
end

# Provided by HackerRank
s = gets.strip
result = timeConversion(s)
puts result
