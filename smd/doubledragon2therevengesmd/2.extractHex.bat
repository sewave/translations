@echo off
set T_FILENAME="TR_Double Dragon 2 - The Revenge (J) [!].gen"
set SCRIPTNAME="doubledragon2therevengesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 52200:800,6C280:100
pause
