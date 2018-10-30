About Practice Problem: Big Mart Sales III
Nothing ever becomes real till it is experienced.

-John Keats

 

While we don't know the context in which John Keats mentioned this, we are sure about its implication in data science. While you would have enjoyed and gained exposure to real world problems in this challenge, here is another opportunity to get your hand dirty with this practice problem powered by Analytics Vidhya.

 

This hackathon aims to provide a professional setup to showcase your skills and compete with their peers, learn new things and achieve a steep learning curve.

Data Science Resources
You can access the free course on the complete EDA (Exploratory Data Analysis) and modelling for this problem using R here.
Are you a complete beginner? If yes, you can check out our latest 'Intro to Data Science' course to get kickstart your journey in data science.
Rules
One person cannot participate with more than one user accounts.
You are free to use any tool and machine you have rightful access to.
You can use any programming language or statistical software.
You are free to use solution checker as many times as you want.
Registration Fee
Free
Problem Statement
The data scientists at BigMart have collected 2013 sales data for 1559 products across 10 stores in different cities. Also, certain attributes of each product and store have been defined. The aim is to build a predictive model and find out the sales of each product at a particular store.

Using this model, BigMart will try to understand the properties of products and stores which play a key role in increasing sales.

 

Please note that the data may have missing values as some stores might not report all the data due to technical glitches. Hence, it will be required to treat them accordingly.

Data
We have train (8523) and test (5681) data set, train data set has both input and output variable(s). You need to predict the sales for test data set.

 

Variable

Description

Item_Identifier

Unique product ID

Item_Weight

Weight of product

Item_Fat_Content

Whether the product is low fat or not

Item_Visibility

The % of total display area of all products in a store allocated to the particular product

Item_Type

The category to which the product belongs

Item_MRP

Maximum Retail Price (list price) of the product

Outlet_Identifier

Unique store ID

Outlet_Establishment_Year

The year in which store was established

Outlet_Size

The size of the store in terms of ground area covered

Outlet_Location_Type

The type of city in which the store is located

Outlet_Type

Whether the outlet is just a grocery store or some sort of supermarket

Item_Outlet_Sales

Sales of the product in the particulat store. This is the outcome variable to be predicted.

 

 

Evaluation Metric:

Your model performance will be evaluated on the basis of your prediction of the sales for the test data (test.csv), which contains similar data-points as train except for the sales to be predicted. Your submission needs to be in the format as shown in "SampleSubmission.csv".

We at our end, have the actual sales for the test dataset, against which your predictions will be evaluated. We will use the Root Mean Square Error value to judge your response