@echo off
set T_FILENAME="TR_Jeep Jamboree - Off-Road Adventure (USA).gb"
set SCRIPTNAME="jeepjamboreeoffroadadventuregb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7E06:28,7F06:18
pause
