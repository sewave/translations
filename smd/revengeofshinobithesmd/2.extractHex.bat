@echo off
set T_FILENAME="TR_Revenge of Shinobi, The (USA, Europe).md"
set SCRIPTNAME="revengeofshinobithesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
