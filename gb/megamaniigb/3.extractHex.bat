@echo off
set T_FILENAME="TR_Megaman II (U) [!].gb"
set SCRIPTNAME="megamaniigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2BAE0:20
pause
