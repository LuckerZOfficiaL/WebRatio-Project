-- EnrolledCourse.numCorrectAnswers [ent5#att25]
drop view `enrolledcourse_numcorrectanswe`;
create view `enrolledcourse_numcorrectanswe` as
select AL1.`enrolledcourseid` as `enrolledcourseid`, sum(AL2.`iscorrect`) as `der_attr`
from  `enrolledcourse` AL1 
               left outer join `questiontaken` AL2 on AL1.`enrolledcourseid`=AL2.`enrolledcourse_enrolledcoursei`
group by AL1.`enrolledcourseid`;


