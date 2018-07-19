def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return person[:favourites][:snacks].include?(food)
end

def add_friend(person, friend)
  person[:friends] << friend
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loan_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def favourite_food(people)
  favourites = []
  for person in people
    for snack in person[:favourites][:snacks]
      favourites << snack
    end
  end
  return favourites
end

def find_no_friends(people)
  no_friends = []
  for person in people
    no_friends << person[:name] if person[:friends].empty?
  end
  return no_friends
end
