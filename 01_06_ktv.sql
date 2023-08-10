--*������� ������ ���� ������ , �� ������� �������� ����� ��� ������� 4

select dep.department_name 
from tina.departments dep
join (select s.department_id,
             count(s.student_id)
      from tina.students s
      group by s.department_id
      having count(s.student_id) >= 4) tt
on dep.department_id = tt.department_id;

