@echo off
set T_FILENAME="TR_Earnest Evans (U) [!].bin"
set SCRIPTNAME="earnestevanssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 29154:20,29BF4:80
pause
