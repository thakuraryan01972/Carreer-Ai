@echo off
title CareerAI One-Click Launcher
echo ========================================================
echo         Starting CareerAI Full-Stack Application
echo ========================================================
echo.

cd /d "%~dp0"

echo [1/3] Starting FastAPI Backend Server (Port 8000)...
start "CareerAI Backend" cmd /k "python -m uvicorn backend.main:app --host 127.0.0.1 --port 8000"

ping -n 4 127.0.0.1 >nul

echo [2/3] Starting React Frontend Server (Port 5173)...
cd /d "%~dp0frontend"
start "CareerAI Frontend" cmd /k "npm.cmd run dev"

ping -n 4 127.0.0.1 >nul

echo [3/3] Opening CareerAI in Web Browser...
start http://localhost:5173

echo.
echo ========================================================
echo  CareerAI is now running live at http://localhost:5173 !
echo  (API Documentation available at http://127.0.0.1:8000/docs)
echo ========================================================
pause
