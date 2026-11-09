USE DATABASE DIVIDENDS_DEV;

CREATE OR REPLACE FILE FORMAT DV_CSV
    TYPE = 'CSV'
    SKIP_HEADER = 1;

Create or Replace Stage STG_Dividends
File_Format = DV_CSV    

CREATE OR REPLACE TABLE BRONZE_DIVIDENDS (
    RECORD_DATE         DATE,          -- e.g., '30/10/2026' (Format DD/MM/YYYY)
    DESCRIPTION         VARCHAR(255),  -- e.g., 'DIVIDEND 13 TD SYNNEX CORPORATION...'
    DIVIDEND_REFERENCE  VARCHAR(50),   -- e.g., '9989624 / 10'
    SETTLEMENT_DATE     DATE,          -- Can handle NULL or missing '-' entries
    RECEIPT_GBP         NUMBER(12, 2), -- e.g., 4.64
    PAYMENT_GBP         NUMBER(12, 2), -- e.g., 0.00
    BALANCE_GBP         NUMBER(12, 2)  -- e.g., 12509.78
);


cOPY INTO BRONZE_DIVIDENDS
From @STG_Dividends
file_FOrmat = (format_Name = DV_CSV)