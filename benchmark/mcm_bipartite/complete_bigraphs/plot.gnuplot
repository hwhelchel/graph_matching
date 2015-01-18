data_dir = "~/git/jaredbeck/graph_matching/benchmark/mcm_bipartite/complete_bigraphs"

set title "MCM in Complete Bigraph is O(e * v)"
set key left box
set term png size 800, 500
set output data_dir."/plot.png"

set linetype 1 pointtype 7 linecolor rgb "#FF0000"
set linetype 2 linewidth 3 linecolor rgb "#00B800"

set xlabel 'Number of Vertexes' tc lt 1
set ytics autofreq tc lt 1
set ylabel 'Time (s)' tc lt 1
set y2tics autofreq tc lt 2
set y2label 'Edges * Vertexes' tc lt 2

plot data_dir."/time.data" \
using 1:2 title "Time (s)" lt 1 axes x1y1, \
data_dir."/edges_times_vertexes.data" \
using 1:2 title "Edges * Vertexes" with lines lt 2 axes x1y2
