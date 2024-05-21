-- LectureTaken.numQuestions [ent2#att13]
drop view `lecturetaken_numquestions_view`;
create view `lecturetaken_numquestions_view` as
select AL1.`oid` as `oid`, count(distinct AL2.`questionid`) as `der_attr`
from  `lecturetaken` AL1 
               left outer join `question` AL2 on AL1.`lecture_lectureid`=AL2.`lecture_lectureid`
group by AL1.`oid`;


