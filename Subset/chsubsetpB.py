
from subsetpB import lnfa
import numpy as np
import matplotlib.pyplot as plt
from pylab import *
import igraph

m=2; mu=0; s=2.; nodes=1000000;

n1=1000;
ssize=1000;
perc=0.01;
g, cn, ft = lnfa(mu, s, m, perc, nodes)

def plot_ccdf(data, ax):
   sorted_vals = np.sort(np.unique(data))
   ccdf = np.zeros(len(sorted_vals))
   n = float(len(data))
   for i, val in enumerate(sorted_vals):
      ccdf[i] = np.sum(data >= val)/n
   ax.loglog(sorted_vals, ccdf, "b.")


plot_ccdf(cn,plt)


