@echo off
set T_FILENAME="TR_Hang-On 2 (SG-1000).sg"
set S_FILENAME="Hang-On 2 (SG-1000).sg"
set SCRIPTNAME="hangon2sg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
