

all: 	debian_s
	
	
debian_t:
	docker build -t debian_t -f debian_testing_with_user.df .

debian_tsdcc:
	docker build -t debian_tsdcc -f debian_testing_with_user_and_sdcc.df .

debian_s:
	docker build -t debian_s -f debian_stable_with_user.df .
	
debian_os:
	docker build -t debian_os -f debian_oldstable_with_user.df .
	
debian_oos:
	docker build -t debian_oos -f debian_oldoldstable_with_user.df .

ubuntu_s:
	docker build -t ubuntu_s -f ubuntu_stable_with_user.df .
	
	
