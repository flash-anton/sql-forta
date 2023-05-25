--
create or replace procedure MailingListCount(
    inout ListCount int
)
    language plpgsql
as
$$
declare
    v_rows int;
begin
    select count(*)
    into v_rows
    from customers
    where cust_email is not null;

    ListCount := v_rows;
end;
$$;

do
$$
    declare
        ListCount int := 0;
    begin
        call MailingListCount(ListCount);
        raise notice 'MailingListCount = %', ListCount; -- выводит результат в консоль
    end;
$$;

--
create or replace procedure NewOrder(
    in in_cust_id char(10),
    inout out_order_num int
)
    language plpgsql
as
$$
declare
    v_order_num int;
begin
    select max(order_num)
    into v_order_num
    from orders;

    v_order_num := v_order_num + 1;

    insert into orders(order_num, order_date, cust_id)
    values (v_order_num, current_date, in_cust_id);

    out_order_num := v_order_num;
end;
$$;

do
$$
    declare
        in_cust_id    char(10) := '1000000003';
        out_order_num int;
    begin
        call NewOrder(in_cust_id, out_order_num);
        raise notice 'NewOrder(%) = %', in_cust_id, out_order_num; -- выводит результат в консоль
    end;
$$;
