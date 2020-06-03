@echo off
set T_FILENAME="TR_Return of the Ninja (U) [C][!].gbc"
set SCRIPTNAME="returnoftheninjagbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C6B0:20,13188:80,ECCC9:80,E96F0:20,F0DBB:20,E301E:20,E308E:10,E30EE:20,E31EE:10,E322E:40,EB9D4:60,E4902:30,E4962:30
pause
