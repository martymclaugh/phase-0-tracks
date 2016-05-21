# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :D"
# 	end
# end
module Shout
	def yell_angrily(words)
		puts words.upcase + "!!!!" + " >.<"
	end
	def yell_happily(words)
		puts words + "!!!!" + " :D"
	end

class Boss
	include Shout
end

class Mom
	include Shout
end

boss = Boss.new
boss.yell_angrily("you're fired")
boss.yell_happily("here's a raise")

mom = Mom.new
mom.yell_angrily("you're dead to me")
mom.yell_happily("I'm so proud of you")
end