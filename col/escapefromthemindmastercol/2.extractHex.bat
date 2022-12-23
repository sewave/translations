@echo off
set T_FILENAME="TR_Escape From The Mind Master (1983) (Starpath) (Prototype).col"
set SCRIPTNAME="escapefromthemindmastercol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
