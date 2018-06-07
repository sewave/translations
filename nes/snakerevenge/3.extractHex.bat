@echo off
set T_FILENAME="TR_Snake's Revenge (U) [!].nes"
set SCRIPTNAME="snakerevenge"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3F310:80,3E310:80,2E310:80,2A550:80,29630:80,20010:600,20510:40,20F60:30,28280:80,28FA0:60
pause
