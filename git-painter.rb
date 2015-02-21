# Ben's git hub painter project. Only to be used for good.
# 2015 benpritchard.me
require 'pry'

starting_date = Time.new(2014, 05, 04, 12)
date_to_commit = starting_date

gridlines = [
  [1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]]
hireme = [
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [4, 0, 4, 0, 4, 0, 4, 4, 0, 0, 4, 4, 4, 0, 4, 0, 0, 0, 4, 0, 4, 4, 4, 0, 0, 4, 0, 4, 0, 0],
  [4, 0, 4, 0, 4, 0, 4, 0, 4, 0, 4, 0, 0, 0, 4, 4, 0, 4, 4, 0, 4, 0, 0, 0, 0, 4, 0, 4, 0, 0],
  [4, 4, 4, 0, 4, 0, 4, 4, 0, 0, 4, 4, 0, 0, 4, 0, 4, 0, 4, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0],
  [4, 0, 4, 0, 4, 0, 4, 0, 4, 0, 4, 0, 0, 0, 4, 0, 0, 0, 4, 0, 4, 0, 0, 0, 4, 0, 0, 0, 4, 0],
  [4, 0, 4, 0, 4, 0, 4, 0, 4, 0, 4, 4, 4, 0, 4, 0, 0, 0, 4, 0, 4, 4, 4, 0, 0, 4, 4, 4, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
]



puts("Painting...")

hireme.each_with_index() do |weekday, index|
  date_to_commit = starting_date + (index*86400)
  weekday.each() do |number_of_commits|
    if number_of_commits != 0
      number_of_commits.times() do
        system "touch another_commit"
        system "git add ."
        system 'git commit --date=', date_to_commit.to_s, ' -m "Change date of commit."'
      end
    end
    date_to_commit = date_to_commit + (7*86400)
  end
end
