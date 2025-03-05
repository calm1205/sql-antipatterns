-- アカウントテーブル
CREATE TABLE Accounts (
    account_id   SERIAL PRIMARY KEY,
    account_name VARCHAR(100)
);

-- 製品テーブル
CREATE TABLE Products (
    product_id   SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    account_id  VARCHAR(255) -- カンマ区切りで複数のアカウントIDを格納
);

-- サンプルデータ（アカウント）
INSERT INTO Accounts (account_name) VALUES 
    ('Alice'), ('Bob'), ('Charlie'), ('David');

-- サンプルデータ（製品） - カンマ区切りでアカウントIDを格納
INSERT INTO Products (product_name, account_id) VALUES 
    ('iPhone', '1,2'),
    ('MacBook', '2,3,4'),
    ('iPad', '1,3');

