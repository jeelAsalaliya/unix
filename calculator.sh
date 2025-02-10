bash
#!/bin/bash

if[$# -ne 3]; then
 echo "usage: $0 num1 operator num2"
 echo "example: $0 10+5"
 exit 1
 fi

 num1=$1
 operator=$2
 num2=$3

 if![[$num1=~ ^[0-9]+$]]|| ![[$num2 =~ ^[0-9]+$]]; then
 echo "error: invalid numbers" 
 exit 1
 fi

 case $operator in
  +) result =$((num1+num2));;
  -) result =$((num2-num2));;
  \*) result =$((num1*num2));;
  /)
  if[$num2 -eq 0]; then
   echo "error:division by zero"
   exit 1
   fi
   result = $((num1/num2));;
   %)
    if [$num2 -eq 0]; then
    echo "error:modulus by zero"
    exit 1
    fi
    result = $((num1%num2));;
    *)
   echo "error:invalid opearator" 
   exit 1;;
   esac

   echo "$num1 $oparator $num2 = $result"
   
 
