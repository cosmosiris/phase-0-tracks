#Old Code
# module Shout
#    def self.yell_angrily(words)
#       words + "!!!" + " :("
#    end

#   def self.yell_happily(words)
#     words + "!!!" + " :D"
#   end
# end

# puts Shout.yell_angrily("oh my gosh, shutup")
# puts Shout.yell_happily("Oh my gosh, I love you")

#Mixin Version

module Shout
   def yell_angrily(words)
    words + "!!!" + " :("
   end

  def yell_happily(words)
    words + "!!!" + " :D"
  end
end

class  Child
  include Shout
end

class Mom
  include Shout
end

child = Child.new
puts child.yell_happily("Oh my god thank you mommy")
mom = Mom.new
puts mom.yell_angrily("Oh my god, why did you do that?")



