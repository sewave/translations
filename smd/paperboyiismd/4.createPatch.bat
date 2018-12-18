@echo off
set T_FILENAME="TR_Paperboy II (U) [!].bin"
set S_FILENAME="Paperboy II (U) [!].bin"
set SCRIPTNAME="paperboyiismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
