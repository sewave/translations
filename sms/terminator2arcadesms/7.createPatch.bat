@echo off
set T_FILENAME="TR_Terminator 2 - The Arcade Game (E) [!].sms"
set S_FILENAME="Terminator 2 - The Arcade Game (E) [!].sms"
set SCRIPTNAME="terminator2arcadesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
