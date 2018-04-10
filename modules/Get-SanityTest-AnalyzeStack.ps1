if (-Not (Test-Path -Path "*sanitytest.csv")) {
    return
}
Write-Host Running $(Split-Path $PSCommandPath -Leaf)
& logparser /q:on "select count(*) as ct,user from *.csv group by user order by ct"