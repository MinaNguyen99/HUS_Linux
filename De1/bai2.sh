#Dem xem co bao nhieu ng dung dang hoat dong
awk 'BEGIN{}{if(NR>1) {a[$2]++}}END{count=0;for(i in a){count++};print count}' bai2.txt
#Tinh tong %mem su dung cua cac tien trinh
awk 'BEGIN{sum=0}{if(NR>1){sum+=$10}}END{print "Tong %mem la",sum}' bai2.txt
#Thong ke thong tin %CPU duoc su dung cua nguoi dung
awk 'BEGIN{sum=0}{if(NR>1){a[$2]+=$9}}END{j=1;for(i in a){print j,i,a[i];j++;}}' bai2.txt
