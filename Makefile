SAG = sudo apt-get

all : update,install

install :
	chmod +x install.sh
	./install.sh

update :
	$(SAG) update
	$(SAG) -y upgrade

clean :
	$(SAG) clean
	$(SAG) -y autoremove