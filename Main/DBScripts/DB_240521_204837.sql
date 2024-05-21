-- LectureTaken [ent2]
create table `lecturetaken` (
   `oid`  integer  not null,
  primary key (`oid`)
);


-- Questiontaken [ent7]
alter table `questiontaken`  add column  `attempts`  integer;
alter table `questiontaken`  add column  `weight`  double precision;


-- EnrolledCourse_Taken Lecture [rel3]
alter table `lecturetaken`  add column  `enrolledcourse_enrolledcoursei`  integer;
alter table `lecturetaken`   add index fk_lecturetaken_enrolledcourse (`enrolledcourse_enrolledcoursei`), add constraint fk_lecturetaken_enrolledcourse foreign key (`enrolledcourse_enrolledcoursei`) references `enrolledcourse` (`enrolledcourseid`);


-- Lecture_Taken Lecture [rel5]
alter table `lecturetaken`  add column  `lecture_lectureid`  integer;
alter table `lecturetaken`   add index fk_lecturetaken_lecture (`lecture_lectureid`), add constraint fk_lecturetaken_lecture foreign key (`lecture_lectureid`) references `lecture` (`lectureid`);


-- LectureTaken_Questiontaken [rel6]
alter table `questiontaken`  add column  `lecturetaken_oid`  integer;
alter table `questiontaken`   add index fk_questiontaken_lecturetaken (`lecturetaken_oid`), add constraint fk_questiontaken_lecturetaken foreign key (`lecturetaken_oid`) references `lecturetaken` (`oid`);


-- LectureTaken.numQuestions [ent2#att13]
create view `lecturetaken_numquestions_view` as
select AL1.`oid` as `oid`, count(distinct AL2.`oid`) as `der_attr`
from  `lecturetaken` AL1 
               left outer join `questiontaken` AL2 on AL1.`oid`=AL2.`lecturetaken_oid`
group by AL1.`oid`;


-- LectureTaken.numCorrectAnswers [ent2#att14]
create view `lecturetaken_numcorrectanswers` as
select AL1.`oid` as `oid`, sum(AL3.`iscorrect`) as `der_attr`
from  `lecturetaken` AL1 
               left outer join `questiontaken` AL2 on AL1.`oid`=AL2.`lecturetaken_oid`
               left outer join `questiontaken` AL3 on AL2.`oid`=AL3.`oid`
group by AL1.`oid`;


-- LectureTaken.grade [ent2#att20]
create view `lecturetaken_grade_view` as
select AL1.`oid` as `oid`, sum(AL3.`weight`) / AL4.`der_attr` as `der_attr`
from  `lecturetaken` AL1 
               left outer join `questiontaken` AL2 on AL1.`oid`=AL2.`lecturetaken_oid`
               left outer join `questiontaken` AL3 on AL2.`oid`=AL3.`oid`
               left outer join `lecturetaken_numquestions_view` AL4 on AL1.`oid`=AL4.`oid`
group by AL1.`oid`, AL4.`der_attr`;


