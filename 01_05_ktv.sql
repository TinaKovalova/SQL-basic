/*вивести поля таблиці студентів, але замість department_id
потрібно вивести поле з таблиці  department_name департментів*/

select s.student_id, 
       (select dep.department_name 
        from tina.departments dep 
        where dep.department_id = s.department_id) as department_name, 
       s.teacher_id, 
       s.start_date, 
       s.full_name, 
       s.scholarship 
from tina.students s;