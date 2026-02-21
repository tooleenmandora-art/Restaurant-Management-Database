-- Stored Procedures

-- Procedure 1
-- Retrieve orders based on status

CREATE OR REPLACE PROCEDURE GetOrdersByStatus (p_status IN VARCHAR2) IS
BEGIN
    FOR rec IN (
        SELECT OrderID, OrderDate, TotalAmount, Status
        FROM Orders
        WHERE Status = p_status
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Order ID: ' || rec.OrderID ||
            ', Date: ' || rec.OrderDate ||
            ', Total: ' || rec.TotalAmount ||
            ', Status: ' || rec.Status
        );
    END LOOP;
END;


-- Example Execution

EXEC GetOrdersByStatus('Completed');
EXEC GetOrdersByStatus('Pending');
EXEC GetOrdersByStatus('Cancelled');


-- Procedure 2
-- Update order status

CREATE OR REPLACE PROCEDURE UpdateOrderStatus (
    p_order_id IN NUMBER,
    p_new_status IN VARCHAR2
) IS
BEGIN
    UPDATE Orders
    SET Status = p_new_status
    WHERE OrderID = p_order_id;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE(
            'Order ' || p_order_id ||
            ' status updated to ' || p_new_status
        );
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            'No order found with ID ' || p_order_id
        );
    END IF;
END;


-- Example Execution

EXEC UpdateOrderStatus(1006, 'Completed');
