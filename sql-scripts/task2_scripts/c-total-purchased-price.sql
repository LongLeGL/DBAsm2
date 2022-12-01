CREATE OR REPLACE FUNCTION total_purchase_price(code in VARCHAR2)
RETURN INTEGER
AS
total INTEGER;
BEGIN
    SELECT sum(Purchased_Price * Provided_Quantity)
    INTO total
    FROM Category
    WHERE S_Code = code
    GROUP BY S_Code;
    
    RETURN total;
END;
/

-- example
SELECT S_Code, C_Code, Purchased_Price, Provided_Quantity
FROM Category
WHERE S_Code = 'SU0001';

SELECT total_purchase_price('SU0001')
FROM Dual;