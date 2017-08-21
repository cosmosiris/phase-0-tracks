module Shout
   def self.yell_angrily(words)
      words + "!!!" + " :("
   end

  def self.yell_happily(words)
    words + "!!!" + " :D"
  end
end

puts Shout.yell_angrily("oh my gosh, shutup")
puts Shout.yell_happily("Oh my gosh, I love you")

