@echo off
set T_FILENAME="TR_Two Crude Dudes (U) [!].gen"
set SCRIPTNAME="twocrudedudessmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1AA5A:120,1B3FA:80
pause
