def game_hash
teams = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end


#def num_points_scored(name)
#  game_hash.each do |location, list|
#    list.each do |key, description|
#      if description.include?(name)
#        return teams[location][key][name][:points]
#      end
#    end
#  end
#end  

#def shoe_size(name)
#  game_hash.each do |location, list|
#    list.each do |key, description|
#      if description.include?(name)
#        return teams[location][key][name][:shoe]


#def num_points_scored(name)
#  game_hash.each do |location, list|
#    list.each do |key, description|
#      if description.include?(name)
#        return teams[location][key][name][:points]
#      end
#    end
#  end
#end  


def num_points_scored(name)
  player_stats(name)[:points]
end

def shoe_size(name)
  player_stats(name)[:shoe]
end

def team_colors(team_name)
  game_hash.each do |location, list|
    if game_hash[location].values.include?(team_name)
      list.each do |key, description|
        if key == :colors
          return description
        end  
      end
    end
  end
end

def team_names
array = []
  game_hash.each do |location, list|
    list.each do |key, description|
      if key == :team_name
      array << description
      end  
    end
  end
array
end

def player_numbers(team_name)
array = []
  game_hash.each do |location, list|
    if game_hash[location].values.include?(team_name)
      list.each do |key, description|
        if key == :players
          description.each do |name, stats|
            puts stats
            array << stats[:number]
          end
        end
      end
    end
  end
array
end

def player_stats(name)
  game_hash.each do |location, list|
    if list[:players].include?(name)
      return list[:players][name]
    end 
  end
end 

def big_shoe_rebounds
array_name = []
array_shoe = []
  game_hash.each do |location, list|
    list[:players].each do |name, stats|
        array_name << name
        array_shoe << stats[:shoe]      
    end
  end
i = array_shoe.each_with_index.max[1]
name = array_name[i]  
player_stats(name)[:rebounds]

#def shoe_size(name)
#  game_hash.each do |location, list|
#    list.each do |key, description|
#      if description.include?(name)
#        return teams[location][key][name][:shoe]
#      end
#    end
#  end
#end  

def player_stats(name)
  game_hash.each do |location, list|
    if list[:players].include?(name)
      return list[:players][name]
    end 
  end
end 

def num_points_scored(name)
  player_stats(name)[:points]
end

def shoe_size(name)
  player_stats(name)[:shoe]
end

def big_shoe_rebounds
array_name = []
array_shoe = []
  game_hash.each do |location, list|
    list[:players].each do |name, stats|
        array_name << name
        array_shoe << stats[:shoe]      
    end
  end
i = array_shoe.each_with_index.max[1]
name = array_name[i]  
player_stats(name)[:rebounds]
end

def team_names
array = []
  game_hash.each do |location, list|
    list.each do |key, description|
      if key == :team_name
      array << description
      end  
    end
  end
array
end

def team_colors(team_name)
  game_hash.each do |location, list|
    if game_hash[location].values.include?(team_name)
      list.each do |key, description|
        if key == :colors
          return description
        end  
      end
    end
  end
end

def player_number(number)
  game_hash.each do |location, list|
    puts game_hash[location][:players][list][:number]
  end
end

player_number(33)

    
      