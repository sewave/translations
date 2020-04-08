@echo off
set T_FILENAME="TR_Addams Family, The (U) [!].gb"
set SCRIPTNAME="addamsfamilythegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F8E2:10,1F812:10
pause
