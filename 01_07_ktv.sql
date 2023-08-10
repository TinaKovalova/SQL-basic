--Вивести список студентів, у яких максимальна стипендія в рамках своєї кафедри

select s.* 
from tina.students s
join (select s.department_id, 
             max(s.scholarship) as max_scholarship  
             from tina.students s
             group by s.department_id) tt
on s.department_id = tt.department_id
where s.scholarship = tt.max_scholarship;