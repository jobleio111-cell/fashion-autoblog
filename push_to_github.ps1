# GitHub Push Script - Ek baar chalao
# PowerShell script

$ErrorActionPreference = "Stop"

# Git PATH refresh karo (naya install hua hai)
$env:PATH = "C:\Program Files\Git\cmd;" + $env:PATH

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "   Auto Blog System - GitHub Push Script" -ForegroundColor Cyan  
Write-Host "==================================================" -ForegroundColor Cyan

Set-Location "d:\auto bloging"

# GitHub details
$GITHUB_USER = "jobleio111-cell"
$GITHUB_REPO = "moneymakers"
$GITHUB_TOKEN = "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"
$REMOTE_URL = "https://${GITHUB_TOKEN}@github.com/${GITHUB_USER}/${GITHUB_REPO}.git"

Write-Host ""
Write-Host "Step 1: Git initialize kar raha hoon..." -ForegroundColor Yellow
git init
git config user.email "autoblog@moneymakers.com"
git config user.name "MoneyMakers Bot"
Write-Host "OK" -ForegroundColor Green

Write-Host ""
Write-Host "Step 2: Files add kar raha hoon..." -ForegroundColor Yellow
git add .
git status
Write-Host "OK" -ForegroundColor Green

Write-Host ""
Write-Host "Step 3: Commit kar raha hoon..." -ForegroundColor Yellow
git commit -m "Initial setup: Auto Blogging System - Finance & Money Making Niche"
Write-Host "OK" -ForegroundColor Green

Write-Host ""
Write-Host "Step 4: Remote set kar raha hoon..." -ForegroundColor Yellow
git branch -M main
# Agar remote pehle se hai toh remove karo
git remote remove origin 2>$null
git remote add origin $REMOTE_URL
Write-Host "OK" -ForegroundColor Green

Write-Host ""
Write-Host "Step 5: GitHub par push kar raha hoon..." -ForegroundColor Yellow
git push -u origin main --force
Write-Host "OK" -ForegroundColor Green

Write-Host ""
Write-Host "==================================================" -ForegroundColor Green
Write-Host "SUCCESS! Code GitHub par push ho gaya!" -ForegroundColor Green
Write-Host "Repo: https://github.com/$GITHUB_USER/$GITHUB_REPO" -ForegroundColor Green
Write-Host "Actions: https://github.com/$GITHUB_USER/$GITHUB_REPO/actions" -ForegroundColor Green
Write-Host "==================================================" -ForegroundColor Green
Write-Host ""
Write-Host "Ab GitHub Secrets add karo - walkthrough.md dekho!" -ForegroundColor Cyan
