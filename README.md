# bootkon-h2-2024
Use Case Introduction


FraudFlix Technologies is a cutting-edge company focused on making financial transactions safer. 
Using machine learning, FraudFlix analyzes huge amounts of transaction data to spot and stop fraud as it happens. 
Using machine learning, FraudFlix also analyzes customer sentiment and transaction service quality.
Born from a “bootkon” (Bootcamp & Hackathon) challenge, the company uses a special dataset of European credit card transactions to train its algorithms. 
For data engineers and scientists, FraudFlix represents an exciting frontier where GCP Data & AI meets financial safety, showcasing practical applications of their skills to solve real-world problems.

About the Data

The datasets contain transactions made by credit cards in September 2013 by European cardholders. 
This dataset presents transactions that occurred in two days, where we have 492 frauds out of 284,807 transactions. 
It is highly unbalanced, the positive class (frauds) account for 0.172% of all transactions (subject to test in notebook).
It contains only numeric input variables which are the result of a PCA transformation.
Unfortunately, due to confidentiality issues, we cannot provide the original features and more background information about the data.


Features V1, V2, ... V28 are the principal components obtained with PCA, the only features which have not been transformed with PCA are ‘Time' , ‘Feedback’ and ‘Amount'.
Feature ‘Time' contains the seconds elapsed between each transaction and the first transaction in the dataset.
Feature ‘Amount' is the transaction Amount, this feature can be used for example-dependent cost-sensitive learning.
Feature ‘Class' is the response variable and it takes value 1 in case of fraud and 0 otherwise.
Feature ‘Feedback’ represents customer selection on service quality after submitting the transaction. This feature has been generated and added to the original dataset.
The dataset has been collected and analyzed during a research collaboration of Worldline and the Machine Learning Group ( http://mlg.ulb.ac.be) of ULB (Université Libre de Bruxelles) on big data mining and fraud detection.
More details on current and past projects on related topics are available on here  and here
