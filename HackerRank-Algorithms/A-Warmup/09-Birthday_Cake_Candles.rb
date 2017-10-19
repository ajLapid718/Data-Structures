Link: www.hackerrank.com/challenges/birthday-cake-candles/problem

Colleen is turning n years old! Therefore, she has n candles of various heights on her cake, and candle i has height height_i.
Because the taller candles tower over the shorter ones, Colleen can only blow out the tallest candles.
Given the height_i for each individual candle, find and print the number of candles she can successfully blow out.

Sample Input

4
3 2 1 3

Sample Output

2

We have one candle of height 1, one candle of height 2, and two candles of height 3.
Colleen only blows out the tallest candles, meaning the candles where height = 3.
Because there are 2 such candles, we print 2 on a new line.

# My solution
def birthdayCakeCandles(n, ar)
  tallest_candle_height = ar.max
  ar.count(tallest_candle_height)
end

# Provided by HackerRank
n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = birthdayCakeCandles(n, ar)
puts result;
