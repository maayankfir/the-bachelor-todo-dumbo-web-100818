def get_first_name_of_season_winner(data, season)
  data.each do |season_number, info|
    if season_number == season
      info.each do |data|
        if data["status"] == "Winner"
          return data["name"].split.first
        end
      end
    end
  end
end
def get_contestant_name(data, occupation)
  data.each do |season_number, info|
    info.each do |data|
      if data["occupation"] == occupation
        return data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season_number, info|
    info.each do |data|
      if data["hometown"] == hometown
        counter += 1
      end
    end
  end
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
