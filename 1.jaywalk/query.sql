SELECT * FROM Products;
SELECT * FROM Accounts;

-- アカウントID: 3に紐付く商品
SELECT product_name FROM Products WHERE account_id REGEXP '(^|,)3(,|$)';

-- 製品ID: 2に紐付くアカウント
SELECT account_name
FROM Products AS p 
INNER JOIN Accounts AS a  
ON p.account_id REGEXP '(^|,)' || a.account_id || '(,|$)'  WHERE p.product_id = 2; 

-- 製品ごとのアカウント数
SELECT product_id, LENGTH(account_id) - LENGTH(REPLACE(account_id,',','')) + 1  AS contacts_per_product  FROM Products; 