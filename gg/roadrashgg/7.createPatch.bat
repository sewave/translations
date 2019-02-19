@echo off
set T_FILENAME="TR_Road Rash (U).gg"
set S_FILENAME="Road Rash (U).gg"
set SCRIPTNAME="roadrashgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
