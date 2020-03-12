@echo off
set T_FILENAME="TR_Choplifter III (U) [!].gg"
set SCRIPTNAME="choplifteriiigg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 183A0:20,18940:20
pause
