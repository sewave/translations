@echo off
set T_FILENAME="TR_Final Soldier (J).pce"
set S_FILENAME="Final Soldier (J).pce"
set SCRIPTNAME="finalsoldierpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
