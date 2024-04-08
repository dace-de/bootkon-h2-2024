# FraudFlix Technologies

## Use Case Introduction

FraudFlix Technologies stands at the forefront of enhancing the safety of financial transactions. At the heart of its innovation, the company harnesses the power of machine learning to sift through vast amounts of transaction data, enabling the detection and prevention of fraud in real-time. Furthermore, FraudFlix extends its machine learning capabilities to assess customer sentiment and the quality of transaction services. Originating from a unique combination of a Bootcamp and Hackathon, termed a “bootkon,” FraudFlix utilizes a specialized dataset of European credit card transactions as the foundation for training its sophisticated algorithms. This initiative offers data engineers and scientists a compelling arena where the integration of GCP Data & AI technologies and financial security converges, illustrating the tangible impacts of their expertise in addressing real-world challenges.

## About the Data

The dataset encompasses credit card transactions made by European cardholders in September 2013, encapsulating activities over two days. Within this period, 492 out of 284,807 transactions were identified as fraudulent, marking a significant imbalance as frauds represent merely 0.172% of the total transactions—a critical aspect for testing in analytical notebooks. The dataset primarily consists of numeric input variables derived from a PCA (Principal Component Analysis) transformation, preserving confidentiality by excluding original features and detailed background information.

### Key Features:

- **V1, V2, ... V28**: Principal components obtained through PCA, constituting the transformed features.
- **Time**: Measures the seconds elapsed between consecutive transactions from the first transaction in the dataset.
- **Amount**: Indicates the transaction amount, which can be instrumental for example-dependent cost-sensitive learning.
- **Class**: Serves as the response variable, where a value of 1 denotes fraud and 0 indicates a legitimate transaction.
- **Feedback**: Reflects customer feedback on service quality post-transaction, an attribute specially added to the original dataset.

This dataset was curated and analyzed through a research collaboration between Worldline and the Machine Learning Group ([MLG](http://mlg.ulb.ac.be)) of ULB (Université Libre de Bruxelles), focusing on big data mining and fraud detection. Further insights into ongoing and prior projects related to these domains can be found [here](http://mlg.ulb.ac.be).
