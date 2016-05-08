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
	puts message
end
encrypt("cab")

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
	puts output
end
decrypt("dbc")
