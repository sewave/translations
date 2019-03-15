@echo off
set T_FILENAME="TR_Millipede (U) [!].nes"
set SCRIPTNAME="millipedenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4290:50,4EB0:60,4310:80,5BC0:10
pause
