-- Pig Latin - Pig Latin is a game of alterations played
-- on the English language game. To create the Pig Latin
-- form of an English word the initial consonant sound is
-- transposed to the end of the word and an ay is affixed
-- (Ex.: "banana" would yield anana-bay).

print("What's your word?")
word = string.lower(io.read())

vowels = {"a", "i", "u", "e", "o"}
firstLetter = word:sub(1,1)

if firstLetter[vowels] then
	pig = word:sub(2) .. 'ay'
else
	pig = word:sub(2) .. firstLetter .. 'ay'
end

print(pig)


