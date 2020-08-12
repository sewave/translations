@echo off
set T_FILENAME="TR_Hebereke's Popoon (Europe).sfc"
set SCRIPTNAME="heberekespopoonsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
