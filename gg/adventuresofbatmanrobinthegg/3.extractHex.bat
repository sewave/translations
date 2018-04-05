@echo off
set T_FILENAME="TR_Adventures of Batman & Robin, The (U) [!].gg"
set SCRIPTNAME="adventuresofbatmanrobinthegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 72530-73530,4DCE0:20
pause
