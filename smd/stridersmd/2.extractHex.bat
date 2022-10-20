@echo off
set T_FILENAME="TR_Strider (USA, Europe).md"
set SCRIPTNAME="stridersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
