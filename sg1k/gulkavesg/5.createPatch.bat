@echo off
set T_FILENAME="TR_Gulkave (SG-1000) [!].sg"
set S_FILENAME="Gulkave (SG-1000) [!].sg"
set SCRIPTNAME="gulkavesg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
