@echo off
set T_FILENAME="TR_Puggsy (U) [!].bin"
set SCRIPTNAME="puggsysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
