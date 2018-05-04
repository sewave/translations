@echo off
set T_FILENAME="TR_Growl (U) [!].bin"
set S_FILENAME="Growl (U) [!].bin"
set SCRIPTNAME="growlsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
