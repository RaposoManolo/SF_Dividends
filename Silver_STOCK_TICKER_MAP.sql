USE DATABASE DIVIDENDS_DEV;

CREATE OR REPLACE TABLE SILVER.STOCK_TICKER_MAP (
    Stock_ID Int,
    STOCK_NAME  VARCHAR(255) ,
    TICKER      VARCHAR(20) primary Key
   -- EXCHANGE    VARCHAR(20)  -- Optional: useful if you hold UK (.L) and US stocks
);

INSERT INTO SILVER.STOCK_TICKER_MAP (Stock_ID, STOCK_NAME, TICKER)
VALUES
    (1, 'TD SYNNEX CORPORATION', 'SNX'),
    (2, 'QUALCOMM', 'QCOM'),
    (3, 'REALTY INCOME CORP', 'O'),
    (4, 'HP INCORPORATION', 'HPQ' ),
    (5, 'UNILEVER PLC', 'ULVR'),
    (6, 'EPR PROPERTIES', 'EPR')


    select distinct STOCK_NAME from silver.dividends
