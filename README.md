# Heart Failure

- __Project Purpose:__ 
 The data I am using is the heart failures clinical records from Davide Chicco, Giuseppe Jurman. BMC Medical Informatics and Decision Making (2020). To create visualizations of the variables to determine if there can be a prediction made or to discovery new fingding that could further in future research.
- __Tools used:__ 
I'll be using R in VSCode to complete this project and background of the body's production and definition of each variables
    - https://www.medicalnewstoday.com/articles/322726
    - https://www.mountsinai.org/health-library/tests/creatine-phosphokinase-test
    - https://www.kidney.org/content/heart-kidney-health-3-blood-tests-ask


- __Results:__ This is your conclusion.  Explain why your work matters.  How could others use it?  What are your next steps? Show some key findings.

![](documents/fig_1R.png)

- Shown in Figure 1, I created a scatter plot of Platelets and Creatine Phosphokinase (CPK) by creating a group for the ages ranging from 40-50, 50-64, and 64+ and seperating them by gender. 

- __Platelets__: Platelets in the blood (kiloplatelets/mL)
![](documents/platelets.png)

- __Creatinine Phosphokinase__: Level of the CPK enzyme in the blood (mcg/L)

- __Age_Group__: ages ranging from 40-50, 50-64, and 64+








![](documents/fig_2R.png)

- __Death Occured (Death_Event)__: If the patient deceased during the follow-up period
- __New_Time__: Follow-up period (days) with a total of 285 divided into the intervals of 5.




![](documents/fig_3R.png)

- __Age_Group__: ages ranging from 40-50, 50-64, and 64+
- __Diabetes__: If the patient has diabetes
- __Serum Sodium__: Level of serum sodium in the blood (mEq/L)
- __Serum Creatinine__: Level of serum creatinine in the blood (mg/dL)

## Folder structure

```
- readme.md
- scripts
---- readme.md (short description of each script)
---- data_munge.R
---- data_munge.py
---- eda.R
---- model.py
- data (less than 100 Mb)
---- readme.md (links to data larger than 100 Mb and data details.)
---- crimes.csv
---- visits.json
- documents
---- readme.md (notes while doing your project)
---- mlmethod.pdf
---- api_guide.pdf
```

## Writing about data science

[Thusan's article on how writing about data science is not easy](https://towardsdatascience.com/lets-admit-it-writing-about-data-science-is-not-easy-37a376777d36) could be helpful as you document your project and skills.

## Data sources

You don't need to make these projects complicated. These projects are built to show your work using the skills you have developed during the course. I would make sure that these are presentable in your Github space. You want to demonstrate your creativity. You could use the following links to find a new data set. 

- [FiveThirtyEight](https://github.com/fivethirtyeight/data)
- [TidyTuesday](https://github.com/rfordatascience/tidytuesday)
- [WorkoutWednesday](http://www.workout-wednesday.com/)
- [Kaggle](https://www.kaggle.com/datasets)
- [data.world](https://data.world/search?context=community&entryTypeLabel=dataset&q=free+data&type=all)

## Github pages

It would help if you took the time to publish your repo for easier viewing of the files.  Please follow the directions at [Github pages](https://pages.github.com/) to build your pages footprint on the internet.

## Questions

### Is the expectation of our personal projects similar to that of the class projects we are completing?

Yes & No. Here are a few points to highlight the comparison

1. Three different data sets is the main criteria. Hopefully different challenges to your skills and the data can be in the same area for all three if you desire.
2. You can choose the language. Please choose based on where you want employment.
3. We don't get much into the story telling with our class projects.  But, I would hope you tell a story that includes some graphs and analysis.
4. Think of these as sales pitches for future employment. Your personal projects should be in your own Github space.
