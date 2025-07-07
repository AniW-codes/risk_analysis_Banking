# Understanding Risk Analysis in Banks using Excel, SQL, Python and PowerBI.


**About Dataset** – 
This dataset basically contains information about bank details ,various client details which consists of multiple tables which are interlinked with each other through keys like primary key and foreign key.
The various tables are Banking Relationship, Client-Banking, Gender, Investment Advisor and Period.

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

![Overview](https://github.com/AniW-codes/risk_analysis_Banking/blob/main/1.jpg)


![ETL Process](https://github.com/AniW-codes/risk_analysis_Banking/blob/main/2.jpg)

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


**Data Cleaning** –
- Creating bins for the Estimated Income < 100000 as low and <300000 as Mid with the column named as Income_Band in Clients-Banking table.
- Creating a new column Year_of_Joining in client-banking table which tells about the year of joining of the client to a particular bank.

**Calculated Functions** - 
1. Total Deposit = SUM('public banking'[foreign_currency_account])+
                SUM('public banking'[checking_accounts])+
                 SUM('public banking'[bank_deposits])+
                 SUM('public banking'[saving_accounts])

2. Total Loan = SUM('public banking'[bank_loans])+
              SUM('public banking'[business_lending])+
             SUM('public banking'[credit_card_balance])   

--------------------------------------------------------------------


**KPI’s**: 

![KPI - 1](https://github.com/AniW-codes/risk_analysis_Banking/blob/main/B1.png)


In which followings KPIS are present :

1. Total Clients : Total Clients KPI represents total number of clients in banking.


**Total Clients = DISTINCTCOUNT('Clients - Banking'[Client ID] )**



2. Total Loan : Total Loan represents the amount of loan lent by various banks within the database.


**Total Loan = SUM('public banking'[bank_loans])+
              SUM('public banking'[business_lending])+
             SUM('public banking'[credit_card_balance])**



3. Total Deposit: Total Deposit gives you information about the amount deposited by particular investors in bank

**Total Deposit = SUM('public banking'[foreign_currency_account])+
                SUM('public banking'[checking_accounts])+
                 SUM('public banking'[bank_deposits])+
                 SUM('public banking'[saving_accounts])**


4. Business Lending : Business lending gives you information about the loan amount given to small business.

**Business Lending = SUM('Clients - Banking'[Business Lending] )**



![KPI - Loan Analysis](https://github.com/AniW-codes/risk_analysis_Banking/blob/main/B2.png)


5. Bank Loan : Bank Loan gives you information what is the loan amount of loan to be repaid by the **client to bank**.

**Bank Loan = SUM('Clients - Banking'[Bank Loans] )**



6. Bank Deposit : Bank deposit is the money put in the bank.

**Bank Deposit = SUM('Clients - Banking'[Bank Deposits] )**



7. Checking Account Amount : Checking account amount  is nothing but which offers easy access to your money for daily transactional needs.


**Checking Accounts = SUM('Clients - Banking'[Checking Accounts] )**



8. Total CC Amount : Total CC Amount is a short-term source of financing for a company by a bank.


**Total CC Amount = SUM('Clients - Banking'[Amount of Credit Cards] )**

![KPI - Deposit Analysis](https://github.com/AniW-codes/risk_analysis_Banking/blob/main/B3.png)


9. Saving Account Amount : A savings account is an interest-bearing deposit account held at a bank.


**Savings Account = SUM('Clients - Banking'[Saving Accounts] )**


10. Credit Cards Balance : It is the total amount of money currently owned by a cardholder to their credit card bank.



**Credit Cards Balance = SUM('Clients - Banking'[Credit Card Balance] )**

![KPI - Summary](https://github.com/AniW-codes/risk_analysis_Banking/blob/main/B4.png)

