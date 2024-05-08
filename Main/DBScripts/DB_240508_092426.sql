-- EnrolledCourse.grade [ent5#att16]
drop view `enrolledcourse_grade_view`;
create view `enrolledcourse_grade_view` as
select AL1.`enrolledcourseid` as `enrolledcourseid`, AL2.`der_attr` / AL3.`der_attr` as `der_attr`
from  `enrolledcourse` AL1 
               left outer join `enrolledcourse_numcorrectanswe` AL2 on AL1.`enrolledcourseid`=AL2.`enrolledcourseid`
               left outer join `enrolledcourse_numquestions_vi` AL3 on AL1.`enrolledcourseid`=AL3.`enrolledcourseid`;


