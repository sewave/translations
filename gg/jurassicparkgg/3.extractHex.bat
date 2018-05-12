@echo off
set T_FILENAME="TR_Jurassic Park (UE) [!].gg"
set SCRIPTNAME="jurassicparkgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 807A:80,84AC:300,820A:60,537AD:300
pause
