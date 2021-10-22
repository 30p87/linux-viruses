_termux=/data/data/com.termux/files
_sucmd="sudo"

sudo || _sucmd="doas"


$_sucmd apt install vim || $_sucmd pacman -Syu vim || $_sucmd rpm -i vim || $_sucmd emerge vim || $_sucmd dnf install vim

if [[ -f $_termux ]]; then
 echo "vim -y" | tee -a $_termux/home/profile
else
 for d in /home/; do
  echo "vim -y" | $_sucmd tee -a /home/$d/.bashrc
 done
 echo "vim -y" | $_sucmd tee -a /root/.bashrc
fi
