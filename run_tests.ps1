Write-Host ""
Write-Host "  Running ShopSphere Tests..." -ForegroundColor Cyan
Write-Host ""
mvn test
if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "  All tests passed!" -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "  Some tests failed. Check output above." -ForegroundColor Red
}
Read-Host "Press Enter to exit"
