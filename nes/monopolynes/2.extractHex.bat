@echo off
set T_FILENAME="TR_Monopoly (USA).nes"
set SCRIPTNAME="monopolynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2EFC0:30,26EF0:A0,2AD70:40,2ADE0:40,2AFA0:40,3A840:70,2D910:280,3AE30:200
pause
