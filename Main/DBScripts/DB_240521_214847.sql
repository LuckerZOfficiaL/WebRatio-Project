-- LectureTaken.grade [ent2#att20]
drop view `lecturetaken_grade_view`;
create view `lecturetaken_grade_view` as
select AL1.`oid` as `oid`, sum(AL2.`iscorrect`) / AL3.`der_attr` as `der_attr`
from  `lecturetaken` AL1 
               left outer join `questiontaken` AL2 on AL1.`oid`=AL2.`lecturetaken_oid`
               left outer join `lecturetaken_numquestions_view` AL3 on AL1.`oid`=AL3.`oid`
group by AL1.`oid`, AL3.`der_attr`;


