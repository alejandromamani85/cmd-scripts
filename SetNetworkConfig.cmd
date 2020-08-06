echo #####################################
echo RUNNING NETWORK CONFIGURATION
echo #####################################
netsh interface ip set address name="Wi-Fi" static 192.168.0.123 255.255.255.0 192.168.0.1
netsh interface ip set dns name="Wi-Fi" static 8.8.8.8
netsh interface ip add dns name="Wi-Fi" 8.8.4.4 index=2
echo #####################################
echo NETWORK CONFIGURATION HAS BEEN SET UP
echo #####################################
netsh interface ip show config name="Wi-Fi"
echo #####################################
echo RUNNING INTERNET TEST
echo #####################################
ping 8.8.8.8 -n 5
echo #####################################

