-- Check if Palindrome – Checks if the string entered by the user is a palindrome. 
-- That is that it reads the same forwards as backwards like “racecar”

function checkIfPalindrome(word)
	isPalindrome = false
	
	-- ternary operator-like shit
	-- wordlength = even length word ? yes : no
	wordLength = (#word%2 == 0) and (#word/2) or ((#word-1)/2)
	
	for i = 1, wordLength do					      -- loop over half the string
		local a = word:sub(i,i) 					  -- front of string
		local b = word:sub(wordLength,wordLength)     -- back of string
		if a == b then	
			isPalindrome = true
		else
			isPalindrome = false
		end
	end
	return isPalindrome
end

-- Try with input
print("What's your word?")
word = string.lower(io.read())

isPalindrome = checkIfPalindrome(word)

if isPalindrome then
	print("Yep, palindrome!")
else
	print("Nope, not a palindrome.")
end