@echo off
set T_FILENAME="TR_Paperboy II (U) [!].bin"
set SCRIPTNAME="paperboyiismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
