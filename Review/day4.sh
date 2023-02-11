for content in `ls ../Items`
do
   foldername=`echo $content | awk -F. '{ print $2 }'`
   foldername2=`echo $content | awk -F. '{ print $1 }'`
   mkdir -p ../Main
   mkdir -p ../Main/sub1
   mkdir -p ../Main/sub2
   mkdir -p ../Main/sub3
   mkdir -p ../Main/sub2/$foldername
   mkdir -p ../Main/sub2/$foldername/$foldername2
   cp -r  ../Items/$content ../Main/sub2/$foldername/$foldername2
done
