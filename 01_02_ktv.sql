create table tina.departments
(department_id number not null,
 department_name varchar2(100) not null,
 block_id number
);

comment on column tina.departments.department_id is '�� �������';
comment on column tina.departments.department_name is '����� �������';
comment on column tina.departments.block_id is '�� �������';