@echo off
set T_FILENAME="TR_Time Zone (Japan) [T+ENG].nes"
set SCRIPTNAME="timezonenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3FB50:50,3FE50:20,3FEB0:10,3FF30:50,3FFA0:10,347D0:10,3DBE0:50,3DCE0:50,3DDE0:50,3E080:10,3E180:10,3E100:20,3E200:20,3E250:10,3E350:10,3E3E0:20,3DFF0:10,3F3B0:20,3F4B0:20,3F5B0:20,33840:30,33940:30,33EC0:20,3F610:40,3F710:20
pause
