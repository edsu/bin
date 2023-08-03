#/bin/zsh

# journal is a little command to edit my markdown journal with vim. By default
# it will open the journal for today. Optionally supply a date (e.g. 2021-01-01)
# to edit an older entry.

journal_dir="$HOME/Dropbox/Journal"

if [ "$1" == "yesterday" ]
then
  date=`TZ=GMT+24 date +%Y-%m-%d`
elif [ "$1" ]
then
  date=$1
else
  date=`date +%Y-%m-%d`
fi

filename="$journal_dir/$date.md"

if [ ! -f "$filename" ]; then
  echo "# $date\n" > $filename
fi

nvim "+norm Go" "+startinsert" "$filename"
