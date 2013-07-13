-- Fibonacci Sequence – Enter a number and have the
-- program generate the Fibonacci sequence to that number
-- or to the Nth number
function fibonacci(n)
	fib = {[0]=0, 1, 1} -- creates a table

	for i=3, n do
		fib[i] = fib[i-1] + fib[i-2]
	end
	
	return fib[n]
end

-- Try it out with user input
print('How many numbers do you want?')
n = io.read()
fibonacci(n)

-- Print the table
for i,v in ipairs(fib) do print(v) end