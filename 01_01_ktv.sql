create table tina.students
(student_id number not null,
 department_id number,
 teacher_id number,
 start_date date not null,
 full_name varchar2(100) not null,
 scholarship number
);

comment on column tina.students.student_id is 'ІД студента';
comment on column tina.students.department_id is 'ІД кафедри';
comment on column tina.students.teacher_id is 'ІД викладача';
comment on column tina.students.start_date is 'Дата надходження';
comment on column tina.students.full_name is 'ПІБ студента';
comment on column tina.students.scholarship is 'Стипендія студента';
