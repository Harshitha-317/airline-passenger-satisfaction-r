✈️ Airline Passenger Satisfaction – Classification Using R

This project analyzes airline passenger satisfaction using statistical modeling and machine learning techniques in R.
The goal is to identify the factors that influence passenger satisfaction and build predictive models such as Decision Trees and Logistic Regression.

This is a complete end-to-end data analysis project including:
Data preparation
Exploratory data analysis
Model building (Classification Tree & Logistic Regression)
Model evaluation
Visualizations
Presentation

📁 Project Structure
Airline_Passenger_Satisfaction_Project/
│
├── code/
│   └── airline_satisfaction.R
│
├── data/
│   └── train.csv   
│
├── presentation/
│   └── Airline_Passenger_Satisfaction.pdf
│
├── docs/
│   └── Business_with_R_project.pdf
│
└── README.md


🔧 Programming Language
R

🧪 Models Built
1️⃣ Decision Tree Classification (rpart)
Split: 80% train / 20% test
Built using rpart(satisfaction ~ ., method = "class")
Plotted using rpart.plot()
Evaluated with:
Confusion matrix
Accuracy
Sensitivity (TPR)
Specificity (TNR)

2️⃣ Logistic Regression (GLM – binomial)
Full model using all predictors
Predictions classified using threshold = 0.5
Metrics computed:
Accuracy
True Positive Rate
True Negative Rate
False Positive Rate
False Negative Rate

📈 Exploratory Data Analysis (EDA)
The script includes several visualizations:
Boxplots (Age, Flight Distance, Delays)
Bar plots (Customer Type, Class, Satisfaction)
Descriptive statistics using psych::describe()

These help understand:
Feature distributions
Outliers
Relationships between variables
Imbalance in satisfaction categories

🧠 Key Insights
The project identifies:
Which customer types are more likely to be satisfied
How delays and flight distance affect satisfaction
Differences in satisfaction across flight classes
Important predictors found by the decision tree
Predictive performance of tree vs logistic regression

🚀 Future Improvements
Add Random Forest & XGBoost models
Perform hyperparameter tuning
Add cross-validation
Feature engineering
Combine multiple Kaggle datasets
Add interactive dashboard (Shiny)

🤝 Author
Harshitha Giriraju
Graduate Student, Business Analytics & AI
R Data Analysis Portfolio Project
