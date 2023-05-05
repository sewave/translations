@echo off
set T_FILENAME="TR_Sabrina - The Animated Series - Zapped! (USA, Europe).gbc"
set SCRIPTNAME="sabrinatheanimatedserieszappedgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1C1E9F:A0,1C2076:A0,1C224D:A0,1C2424:A0,1C25FB:A0,1C27D2:A0,1C29A9:A0,1C2B80:A0,1C2D57:A0,1C2F2E:A0,1C3105:A0,1C32DC:A0,1C34B3:A0,1C368A:A0,1C3861:A0,1C3A38:A0,1C3B7F:80
pause
