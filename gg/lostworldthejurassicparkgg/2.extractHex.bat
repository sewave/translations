@echo off
set T_FILENAME="TR_Lost World, The - Jurassic Park (U).gg"
set SCRIPTNAME="lostworldthejurassicparkgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E540:C0,9390C:C0,E6000:800,32520:C0,32FA0:C0,BDD4F:20,C0F80:20,C1220:20,DE800:200,241C9:400,3F960:A0
pause
