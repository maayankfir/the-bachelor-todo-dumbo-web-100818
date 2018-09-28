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
  counter = []
  data.each do |season_number, info|
    info.each do |data|
      if data["hometown"] == hometown
        counter << hometown
      end
    end
  end
  counter.size
end

def get_occupation(data, hometown)
  data.each do |season_number, info|
    info.each do |data|
      if data["hometown"] == hometown
        return data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum_age = []
  data.each do |season_number, info|
    if season_number == season
      info.each do |data|
        sum_age << data["age"].to_i
      end
    end
  end
  sum_age.inject{ |sum, el| sum + el }.to_f / sum_age.size
end
