-- створюємо помилку (дублюємо записи в таблиці)
insert all
    into tina.students values (1, 50, 100, '01.08.2019', 'Бєляєв Матвій Артемович', 700)
    into tina.students values (2, 50, 100, '22.08.2019', 'Блажевич Ігор Юрійович', 690)
    into tina.students values (3, 50, 100, '01.08.2019', 'Валієва Руфіна Рафаелівна', 690)
select 1 from dual;
commit;

--знаходимо дублікати записів
select rowid, s.* 
from tina.students s
where rowid not in (select tt.r_id 
                    from(select std.student_id, 
                                 min(rowid) as r_id
                         from tina.students std
                         group by std.student_id) tt);
                         
--видаляємо дублікати записів
delete from tina.students
where rowid not in (select tt.r_id 
                    from(select std.student_id, min(rowid) as r_id
                          from tina.students std
                          group by std.student_id) tt);
commit;  


