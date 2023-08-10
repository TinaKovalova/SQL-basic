--*Âèâåñòè ïåğåë³ê íàçâ êàôåäğ , äå ê³ëüê³ñòü ñòóäåíò³â á³ëüøà àáî äîğ³âíşº 4

select dep.department_name 
from tina.departments dep
join (select s.department_id,
             count(s.student_id)
      from tina.students s
      group by s.department_id
      having count(s.student_id) >= 4) tt
on dep.department_id = tt.department_id;

