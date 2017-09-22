# 1. source the required functions and packages
source('https://raw.githubusercontent.com/saezlab/pypath/master/r_import/r_import.r')

# 2. import Omnipath as igraph
op <- omnipath_graph()
summary(op)

# 3. import only directed interactions
op <- omnipath_graph(directed = TRUE)
is.directed(op)
summary(op) # ONLY FOR SOLUTION

# 4. explore edges and their attributes
E(op)[15710]
E(op)[15710]$sources
E(op)[15710]$references

# 5. explore vertices and their attributes
c(V(op)['P01579']$label, V(op)['P15260']$label)

# 6. what is the target node of the interaction 10594
E(op)[10594]  # ONLY FOR SOLUTION
V(op)['P42224']$label  # ONLY FOR SOLUTION

# 7. what is the sign of the interaction
E(op)[10594]$is_stimulation  # ONLY FOR SOLUTION
E(op)[10594]$is_inhibition  # ONLY FOR SOLUTION

# 8. Extract the subgraph defined by the following nodes nodes:
# "IFNG", "IFNGR1", "JAK1",  "JAK2", "STAT1", "EGF", "EGFR", "PIK3CA", "PTEN", "AKT1", "NFKB1"
op_subgraph <- induced_subgraph(op, V(op)[label %in% c("IFNG", "IFNGR1", "JAK1",  "JAK2", "STAT1",
                                              "EGF", "EGFR", "PIK3CA", "PTEN", "AKT1", "NFKB1")]) # ONLY FOR SOLUTION
# you can plot the subgraph using the plot function, e.g.:
plot(op_subgraph)
plot(op_subgraph, layout=layout_as_tree(op_subgraph, root=c(9,11)))

# 9. Find all shortest paths between AKT1 ad NFKB1
# Hint: if sp_AKT1_NFKB1 is the output of function all_shortest_paths, the shortest paths can be extracted using sp_AKT1_NFKB1$res
sp_AKT1_NFKB1 <- all_shortest_paths(op, from=V(op)[label=="AKT1"], to=V(op)[label=="NFKB1"])  # ONLY FOR SOLUTION
sp_AKT1_NFKB1$res # ONLY FOR SOLUTION
op_subgraph_2<-induced_subgraph(op, unlist(sp_AKT1_NFKB1$res))  # ONLY FOR SOLUTION
plot(op_subgraph_2)  # ONLY FOR SOLUTION


