@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs. the World (USA).nes"
set SCRIPTNAME="simpsonsthebartvstheworldnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 40070:10,40040:10,40D30:100,43660:100,5EB70:200,49F80:80,4EA20:30,4EAB0:30,53DB0:60,552F0:30,58720:80,58F40:80,5C8E0:90,5DE60:30,5DF30:30,5F430:200,5FCB0:200,5E180:200,5E6E0:30,5E780:30,442D0:80,40080:10
pause
