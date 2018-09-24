@echo off
set T_FILENAME="TR_Simpsons, The - Escape from Camp Deadly (U) [!].gb"
set SCRIPTNAME="simpsonstheescapefromcampdeadlygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10160:30
pause
