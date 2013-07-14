-- Count Vowels – Enter a string and the program counts 
-- the number of vowels in the text. For added complexity 
-- have it report a sum of each vowel found.

print("What's your word?")
word = string.lower(io.read())

vowelCount = {}

-- can this be shorter?
vowelCount['a'] = 0
vowelCount['i'] = 0
vowelCount['u'] = 0
vowelCount['e'] = 0
vowelCount['o'] = 0

for i = 1, #word do					-- loop over the string
	local c = word:sub(i,i) 		-- take the character we're currently on
	if vowelCount[c] then	
		vowelCount[c] = vowelCount[c] + 1
	end
end

-- let's see those results.
for k,v in pairs(vowelCount) do print(k,v) end