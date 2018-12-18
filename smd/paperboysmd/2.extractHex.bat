@echo off
set T_FILENAME="TR_Paperboy (UE) [!].bin"
set SCRIPTNAME="paperboysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3CE40:200,50980:160
pause
