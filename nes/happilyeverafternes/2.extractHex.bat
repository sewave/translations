@echo off
set T_FILENAME="TR_Happily Ever After (USA) (Proto).nes"
set SCRIPTNAME="happilyeverafternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 22E10:80,21E30:50,21F50:90
pause
