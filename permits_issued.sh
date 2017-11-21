for i in permits_issued_raw/*.xlsx;
 do
  filename=$(basename "$i" .xlsx);
  outext=".csv" 
  xlsx2csv $i $filename$outext
done