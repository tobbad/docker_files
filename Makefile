

all: 	debian_s
	
	
debian_t:
	docker build -t debian_t -f debian_testing_with_user.df .

debian_tsdcc:
	docker build -t debian_tsdcc -f debian_testing_with_user_and_sdcc.df .

mbed:
	#docker image rm -f mbed
	#wget https://www.modelio.org/download/send/28-modelio-3-7-1/123-modelio-3-7-1-red-hat-centos-64-bit.html
	docker build -t mbed -f ./debian_mbed.df .

debian_s:
	docker build -t debian_s -f debian_stable_with_user.df .
	
debian_os:
	docker build -t debian_os -f debian_oldstable_with_user.df .
	
debian_oos:
	docker build -t debian_oos -f debian_oldoldstable_with_user.df .

ubuntu_s:
	docker build -t ubuntu_s -f ubuntu_stable_with_user.df .
	
debian_i386_s:
	docker build -t debian_i386_t -f debiani386_user_x.df .
	
	
