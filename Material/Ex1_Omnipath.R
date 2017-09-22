# 1. source the required functions and packages
source('https://raw.githubusercontent.com/saezlab/pypath/master/r_import/r_import.r')

# 2. import Omnipath as igraph
op <- omnipath_graph()
summary(op)

# 3. import only directed interactions
op <- omnipath_graph(directed = TRUE)
is.directed(op)

# 4. explore edges and their attributes
E(op)[15710]
E(op)[15710]$sources
E(op)[15710]$references

# 5. explore vertices and their attributes
c(V(op)['P01579']$label, V(op)['P15260']$label)

# 6. what is the target node of the interaction 10594

# 7. what is the sign of the interaction

# 8. Extract the subgraph defined by the following nodes nodes:
# "IFNG", "IFNGR1", "JAK1",  "JAK2", "STAT1", "EGF", "EGFR", "PIK3CA", "PTEN", "AKT1", "NFKB1"
# you can plot the subgraph using the plot function, e.g.:
# plot(op_subgraph)
# plot(op_subgraph, layout=layout_as_tree(op_subgraph, root=c(9,11)))

# 9. Find all shortest paths between AKT1 ad NFKB1
# Hint: if sp_AKT1_NFKB1 is the output of function all_shortest_paths, the shortest paths can be extracted using sp_AKT1_NFKB1$res


