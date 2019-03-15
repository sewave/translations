@echo off
set T_FILENAME="TR_Excitebike (JU) [!].nes"
set SCRIPTNAME="excitebikenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5F40:50,5240:30,51B0:10,5940:30,5210:10,5B90:10
pause
