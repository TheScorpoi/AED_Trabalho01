#! /bin/bash
# script bash onde guardamos em 2 ficheiros .txt os tempos de execução, e os profits de cada task

cd ../098495/

grep "Solution time =" *.txt | sed -e 's/_0.txt:Solution time =//' -e 's/_/ /' >../Resultados/temposExecucao98495.txt
grep "Best Profit =" *.txt | sed -e 's/_0.txt:Best Profit =//' -e 's/_/ /' >../Resultados/totalsProfit98495.txt


