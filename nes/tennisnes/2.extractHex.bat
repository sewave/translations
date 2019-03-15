@echo off
set T_FILENAME="TR_Tennis (JU) [!].nes"
set SCRIPTNAME="tennisnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5BA0:200,5100:30,5210:30
pause
