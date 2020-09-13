@echo off
set T_FILENAME="TR_Crue Ball - Heavy Metal Pinball (USA, Europe).md"
set SCRIPTNAME="crueballheavymetalpinballsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 241A4:C00,8D14:20
pause
