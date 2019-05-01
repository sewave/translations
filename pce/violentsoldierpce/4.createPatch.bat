@echo off
set T_FILENAME="TR_Violent Soldier (Japan).pce"
set S_FILENAME="Violent Soldier (Japan).pce"
set SCRIPTNAME="violentsoldierpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
