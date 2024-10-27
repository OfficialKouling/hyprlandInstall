#!bin/bash
sudo pkill swhkd & sudo pkill swhks
systemctl --user start swhkd
