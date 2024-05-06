-- REL FK: CourseToUser [rel1#role2]
alter table `course`   add index fk_user_course (`courseid`), add constraint fk_user_course foreign key (`courseid`) references `course` (`courseid`);


