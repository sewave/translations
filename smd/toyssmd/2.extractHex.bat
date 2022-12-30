@echo off
set T_FILENAME="TR_Toys (USA).md"
set SCRIPTNAME="toyssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 742F2:40,74372:20
pause
