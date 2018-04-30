@echo off
set T_FILENAME="TR_Megaman III (U) [!].gb"
set SCRIPTNAME="megamaniiigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 186BC:400,2B873:400,3E200:400,10DD3:20
pause
