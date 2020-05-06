require 'date'

DAYS_IN_MONTH  = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31].insert(0, nil)
ROOMS          = [:first, :second, :third, :fourth]

def selected_room
  ROOMS.map {|number| send("#{number}_room_limit")}.compact
end

private

def birthday_to_time
  birthday = ARGV[0].split('/')
  Time.new(birthday[2], birthday[1], birthday[0])
rescue
  raise 'invalid date'
end

def calculate_age
  borrowed_month = false

  current_date = Time.new
  birth_date = birthday_to_time

  if current_date.to_date.leap?
    DAYS_IN_MONTH[2] = 29
  end

  day   = current_date.day - birth_date.day
  month = current_date.month - birth_date.month
  year  = current_date.year - birth_date.year

  if day < 0
    day = DAYS_IN_MONTH[birth_date.month] - birth_date.day + current_date.day
    month -= 1
    borrowed_month = true
  end

  if month < 0
    month = 12 - birth_date.month + current_date.month
    if borrowed_month == true
      month -= 1
    end
    year -= 1
  end

  if year < 0
    year, month, day = 0, 0, 0
  end

  [year, month, day].join
end

def first_room_limit
  "Sala 1" if calculate_age < [25, 2, 15].join
end

def second_room_limit
  "Sala 2" if calculate_age.between?([25, 2, 16].join, [45, 1, 0].join)
end

def third_room_limit
  "Sala 3" if calculate_age.between?([45, 1, 1].join, [65, 0, 0].join)
end

def fourth_room_limit
  "Sala 4" if calculate_age > [65, 0, 0].join
end

puts selected_room
