-- LectureTaken.grade [ent2#att20]
drop view `lecturetaken_grade_view`;
create view `lecturetaken_grade_view` as
select AL1.`oid` as `oid`, avg(AL2.`iscorrect`) / avg(AL2.`attempts`) as `der_attr`
from  `lecturetaken` AL1 
               left outer join `questiontaken` AL2 on AL1.`oid`=AL2.`lecturetaken_oid`
group by AL1.`oid`;


