echo "Username:"
read username

sudo pacman -S docker
sudo usermod -a -G docker $username
sudo systemctl enable docker.service
