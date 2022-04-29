@echo off
set T_FILENAME="TR_Gatsby.nes"
set SCRIPTNAME="gatsbynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 23410:A0,27E10:200
pause
