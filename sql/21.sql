do
$$
    declare
        CustCursor cursor for
            select *
            from customers
            where cust_email is null;
        CustRecord customers%rowtype;
    begin

        -- поэтапное использование курсора
        open CustCursor;                      -- открытие курсор
        loop
            fetch CustCursor into CustRecord; -- извлечение данных по курсору
            if not found then                 -- прерывание цикла
                exit;
            end if;
            raise notice '%', CustRecord;     -- вывод строки
        end loop;
        close CustCursor;                     -- закрытие курсора

        -- использование курсора в цикле
        for rec in CustCursor
            loop
                raise notice '%', rec;
            end loop;

    end;
$$;

select *
from customers
where cust_email is null;

