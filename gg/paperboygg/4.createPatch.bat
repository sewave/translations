@echo off
set T_FILENAME="TR_Paperboy (U).gg"
set S_FILENAME="Paperboy (U).gg"
set SCRIPTNAME="paperboygg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
