# -*- coding: utf-8 -*-
"""
Created on Sat Mar 30 18:18:29 2019

@author: DELL
"""

import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# Importing the dataset

dataset = pd.read_csv('acccase.csv')
X = dataset.iloc[:,0:1].values
y = dataset.iloc[:, 5].values

plt.plot(X, y, color = 'blue')
plt.title('Estimation of Accidents')
plt.xlabel('Time')
plt.ylabel('Total Gravitational Force')
plt.show()

h=np.array(y)
sim=0
m=[]
for kot in range(0,4300,50):
    for num in range(kot,kot+50,1):
        sim = sim + h[num]
    sim=sim/50
    m.append(sim)
plt.plot(m)