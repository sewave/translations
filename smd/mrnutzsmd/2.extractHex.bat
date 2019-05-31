@echo off
set T_FILENAME="TR_Mr. Nutz (E) [!].bin"
set SCRIPTNAME="mrnutzsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex AC02:800
pause
