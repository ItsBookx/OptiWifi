@echo off
echo starting...
title betterWifi (No elevation required)
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
:l
echo dnsflush
ipconfig /dnsflush >nul 
timeout /t 5 /nobreak >nul
goto :l