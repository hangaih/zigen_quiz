#カレンダー作る上での前提
day_of_week = ['日','月', '火', '水', '木', '金', '土']
day_of_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
day_of_month_leap = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

total_day = 1
ary = []
day = 0
month = 1
year = 1
for num in total_day..737500 do
  if year % 400 == 0
    if month == 13
      month = 1
      year += 1
    end
    if day >= day_of_month_leap[month-1]
      day = 1
      month += 1
    else
      day += 1
    end
  elsif year % 100 == 0
    if month == 13
      month = 1
      year += 1
    end
    if day >= day_of_month[month-1]
      day = 1
      month += 1
    else
      day += 1
    end
  elsif year % 4 == 0
    if month == 13
      month = 1
      year += 1
    end
    if day >= day_of_month_leap[month-1]
      day = 1
      month += 1
    else
      day += 1
    end
  else
    if month == 13
    month = 1
    year += 1
    end
    if day >= day_of_month[month-1]
      day = 1
      month += 1
    else
      day += 1
    end
  end

  ary.push([year, month, day, day_of_week[total_day % 7], total_day])
  total_day += 1
end
p ary


