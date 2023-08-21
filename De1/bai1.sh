luachon1(){
	mkdir /home/hamyho/Desktop/NguyenThiHaMy_1/
}
luachon2(){
	a=`ls /home/hamyho/Desktop/CuoiKi/`
	count=0
	for i in $a
	do
		count=$(($count+1))
	done
	echo $count
}
luachon3(){
#sao chep cac tep tin co duoi .docx sang thu muc HoVaTen_1
	a=`ls /home/hamyho/Desktop/CuoiKi/De1/ | grep -E "^.*\.docx$"`
	for i in $a
	do
		mv "/home/hamyho/Desktop/CuoiKi/De1/$i" "/home/hamyho/Desktop/NguyenThiHaMy_1/"
	done
}
luachon4(){
	# hien thi 5 dong dau cua tep tin vidu.txt trong thu muc HoVaTen_1
	head -n 5 "/home/hamyho/Desktop/NguyenThiHaMy_1/vidu.txt"
	
}
b1(){
	read -p "1. Tạo thư mục HoVaTen_1 (trong đó HoVaTen là họ và tên của bạn, viết liền,
không dấu) tại đường dẫn /home/student/Desktop
2. Đếm xem có bao nhiêu tệp tin và thư mục nằm trong thư mục Bai1
3. Sao chép các tệp tin có đuôi .docx sang thư mục HoVaTen_1
4. Hiển thị 5 dòng đầu của tệp tin vidu.txt trong thư mục HoVaTen_1
5. Thoát
S" lc
	case $lc in
	1) luachon1;;
	2) luachon2;;
	3) luachon3;;
	4) luachon4;;
	5)exit;;
	esac
}
b1
