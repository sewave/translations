@echo off
set T_FILENAME="TR_Addams Family, The (UE) [!].gen"
set SCRIPTNAME="addamsfamilythesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
