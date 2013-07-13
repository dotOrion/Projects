-- Reverse a String – Enter a string and the program will reverse it and print it out.
-- There is a string.reverse function, but that is obviously besides the point of this exercise.
function reverseString(str)
	reversed = ""
	for i = #str, 1, -1 do			-- reverse loop over the string
		local c = str:sub(i,i) 		-- take the character we're currently on
		reversed = reversed .. c	-- concatenate / append the current char
	end
	print(reversed)					-- print for debugging purposes
	return reversed
end

-- Try it out with user input
print('Enter a string!')
str = io.read()
reverseString(str)
