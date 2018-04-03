#!/bin/sh

echo -e "Input Dir : \c"
read dir
echo "exe dir"
FILEs=`ls $dir -F`

echo `chmod 777 *`

for i in ${FILEs};do
	echo "execute ${i}" >> "output.txt";
	if [ $i != "input.txt*" ] && [ $i != "output.txt*" ];then
		echo `./$dir/$i < $dir/input.txt >> output.txt`
	fi
done
