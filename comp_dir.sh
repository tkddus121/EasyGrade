#!/bin/sh

echo -e "Input Dir : \c"
read dir
echo "compile dir"
FILEs=`ls $dir -f`

for i in ${FILEs};do
	echo "Entering directory=${i#*.}";
	if [  ${i#*.} = "c" ];then
		echo `gcc -o $dir/${i%.*} $dir/$i`
	fi
done

echo `mkdir $dir/cfile`
echo `mv $dir/*.c $dir/cfile`
