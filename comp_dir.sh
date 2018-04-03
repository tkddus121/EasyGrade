#!/bin/sh

echo -e "Input Dir : \c"
read dir
echo "compile dir"
FILEs=`ls $dir -f`

#fullpath=$1  
#dirname=$(dirname $fullpath)    # 파일이름을 뺀 경로   
#basename=$(basename  $fullpath) # 파일이름   
#filename=${basename%.*}   
#fileext=${basename#*.}


for i in ${FILEs};do
	echo "Entering directory=${i#*.}";
	if [  ${i#*.} = "c" ];then
		echo `gcc -o $dir/${i%.*} $dir/$i`
	fi
	
#	if [ -d  $i ];then
#		cd $i;
#		cd ..;
#	fi
done

echo `mkdir $dir/cfile`
echo `mv $dir/*.c $dir/cfile`
