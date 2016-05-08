#Encrypt method:
#- input: message
def encrypt(message)
	index = 0
	#loop over index for amount in message length.
	while index < message.length
		#- assign index to the characters
		#- add 1 to the index value of each letter in the string
		message[index] = message[index].next
		#add 1 to index counter  
		index += 1
	end
	#- puts the new index values together as a new string 
	#substitutes ab for a in special case of encrypting a "z"
	message = message.gsub("ab","a")
end
#Decrypt method:
def decrypt(mess)
	#add alphabet to loop over
	alphabet2 = "abcdefghijklmnopqrstuvwxyz"
	#- assign index to the input string
	index = 0
	#add index for alphabet
	i = 0
	#blank space for output
	output = ""
	#loop index for message length
	while index < mess.length
		#compare message with corresponding alphabet index
		if mess[index] == alphabet2[i]
				#- subtract 1 from the index value of each letter in string
				output += alphabet2[i - 1]
			#add 1 to index counter
			index += 1
			#reset alphabet index to 0
			i = 0
		end
		#add 1 to alphabet index counter
		i += 1
	end
	#return output
	output
end

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")
# puts decrypt(encrypt("swordfish"))
# Our nested method call works because ruby reads the encrypt and then the decrypt due to the parentheses.

#OUR DRIVER CODE

# -ask user whether they would like to encrypt or decrypt a password
puts "Would you like your password encryted or decrypted?"
	input1 = gets.chomp
	# -ask them for the password
puts "What is your password"
	password = gets.chomp
	# -conduct requested operation
	if input1 == "encrypted"
		# - print result to screen
		puts "Your encrypted password is #{encrypt(password)}"
		else
		# - print result to screen
		puts "Your decrypted password is #{decrypt(password)}"
	end
#-exit the program
exit









