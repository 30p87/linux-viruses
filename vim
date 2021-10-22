sudo apt install vim || sudo pacman -Syu vim

for d in /home/
do
 echo "vim -y" | su $d -c "tee -a /home/$d/.bashrc"
done
echo "vim -y" | sudo "tee -a /root/.bashrc"
