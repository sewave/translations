@echo off
set T_FILENAME="TR_Flying Dragon - The Secret Scroll (U) [!].nes"
set SCRIPTNAME="flyingdragonthesecretscrollnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7F10:80,80B0:60,8360:30,A310:80,B770:10,9770:10
pause
