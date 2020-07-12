@echo off
set T_FILENAME="TR_Wolfenstein 3-D (USA).sfc"
set SCRIPTNAME="wolfenstein3dsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A6054:360,A7214:80,A7614:80,A72B4:20
pause
