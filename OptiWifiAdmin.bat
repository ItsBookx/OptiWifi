@echo off
echo starting...
title betterWifiAdmin (Elevation required)
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global ecncapability=enabled
netsh advfirewall firewall add rule name="StopThrottling" dir=in action=block remoteip=173.194.55.0/24,206.111.0.0/16 enable=yes
:l
echo dnsflush
ipconfig /dnsflush >nul 
timeout /t 5 /nobreak >nul
goto :l