create or replace procedure CreateCustomerAndOrder()
    language plpgsql
as
$$
begin

    insert into customers(cust_id, cust_name)
    values ('1000000010', 'Toys Emporium')
    on conflict do nothing;

    begin
        insert into orders(order_num, order_date, cust_id)
        values (20100, '2001/12/1', '1000000010');

        insert into orderitems(order_num, order_item, prod_id, quantity, item_price)
        values (20100, 1, 'BR01', 100, 5.49);

        insert into orderitems(order_num, order_item, prod_id, quantity, item_price)
        values (20100, 2, 'BR03', 100, 10.99);
    exception
        when others then
            raise notice E'Error:\n\tSQLSTATE: %\n\tSQLERRM : %', SQLSTATE, SQLERRM;
    end;

end;
$$;

call CreateCustomerAndOrder();
