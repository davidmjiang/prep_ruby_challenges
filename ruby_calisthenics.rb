def power(base, exponent)
  if exponent==0
    1
  elsif exponent==1
    base
  else
    base*power(base, exponent-1)
  end
end

def factorial(number)
  if number==0
    1
  elsif number==1
    number
  else
    number*factorial(number-1)
  end
end

def uniques(item_array)
  result=[]
  item_array.each do |item|
    result << item unless result.include?(item)
  end
  result
end

def combinations(array_1, array_2)
  result=[]
  array_1.each do |word_1|
    array_2.each do |word_2|
      result << "#{word_1}#{word_2}"
    end
  end
  result
end

def is_prime?(number)
  if number <= 1
    return false
  end

  idx=2
  while idx<number
    if(number%idx)==0
      return false
    end

    idx+=1
  end

  return true
end

def overlap(rect_1,rect_2)
  rect_2[0][0]<rect_1[1][0]&&rect_2[0][1]<rect_1[1][1]
end

def counting_game(players,number_target)
  number=1
  person=1
  increment=true
  while number<=number_target
    puts "Person #{person} says #{number}"

    person_change=1

    if number%7==0
      increment=!increment
    end

    if number%11==0
      person_change=2
    end

    if increment
      person=(person+person_change)
    else
      person=(person-person_change)
    end

    if person<1
      person=players+person
    elsif person>players
      person=person-players
    end

    number+=1
  end
end



