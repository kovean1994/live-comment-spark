i=0
while read line
do
  filename=`echo $1 | cut -d "/" -f5 | cut -d "." -f1` 
  echo ${filename}	${line} > ./tmp/${filename}_${i}.txt
  sed -i 's/ /\t/g' ./tmp/${filename}_${i}.txt
  ./demo ./tmp/${filename}_${i}.txt ./res/${filename}_${i}_
  i=$(($i+1))
done < $1
