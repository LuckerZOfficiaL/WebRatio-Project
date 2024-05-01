-- EnrolledCourse [ent5]
alter table `enrolledcourse`  add column  `enrolledcourseid_2`  integer  not null;


-- EnrolledCourse_Course [rel11]
alter table `enrolledcourse`  add column  `course_courseid`  integer;
alter table `enrolledcourse`  add column  `course_name`  varchar(255);
alter table `enrolledcourse`   add index fk_enrolledcourse_course_2 (`course_courseid`, `course_name`), add constraint fk_enrolledcourse_course_2 foreign key (`course_courseid`, `course_name`) references `course` (`courseid`, `name`);


-- User_EnrolledCourse [rel2]
alter table `enrolledcourse`  add column  `user_userid`  integer;
alter table `enrolledcourse`   add index fk_enrolledcourse_user_2 (`user_userid`), add constraint fk_enrolledcourse_user_2 foreign key (`user_userid`) references `user` (`userid`);


