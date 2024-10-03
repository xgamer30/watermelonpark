@echo off
mode con: cols=70 lines=60
:diocane
title (ByCruchTeam)
color 0a
cls
echo Bios
wmic bios get serialnumber
wmic csproduct get uuid
echo CPU
wmic cpu get serialnumber
echo Diskdrive
wmic diskdrive get serialnumber
echo Baseboard serialnumber
wmic baseboard get serialnumber
echo Baseboard manufacturer
wmic baseboard get manufacturer
echo MacAddress
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
echo GPU
wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo Press ENTER to check serial again...
pause >nul
cls
goto diocane