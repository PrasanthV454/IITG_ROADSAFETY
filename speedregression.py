# -*- coding: utf-8 -*-
"""
Created on Sat Mar 30 19:09:15 2019

@author: DELL
"""

import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# Importing the dataset
dataset = pd.read_csv('low spees a1.csv')
X = dataset.iloc[:,2:3].values
y = dataset.iloc[:, 4].values
z = dataset.iloc[:,0:1].values
h = np.array(X)
k = np.array(y)
multi = []

for value in range(0,2597,1):
    multi.append(k[value]*h[value])
    
sum = 0
    
for val in multi:
    sum = sum + val
print(sum)
    

#q=np.array(z)
#f=np.array(k)



#from sklearn.linear_model import LinearRegression
#lin_reg = LinearRegression()
#lin_reg.fit(q, f)

#from sklearn.preprocessing import PolynomialFeatures
#poly_reg = PolynomialFeatures(degree = 2)
#Z_poly = poly_reg.fit_transform(q)
#poly_reg.fit(Z_poly, f)
#lin_reg_2 = LinearRegression()
#lin_reg_2.fit(Z_poly, f)

# Visualising the Linear Regression results
#plt.scatter(q, f, color = 'red')
#plt.plot(q, lin_reg.predict(q), color = 'blue')
#plt.title('Regression based speed')
#plt.xlabel('time')
#plt.ylabel('Speed')
#plt.show()

#plt.scatter(q, f, color = 'red')
#plt.plot(q, lin_reg_2.predict(poly_reg.fit_transform(q)), color = 'blue')
#plt.title('Regression based analysis')
#plt.xlabel('time')
#plt.ylabel('Speed')
#plt.show()


#lin_reg_2.predict(poly_reg.fit_transform(45.00))

    