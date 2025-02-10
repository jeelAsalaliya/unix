echo "enter your number1:\c"
read $n1
echo "enter your number2:\c"
read $n2

echo "1.sum 2.sub 3.multiple 4.division 5.square 6.square boot 7.exit" 
echo "enter your number:\c" 
read ch

case $ch in 
1|+) echo "ans = ` expr $n1 + $n2` ";;
:q
:w
3|\*) echo "ans = `expr $n1\*$n2` ";;
4|/) echo "ans = `expr $n1/$n2` ";;
5) echo "ans = `expr  $n1\*$n1` " echo "ans = `expr $n2\* $n2`";;
6) echo "ans = `expr` " echo "ans = `expr` ";; 
*) echo "invalid";;
esac
