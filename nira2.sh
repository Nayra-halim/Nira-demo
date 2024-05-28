
 
#! /bin/bash

while true ; do

echo -e "1.add user\n2.remove user\n3.change password\n4.list all user\n5.quit\nenter your choice:"
read num
if [[ $num == 1 ]]; then
	echo "enter username:"
	read USR
	sudo adduser $USR
	echo "successfully done"
	continue
elif [[ $num ==  2 ]]; then
	echo "remove this username:"
	read RE
	sudo userdel $RE
	echo "successfully done"
	continue
elif [[ $num == 3 ]]; then
	echo "choose username:"
	read PA
	sudo passwd $PA
	echo "successfully done"
	continue
elif [[ $num == 4 ]]; then
	echo "list all username:"
	awk -F: '$3 >=1000 && $3<=60000 { print$1 }' /etc/passwd
	echo "number of users:"
	awk -F: '$3 >=1000 && $3<=60000 { print$1 }' /etc/passwd | wc -l
	continue
else
	break
fi
done



