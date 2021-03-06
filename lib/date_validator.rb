# This method takes three arguments: month, date, and year, and returns either TRUE
# or FALSE (the boolean values, not the string representation of those boolean
# values) depending on whether the date is valid (i.e. does exist on the calendar)
# or is not valid (i.e. does not exist on the calendar).
#
# Here are the rules:
#
# + The month must be between 1 and 12 (inclusive)
# + The year must be between 1880 and 2280 (inclusive)
# + The day must exist within the month
# + You must account for leap years (look up how leap years work)
# + No using the `Date` class (we'll refactor to allow the `Date` class later this week)
# + Only worry about integer inputs (no floats, strings, etc.)
#
# This method should, in its final form, not do any output.



def valid_date?(month, day, year)

# Defining months in year
  def valid_months_in_year(month)
  month >= 1 && month <= 12
  end

# Defining span of years
  def valid_years(year)
  year >= 1880 && year <= 2280
  end

  def valid_days_limit(day)
  day >= 1 && day <= 31
  end

# Defining 31 day month

  def month_31(day)
  if day >= 1 && day <= 31 && day > 0
      return true
  end
  end

# Defining 30 day month

  def month_30(day)
  if day >= 1 && day <= 30 && day > 0
      return true
  end
  end

# Defining 29 day month

  def month_29(day)
  if day >= 1 && day <= 29 && leap_year == 0
      return true
  end
  end

# Defining 28 day month

  def month_28(day)
  if day >= 1 && day <= 28 && leap_year != 0
      return true
  end
  end

# Defining leap year

  def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
      return true
  end
  end



  def month_num(n)
     if n == month_31 then [1, 3, 5, 7, 8, 10, 12]
  elsif n == month_30 then [4, 6, 9, 11]
  elsif n == month_29 then [2] && leap_year != 0
  elsif n == month_28 then [2] && leap_year == 0
      return true
    end
  end

  return true

end

valid_date?(12, 18, 1997)
