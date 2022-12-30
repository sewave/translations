@echo off
set T_FILENAME="TR_Toys - Let the Toy Wars begin! (USA).sfc"
set SCRIPTNAME="toysletthetoywarsbeginsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 58822:50
pause
