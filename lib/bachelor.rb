def get_first_name_of_season_winner(data, season)
  data.each do |season_number, info|
    if season_number.include?(season)
  info.each do |details, details_data|
  if details_data[4] == "winner"
  return details_data[0]
  end
  end
end
end
end
def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
