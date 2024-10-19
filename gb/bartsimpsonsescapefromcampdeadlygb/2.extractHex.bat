@echo off
set T_FILENAME="TR_Bart Simpson's Escape from Camp Deadly (USA, Europe).gb"
set SCRIPTNAME="bartsimpsonsescapefromcampdeadlygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10348:10,10378:10,10398:10,
pause
