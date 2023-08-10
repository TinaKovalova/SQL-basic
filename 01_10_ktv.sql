--вивести назви департаментів по яким є студенти

select distinct dep.department_name
from tina.departments dep
right join tina.students s
on dep.department_id = s.department_id;
