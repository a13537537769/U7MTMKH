@echo off
rem ============================================================
rem  Delta Force - Game Environment Clean & Optimize
rem  Please run as Administrator (right-click -> Run as administrator)
rem  Companion script: delta_clean.ps1 (same folder)
rem ============================================================
title DeltaForce Game Optimizer
net session >nul 2>&1
if %errorlevel% neq 0 (
  echo [ERROR] Please right-click this file and select "Run as administrator".
  echo.
  pause
  exit /b 1
)
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0delta_clean.ps1" %*
if %errorlevel% neq 0 (
  echo.
  echo [ERROR] Optimization script failed. See run_log.txt for details.
)
echo.
if not "%1"=="/auto" pause
