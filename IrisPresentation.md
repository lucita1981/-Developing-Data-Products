Iris Clustering with Two Variables
========================================================
author: Lucia Carolina Martinez
date: 13 de Junio de 2018 
autosize: true

Overview
========================================================

As part of the Developing Data Products course, I built 
and application that plots two variables from Iris dataset 
and shows the cluster centres.

The shiny app is available in the following link:

https://lucita1981.shinyapps.io/myapp/

and the source codes (ui.R & server.R) are available in the next link:

https://github.com/lucita1981/-Developing-Data-Products/tree/gh-pages

About Iris Dataset
========================================================
The dataset contains a set of 150 records under 5 attributes - Petal Length, Petal Width, Sepal Length, Sepal width and Species. This Dataset became a typical test case for many statistical classification.  Below is a summary of the dataset:


```r
summary(iris)
```

```
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
 Median :5.800   Median :3.000   Median :4.350   Median :1.300  
 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
       Species  
 setosa    :50  
 versicolor:50  
 virginica :50  
                
                
                
```

App Description 
========================================================
The app is simple to use, only, select two variables from the list.
You can select among the iris variables:

1. Sepal Length
2. Sepal Width
3. Petal length
4. Petal Width

Then, you can see the plot for these variables using species as colors
and, the * symbols show the cluster centres. 

The same instructive can be find in the Instructive tab of the app.

Server Calculation
========================================================
This is an example of what the server.R calculates when we select the two variables and using the kmeans method tries to identify the centers of each of the clusters. Three clusters have always been defined by the number of species. 
Finally, the server plots the two selected variables and the cluster centres.


```r
irisexample <- c(iris$Sepal.Length, iris$Sepal.Width)
clusters <- kmeans(irisexample, 3)
clusters$centers
```

```
      [,1]
1 3.040541
2 5.176829
3 6.580000
```
