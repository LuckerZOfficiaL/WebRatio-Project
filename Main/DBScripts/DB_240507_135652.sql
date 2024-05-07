-- QuestionTaken [ent4]
create table `questiontaken_2` (
   `oid`  integer  not null,
   `iscorrect`  integer,
  primary key (`oid`)
);


-- QuestionTaken_Question [rel6]
alter table `questiontaken_2`  add column  `question_questionid`  integer;
alter table `questiontaken_2`   add index fk_questiontaken_2_question (`question_questionid`), add constraint fk_questiontaken_2_question foreign key (`question_questionid`) references `question` (`questionid`);


-- EnrolledCourse_QuestionTaken [rel7]
alter table `questiontaken_2`  add column  `enrolledcourse_enrolledcoursei`  integer;
alter table `questiontaken_2`   add index fk_questiontaken_2_enrolledcou (`enrolledcourse_enrolledcoursei`), add constraint fk_questiontaken_2_enrolledcou foreign key (`enrolledcourse_enrolledcoursei`) references `enrolledcourse` (`enrolledcourseid`);


-- EnrolledCourse.numQuestions [ent5#att21]
drop view `enrolledcourse_numquestions_vi`;
create view `enrolledcourse_numquestions_vi` as
select AL1.`enrolledcourseid` as `enrolledcourseid`, count(distinct AL3.`questionid`) as `der_attr`
from  `enrolledcourse` AL1 
               left outer join `lecture` AL2 on AL1.`course_courseid`=AL2.`course_courseid`
               left outer join `question` AL3 on AL2.`lectureid`=AL3.`lecture_lectureid`
group by AL1.`enrolledcourseid`;


-- EnrolledCourse.numCorrectAnswers [ent5#att25]
drop view `enrolledcourse_numcorrectanswe`;
create view `enrolledcourse_numcorrectanswe` as
select AL1.`enrolledcourseid` as `enrolledcourseid`, sum(AL2.`iscorrect`) as `der_attr`
from  `enrolledcourse` AL1 
               left outer join `questiontaken_2` AL2 on AL1.`enrolledcourseid`=AL2.`enrolledcourse_enrolledcoursei`
group by AL1.`enrolledcourseid`;


-- EnrolledCourse.grade [ent5#att16]
create view `enrolledcourse_grade_view` as
select AL1.`enrolledcourseid` as `enrolledcourseid`, AL2.`der_attr` / AL3.`der_attr` as `der_attr`
from  `enrolledcourse` AL1 
               left outer join `enrolledcourse_numquestions_vi` AL2 on AL1.`enrolledcourseid`=AL2.`enrolledcourseid`
               left outer join `enrolledcourse_numcorrectanswe` AL3 on AL1.`enrolledcourseid`=AL3.`enrolledcourseid`;


