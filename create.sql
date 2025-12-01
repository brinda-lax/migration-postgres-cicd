do $$

begin
	begin
create table if not exists attemder(
atten_id serial primary key,
first_name varchar(50),
last_name varchar(50),
last_update timestamp without time zone NOT NULL DEFAULT now()

);
exception 
	when others then 
	Raise notice'Error occured rolling back';
raise;

end ;
end $$;
--commit;