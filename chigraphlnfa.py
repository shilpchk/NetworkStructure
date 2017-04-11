
import igraph
from lnfa import lognormdd
import numpy as np
import matplotlib.pyplot as plt
from pylab import *
import pickle
import random as r
import math
from binsearch import binsearch



m=2; mu=0; sigma=10.; nodes=1000;  

cn = [1,1]; ft=[]; fit =[];
g = [[1],[0]];
graph = igraph.Graph()
graph.add_vertices(2)
graph.add_edges([(0,1)])
ft.append(r.lognormvariate(mu,sigma)); Fit = ft[0]; fit.append(Fit)
ft.append(r.lognormvariate(mu,sigma)); Fit += ft[1]; fit.append(Fit)

for j in range(2,nodes):
   g.append([]); cn.append(m);
   graph.add_vertices(1)
   for i in range(m):
      prob=r.uniform(0,Fit); n = binsearch(prob, fit, j);
      cn[n] += 1;
      g[n].append(j);
      g[j].append(n);
      graph.add_edges([(n,j)])
   ft.append(r.lognormvariate(mu,sigma)); Fit += ft[j]; fit.append(Fit)

igraph.plot(graph, layout="fr", vertex_label=None, vertex_size=4, edge_width=.2)



igraph.plot(graph, layout="kk", vertex_label=None, vertex_size=5, edge_width=.3)
igraph.plot(graph, layout="fr", vertex_label=None, vertex_size=5, edge_width=.3)



