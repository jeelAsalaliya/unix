echo "enter the pattern searches:/c"
read pname
echo "enter the file to be used.
\c"
read fname
echo "searching for $pname from file $fname"
grep "$pname"../$fname
