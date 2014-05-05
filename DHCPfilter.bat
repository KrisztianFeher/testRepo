@echo off
cls
set /p machineName=Please enter machine name(e.g. sausage.kainos.com): 
set /p macAddress=Please enter the MAC address(e.g. F4-F9-51-F1-E6-79): 

echo Please now wait for 1 minute...

@echo on

"\\Athena\Projects\Systems\Operational Team\test\psexec.exe" \\belfastdc2.kainos.com cmd /c netsh dhcp server \\belfastdc2 v4 add filter allow %macAddress% "%machineName%" ^& netsh dhcp server \\gdanskdc2 v4 add filter allow %macAddress% "%machineName%" ^& netsh dhcp server \\dublindc1 v4 add filter allow %macAddress% "%machineName%" ^& netsh dhcp server \\bristoldc1 v4 add filter allow %macAddress% "%machineName%"

PAUSE