@echo off
rem Opens the Canal House Roof Planner with the full 3D scan.
rem A tiny local web server is needed because browsers block loading the scan file from disk.
cd /d "%~dp0"
start "Roof planner server (close this window to stop)" py -m http.server 8765 --bind 127.0.0.1
timeout /t 2 /nobreak >nul
start "" http://127.0.0.1:8765/index.html
