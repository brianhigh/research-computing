#!/bin/bash

# Find differences between CSV files using diff and diff3 (GNU diffutils).
# Demonstrate use of arrays, for-loops, exit status, and boolean operators.
# See:
#    https://www.gnu.org/software/diffutils/
#    http://tldp.org/LDP/abs/html/arrays.html
#    http://tldp.org/LDP/abs/html/exit-status.html
#    http://www.tldp.org/LDP/abs/html/ops.html

# UCI iris data set versions to compare. Store as an array.
v[1]="iris.data"
v[2]="bezdekIris.data"

# Get two versions of the iris data set from the UCI website.
url='https://archive.ics.uci.edu/ml/machine-learning-databases/iris'
for i in 1 2; do \
    curl -s "$url/${v[$i]}" | sed 's/Iris-//g' > "iris_data_${i}.csv"
done

# Compare the UCI versions with diff. If no differences, say so.
echo "---------------------------------------------------------------"
echo "Compare the UCI versions (${v[1]} and ${v[2]}):"
diff iris_data_{1,2}.csv && echo "** No differences! **"

# Get the version of the iris data set that comes with R.
rcode="write.table(format(iris, digits=2), 'iris_data_r.csv', 
           sep=',', col.names=F, row.names=F, quote=F)"
echo "$rcode" | Rscript -

# Add a newline character to end of file to match the others.
echo "" >> iris_data_r.csv 

# Compare each UCI version with the R version. If no differences, say so.
for i in 1 2; do \
    echo "---------------------------------------------------------------"
    echo "Compare one UCI version (${v[$i]}) and the R version:"
    diff iris_data_{$i,r}.csv && echo "** No differences! **"
done

# Compare the differences in all three files at once.
echo "---------------------------------------------------------------"
echo "Compare all three (1=${v[1]}, 2=${v[2]} and 3=R):"
diff3 iris_data_{1,2,r}.csv
