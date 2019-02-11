@echo off
set T_FILENAME="TR_Adventures of Lolo (U) [!].nes"
set SCRIPTNAME="adventuresoflolones"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex CBD0:10,CEE0:10,BAB0:20,BBB0:20,BCB0:10,BDB0:10,BEB0:10,BFB0:10,9720:10
pause
