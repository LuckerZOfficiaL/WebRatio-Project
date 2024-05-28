-- LectureTaken.grade [ent2#att20]
drop view `lecturetaken_grade_view`;
create view `lecturetaken_grade_view` as
select AL1.`oid` as `oid`, sum(AL2.`iscorrect`) / sum(AL2.`attempts`) * count(distinct AL2.`oid`) / count(distinct AL3.`questionid`) as `der_attr`
from  `lecturetaken` AL1 
               left outer join `questiontaken` AL2 on AL1.`oid`=AL2.`lecturetaken_oid`
               left outer join `question` AL3 on AL1.`lecture_lectureid`=AL3.`lecture_lectureid`
group by AL1.`oid`;


