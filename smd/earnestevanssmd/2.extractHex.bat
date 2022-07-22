@echo off
set T_FILENAME="TR_Earnest Evans (USA).md"
set SCRIPTNAME="earnestevanssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 29134:140,29BF4:80,FE600:200,FE800:300
pause
