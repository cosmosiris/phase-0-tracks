dream_defenders = [
  miami_chapter = {
    :member_1 => {
      :first_name => "Levell",
      :last_name => "Strong",
      :date_joined => "August 2016"
    },
    :member_2 => {
      :first_name => "Umi",
      :last_name => "Agnew",
      :date_joined => "June 2013"
    },
    :member_3 => {
      :first_name => "Sherika",
      :last_name => "Shaw",
      :date_joined => "July 2013"
    },
  },
  broward_chapter = {
    :member_1 => {
      :first_name => "Iris",
      :last_name => "Nevins",
      :date_joined => "December 2014"
    },
    :member_2 => {
      :first_name => "Jesse",
      :last_name => "Cosme",
      :date_joined => "June 2014"
    },
    :member_3 => {
      :first_name => "Bertisha",
      :last_name => "Jones",
      :date_joined => "August 2016"
    },
  },
  bay_area_chapter = {
    :member_1 => {
      :first_name => "Fizzle",
      :last_name => "May",
      :date_joined => "January 2016"
    },
    :member_2 => {
      :first_name => "Stud",
      :last_name => "La",
      :date_joined => "Feb 2015"
    },
    :member_3 => {
      :first_name => "Misha",
      :last_name => "Barton",
      :date_joined => "July 2017"
    },
  }
]

p dream_defenders[0][:member_2][:last_name]
p dream_defenders[2][:member_3]
p dream_defenders[1][:member_2][:first_name] + " " + dream_defenders[1][:member_2][:last_name]
p dream_defenders[0][:member_1][:first_name] + " joined the dream defenders on " + dream_defenders[0][:member_1][:date_joined]