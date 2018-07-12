@echo off 
set T_FILENAME="TR_True Lies (W) [!].gen"
set SCRIPTNAME="trueliessmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1AA330:120
pause 
