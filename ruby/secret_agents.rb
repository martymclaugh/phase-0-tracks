#Encrypt method:
#- input: some string
#- break up string into separate characters
#- assign index to the characters
#- add 1 to the index value of each letter in the string
#- print the new index values together as a new string 

#Decrypt method:
#- assign index to the input string
#- subtract 1 from the index value of each letter in string

def encrypt(message)
	index = 0
	while index < message.length 
		message[index] = message[index].next
		index += 1
	end
	message = message.gsub("ab","a")
end

def decrypt(mess)
	alphabet2 = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	i = 0
	output = ""
	while index < mess.length
		if mess[index] == alphabet2[i]
				output += alphabet2[i - 1]
			index += 1
			i = 0
		end
		i += 1
	end
	output
end

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")
# puts decrypt(encrypt("swordfish"))
# Our nested method call works because ruby reads the encrypt and then the decrypt due to the parentheses.
# -ask user whether they would like to encrypt or decrypt a password
# -ask them for the password
# -conduct requested operation
# - print result to screen
#-exit the program

puts "Would you like your password encryted or decrypted?"
	input1 = gets.chomp
puts "What is your password"
	password = gets.chomp
	if input1 == "encrypted"
		puts "Your encrypted password is #{encrypt(password)}"
		else
		puts "Your decrypted password is #{decrypt(password)}"
	end










