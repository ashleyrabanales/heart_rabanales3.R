# Cardiovascular Diseases: Heart Failure

- __Project Purpose:__ 
 The data I am using is the heart failures clinical records from Davide Chicco, Giuseppe Jurman. BMC Medical Informatics and Decision Making (2020). Cardiovascular diseases (CVDs) are the number 1 cause of death globally, taking an estimated 17.9 million lives each year, which accounts for 31% of all deaths worlwide.
Heart failure is a common event caused by CVDs and this dataset contains 12 features that can be used to predict mortality by heart failure.
Most cardiovascular diseases can be prevented by addressing behavioural risk factors such as tobacco use, unhealthy diet and obesity, physical inactivity and harmful use of alcohol using population-wide strategies. People with cardiovascular disease or who are at high cardiovascular risk (due to the presence of one or more risk factors such as hypertension, diabetes, hyperlipidaemia or already established disease) need early detection and management wherein a machine learning model can be of great help.
To create visualizations of the variables to determine if there can be a prediction made or any influences in the the type of variables given. To discover new findings that could be used for further research.

- __Tools used:__ 
I'll be using R in VSCode to complete this project and background of the body's production and definition of each variables
    - https://www.medicalnewstoday.com/articles/322726
    - https://www.mountsinai.org/health-library/tests/creatine-phosphokinase-test
    - https://www.kidney.org/content/heart-kidney-health-3-blood-tests-ask
    - https://care.diabetesjournals.org/content/32/3/424#:~:text=Lower%20serum%20creatinine%20was%20associated,0.71%20and%200.80%20mg%2Fdl.


- __Results:__ Those who have Diabetes are at higher risks in developing kidney and heart failure. There is a higher risk in females to advance bloot clots than males. The first few days of the following up period there are more deaths occurred and after 114 days they tend to drop significally. After creating a few vizualisation and seeing the data points react and research. I can say diabetes is one of the main factor that could cause mulitple disease and heart failure due to the relationship of sodium, CPK, blood pressure and anemia. Most of the research I did, showed many results about diabetes are more likely to develop heart failure. In investigating further about the variabales meantion and diving deeper in the research of the variables purpose toward the body. 

![](documents/fig_1R.png)

- Shown in Figure 1, I created a scatter plot of Platelets and Creatine Phosphokinase (CPK) by creating a group for the ages ranging from 40-50, 50-64, and 64+ and seperating them by gender. I have also display the chart level range to each variable used. As we can see females tend to have a higher platelet level (=> 450,000) than males which can cause high risk of blood clotes and CPK is also high stating as been injury or stress to muscle tissue, the heart, or the brain. Males have a significant higher CPK indicating there has been injury or stress to muscle tissue, the heart, or the brain and slightly lower platelets counts but still at risk in developing blood clots. Common ages are between 40-50 and 50-65 and we have a few outliers in each group.
 
- __Platelets__: Platelets in the blood (kiloplatelets/mL)

![](documents/platelets.png)

- __Creatinine Phosphokinase__: Level of the CPK enzyme in the blood (mcg/L)
    - When the total CPK level is very high, it most often means there has been injury or stress to muscle tissue, the heart, or the brain.
    - Total CPK normal values:
    10 to 120 micrograms per liter (mcg/L)
    - https://www.mountsinai.org/health-library/tests/creatine-phosphokinase-test

- __Age_Group__: ages ranging from 40-50, 50-64, and 64+

![](documents/fig_2R.png)
Presented in Figure 2, I created a bar chart by the Follow up periods by patient deceased and gender. I created a new variable for time known as new time with a total of 285 divided into the intervals of 5. AS we can see the days between 4-57 days and  58-114 days have the most occured deaths by followed up periods. In females for 229+ days have no occured death and each day is increased the less occured death is seen for both genders.  

- __Death Occured (Death_Event)__: If the patient deceased during the follow-up period

- __New_Time__: Follow-up period (days) with a total of 285 divided into the intervals of 5.


![](documents/fig_3R.png)

As illustrated in Figure 3, the shadow area of each age group is representing the 95% confidence interval around it. The plot has a smooth function added to help show the relationship between these two variables Serum Sodium and Serum Creatinine. People who answered no in having diabetes  have sodium ranging from 127-158mEq/L. Which is a normal rangefrom 135-145 with a few who are low and high. For CPK in this group, there are few who are at risk in showing early signs of kidney malnfunction. In the group who answered Yes to Diabetes are more of risk for their serum sodium and creatine are associated with diabets as stated from healthgrades since there is a bigger risk in kidney failure. The line graph extends to the lower and higher levels and the points to be close to normal to higher ranges for serum sodium and CPK. There are outliers that could be skewing the data. 

- https://www.healthgrades.com/right-care/diabetes/what-people-with-diabetes-should-know-about-creatinine

- __Age_Group__: ages ranging from 40-50, 50-64, and 64+

- __Diabetes__: If the patient has diabetes

- __Serum Sodium__: Level of serum sodium in the blood (mEq/L)
    - A normal range is 135-145. If your blood sodium is too low, it could indicate hyponatremia, which may mean that you are retaining water or that you are dehydrated. This can be a sign that your kidneys, heart, or both of these critical organs are not in good shape. If your blood sodium is too high, you might be dehydrated. 
    - https://www.kidney.org/content/heart-kidney-health-3-blood-tests-ask

- __Serum Creatinine__: Level of serum creatinine in the blood (mg/dL)
    - Levels greater than 1.2 for women and 1.4 for men may be an early sign that the kidneys are not working properly.
    - Kidney diseased can have an increase of heart and blood diseases. 
    - https://www.kidney.org/content/heart-kidney-health-3-blood-tests-ask


## Writing about data science

[Thusan's article on how writing about data science is not easy](https://towardsdatascience.com/lets-admit-it-writing-about-data-science-is-not-easy-37a376777d36) could be helpful as you document your project and skills.

