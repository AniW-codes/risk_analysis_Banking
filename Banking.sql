--SCHEMAS

drop table if exists banking;
create table banking
(
		Client_ID 							varchar(30),
		Name								varchar(100),
		Age									INT,
		Location_ID							INT,
		Joined_Bank							DATE,
		Banking_Contact						varchar(100),
		Nationality							varchar(100),
		Occupation							varchar(100),
		Fee_Structure						varchar(50),
		Loyalty_Classification				varchar(50),
		Estimated_Income					float,
		Superannuation_Savings				float,
		Amount_of_Credit_Cards				INT,
		Credit_Card_Balance					float,
		Bank_Loans							float,
		Bank_Deposits						float,
		Checking_Accounts					float,
		Saving_Accounts						float,
		Foreign_Currency_Account			float,
		Business_Lending					float,
		Properties_Owned					INT,
		Risk_Weighting						INT,
		BRId								INT,
		GenderId							INT,
		IAId								INT
);

--
select * from banking;

