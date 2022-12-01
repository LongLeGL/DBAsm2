CREATE OR REPLACE PROCEDURE get_supplier_sorted_by_num_category(
    start_date  IN DATE,
    end_date    IN DATE
)
IS
BEGIN
    dbms_output.put_line('S_Code   Category Count');
    FOR ROW IN (
        SELECT S_Code, Count(C_Code) as count_cat
        FROM Category
        WHERE "Date" >= start_date AND "Date" <= end_date
        GROUP BY S_Code
        ORDER BY count_cat DESC
    ) LOOP
        dbms_output.put_line(row.S_Code || '   ' || row.count_cat);
END LOOP;

END;

/

-- example
EXEC get_supplier_sorted_by_num_category('01-JAN-2017', '01-JAN-2023');