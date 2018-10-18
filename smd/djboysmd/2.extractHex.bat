@echo off
set T_FILENAME="TR_DJ Boy (U) [!].bin"
set SCRIPTNAME="djboysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
