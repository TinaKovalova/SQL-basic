insert into tina.departments (department_id, department_name, block_id)
select 50, '����������', 1 from dual
union
select 60, '���������', 1 from dual
union
select 70, '������', 2 from dual
union
select 80, '����������', 2 from dual
union
select 90, 'Գ������', 3 from dual;

commit;