@echo off
set T_FILENAME="TR_Mortal Kombat II (U) [!].gb"
set S_FILENAME="Mortal Kombat II (U) [!].gb"
set SCRIPTNAME="mortalkombatiigb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
