# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(1, "o")
p "zom"[0,3] = "zoom"
p "zom".sub!("o", "oo")
# => “zoom”

p "enhance".center(12)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual" + " suspects"
p "the usual" << " suspects"
p "the usual".insert(9," suspects")
p "the usual".insert(9," suspects")
#=> "the usual suspects"

p " suspects".lstrip
p " suspects".lstrip!
p " suspects".strip
p " suspects".strip!
# => "the usual suspects"

p "The case of the disappearing last letter"["The case of the disappearing last lette"]
p "The case of the disappearing last letter".chop
p "The case of the disappearing last letter"[0,39]
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter"["he mystery of the missing first letter"]
p "The mystery of the missing first letter"[1, 40]
p "The mystery of the missing first letter"[0] = ""
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!"[0, 38] = "Elementary, my dear Watson!"
p "Elementary,    my   dear        Watson!".gsub(/\s+/, " ")
p "Elementary,    my   dear        Watson!".squeeze(" ")
p "Elementary,    my   dear        Watson!".split.join(" ")
# => "Elementary, my dear Watson!"

p "z".gsub("z", "122").to_i
p "z".codepoints
p "The unicode system defines a unique codepoint for each character in a multitude of world languages, scientific symbols, currencies etc. The codepoints for the english alphabet begin at 97, meaning the codepoint for 'a' is 97, for 'b', is 98, for 'c', is 99, etc"
# => 122
# (What is the significance of the number 122 in relation to the character z?)

p "How many times does the letter 'a' appear in this string?".count("a")
# => 4
