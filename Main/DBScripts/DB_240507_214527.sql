-- Questiontaken [ent7]
create table `questiontaken` (
   `oid`  integer  not null,
   `iscorrect`  integer,
  primary key (`oid`)
);


-- QuestiontakenQuestion [rel10]
alter table `questiontaken`  add column  `question_questionid`  integer;
alter table `questiontaken`   add index fk_questiontaken_question (`question_questionid`), add constraint fk_questiontaken_question foreign key (`question_questionid`) references `question` (`questionid`);


-- QuestiontakenEnrolledcourse [rel8]
alter table `questiontaken`  add column  `enrolledcourse_enrolledcoursei`  integer;
alter table `questiontaken`   add index fk_questiontaken_enrolledcours (`enrolledcourse_enrolledcoursei`), add constraint fk_questiontaken_enrolledcours foreign key (`enrolledcourse_enrolledcoursei`) references `enrolledcourse` (`enrolledcourseid`);


-- EnrolledCourse.numQuestions [ent5#att21]
create view `enrolledcourse_numquestions_vi` as
select AL1.`enrolledcourseid` as `enrolledcourseid`, count(distinct AL3.`questionid`) as `der_attr`
from  `enrolledcourse` AL1 
               left outer join `lecture` AL2 on AL1.`course_courseid`=AL2.`course_courseid`
               left outer join `question` AL3 on AL2.`lectureid`=AL3.`lecture_lectureid`
group by AL1.`enrolledcourseid`;


-- EnrolledCourse.numCorrectAnswers [ent5#att25]
create view `enrolledcourse_numcorrectanswe` as
select AL1.`enrolledcourseid` as `enrolledcourseid`, sum(AL2.`iscorrect`) as `der_attr`
from  `enrolledcourse` AL1 
               left outer join `questiontaken` AL2 on AL1.`enrolledcourseid`=AL2.`enrolledcourse_enrolledcoursei`
group by AL1.`enrolledcourseid`;


-- EnrolledCourse.grade [ent5#att16]
create view `enrolledcourse_grade_view` as
select AL1.`enrolledcourseid` as `enrolledcourseid`, AL2.`der_attr` / AL3.`der_attr` as `der_attr`
from  `enrolledcourse` AL1 
               left outer join `enrolledcourse_numquestions_vi` AL2 on AL1.`enrolledcourseid`=AL2.`enrolledcourseid`
               left outer join `enrolledcourse_numcorrectanswe` AL3 on AL1.`enrolledcourseid`=AL3.`enrolledcourseid`;


