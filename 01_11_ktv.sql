/* ������� ��������, �� �������� �� ����������� � ���� 2019�. 
������ ������c�������, �� ����� ������� to_char, �� �������� ����� ����� */
select s.*, 
       to_char(to_date('01.07.2019'),'month') as month
from tina.students s
where s.start_date between to_date('01.07.2019 00:00:00','dd.mm.yyyy hh24:mi:ss') 
and to_date('31.07.2019 23:59:59','dd.mm.yyyy hh24:mi:ss');
