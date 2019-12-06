@echo off
set T_FILENAME="TR_Hyper Lode Runner (JU) [!].gb"
set SCRIPTNAME="hyperloderunnergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 703A:20,73CA:20,771A:10,786A:10
pause
