@echo off 
set T_FILENAME="TR_Rastan Saga II (U) [!].gen"
set SCRIPTNAME="rastansaga2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5F802-5F8E1,5FB22:40
pause 
