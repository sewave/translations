@echo off
set T_FILENAME="TR_Yie Ar Kung-Fu (PD) [!].gen"
set SCRIPTNAME="yiearkungfusmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
