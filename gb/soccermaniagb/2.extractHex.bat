@echo off
set T_FILENAME="TR_Soccer Mania (JU) [!].gb"
set SCRIPTNAME="soccermaniagb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex ED50:100,E0C0:10
pause
