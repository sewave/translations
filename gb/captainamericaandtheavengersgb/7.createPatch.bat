@echo off
set T_FILENAME="TR_Captain America and the Avengers (U) [!].gb"
set S_FILENAME="Captain America and the Avengers (U) [!].gb"
set SCRIPTNAME="captainamericaandtheavengersgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
