rm -fr permits_issued
mkdir permits_issued

for i in permits_issued_raw/*.xls;
 do
  filename=$(basename "$i" .xls);
  outext=".csv" 
  ssconvert $i permits_issued/$filename$outext
done

for i in permits_issued_raw/*.xlsx;
 do
  filename=$(basename "$i" .xlsx);
  outext=".csv" 
  ssconvert $i permits_issued/$filename$outext
done