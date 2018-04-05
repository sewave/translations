@echo off
set T_FILENAME="TR_Rambo - First Blood Part 2 (U) [!].sms"
set S_FILENAME="Rambo - First Blood Part 2 (U) [!].sms"
set SCRIPTNAME="rambopart2sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
