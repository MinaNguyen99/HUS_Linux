sed -n '/^.*student.*$/p' bai3.txt > out1.txt
sed "s/\/\*/\#\#/g; s/\*\//\#\#/g" bai3.txt > out2.txt
sed '1d' bai3.txt > out3.txt
