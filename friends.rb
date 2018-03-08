def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return person[:favourites][:things_to_eat].include?(food)
end

def add_friend(person, name)
  person[:friends].push(name)
end

def remove_friend(person, name)
  person[:friends].delete(name)
end

def add_money(people)

  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loan(person1, person2, amount)
  person1[:monies] -= amount
  person2[:monies] += amount
end

def join_food(people)
  join_test = ""
 for person in people
   for edibles in person[:favourites][:things_to_eat]
     join_test += edibles
   end
 end
 return join_test
 end

def find_no_friends(people)

array_no_friends = []

for person in people
  if person[:friends].length == 0
    array_no_friends.push(person[:name])
  end
end

return array_no_friends

end
