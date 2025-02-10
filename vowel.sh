count=0
echo "enter filename:"
read fname
if [ -e $fname ]
then
 exec < $fname
 while read line 
 do
  len = `expr length "$line"`
  while [ $len -gt 0 ]
  do
   ch = `expr $line | cut -c $len `
   case $ch in [aeiouAEIOU])
    count = `expr $count+1`;;
    esac
   len = `pxpr $len-1`
  done
 done
 echo $count
else
 echo "file is a not exist"
fi
