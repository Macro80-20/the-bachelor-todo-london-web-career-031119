require 'pry'
data =
{
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation": "Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Great Falls, Virginia", #>"Shreveport, Louisiana"
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado", #>
      "occupation": "Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}

def get_first_name_of_season_winner(data,season)
season_winner = data["#{season}"].each do |x|
  if x["status"] == "Winner"
    first_name = x["name"].split(" ").shift
    return first_name
end
end
end

#Build a method, get_contestant_name, that takes in the data hash and an occupation string
#and returns the name of the woman who has that occupation.
def get_contestant_name(data, occupation)
contestant_name = data.each do |season,contestant|
  #binding.pry
contestant.each do |x|
  #binding.pry
  if x["occupation"] == occupation
    name = x["name"]
    return name
  end
end
end
end




def count_contestants_by_hometown(data, hometown)
   contestants_from_hometown = 0
  data.each do |season,contestant|
    #binding.pry
  contestant.each do |x|
    #binding.pry
    if x["hometown"] == hometown
      contestants_from_hometown+=1
      #binding.pry
    end
  end
  end
  contestants_from_hometown
  #binding.pry
end

=begin
Build a method get_occupation, that takes in two arguments––the data hash and a string of a hometown.
It returns the occupation of the first contestant who hails from that hometown.
=end
def get_occupation(data, hometown)

 data.each do |season,contestant|
   #binding.pry
 contestant.each do |x|
   #binding.pry
   if x["hometown"] == hometown
     r = x["occupation"]
     return r
     binding.pry
   end
   end
 end
end
get_occupation(data,"Great Falls, Virginia") #> "Journalist"
binding.pry






def get_average_age_for_season(data, season)
  # code here
end



#binding.pry
