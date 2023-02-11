for x in `ls`
do
extName=`echo $x | awk -F. '{ print $2 }'`
case $extName in
mp3)
echo "$x is a $extName File"
;;
pdf)
echo "$x is a $extName File"
;;
docx)
echo "$x is a $extName File"
;;
sh)
echo "$x is a $extName File"
;;
*)
echo "Please check your input"
;;
esac
done
