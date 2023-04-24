CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount NUMERIC(10, 2) NOT NULL
);

INSERT INTO orders (customer_id, order_date, total_amount)
VALUES
    (1, '2022-01-01', 100.00),
    (2, '2022-01-02', 200.00),
    (1, '2022-01-03', 150.00),
    (3, '2022-01-04', 75.00),
    (4, '2022-01-05', 300.00),
    (2, '2022-01-06', 125.00),
    (1, '2022-01-07', 75.00),
    (3, '2022-01-08', 250.00),
    (4, '2022-01-09', 175.00),
    (2, '2022-01-10', 150.00),
    (1, '2022-01-11', 50.00),
    (3, '2022-01-12', 100.00),
    (4, '2022-01-13', 225.00),
    (2, '2022-01-14', 125.00),
    (1, '2022-01-15', 300.00),
    (3, '2022-01-16', 75.00),
    (4, '2022-01-17', 100.00),
    (2, '2022-01-18', 200.00),
    (1, '2022-01-19', 150.00),
    (3, '2022-01-20', 125.00);
    
CREATE TABLE orders_audit (
    audit_id SERIAL PRIMARY KEY,
    audit_data JSONB NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);
