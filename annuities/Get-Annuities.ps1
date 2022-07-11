$res = Invoke-WebRequest -Uri 'https://www.annuityadvantage.com/?productTableData=products_myga'
$annuities = $res.Content | sed -e "s/.*tableProducts\.products_myga = .*/[/" | sed -e "s/table.*push(//g" | sed -e "s/});/},/g" | sed -e '$a]' | ConvertFrom-Json
$annuities

