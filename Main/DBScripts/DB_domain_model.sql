-- Group [Group]
create table `group` (
   `groupid`  integer  not null,
   `groupname`  varchar(255),
  primary key (`groupid`)
);


-- Module [Module]
create table `module` (
   `oid`  integer  not null,
   `moduleid`  varchar(255),
   `modulename`  varchar(255),
  primary key (`oid`)
);


-- User [User]
create table `user` (
   `userid`  integer  not null,
   `username`  varchar(255),
   `password`  date,
   `email`  varchar(255),
   `firstname`  varchar(255),
   `lastname`  varchar(255),
  primary key (`userid`)
);


-- Course [ent1]
create table `course` (
   `courseid`  integer  not null,
   `name`  varchar(255)  not null,
   `topic`  varchar(255),
  primary key (`courseid`, `name`)
);


-- Question [ent3]
create table `question` (
   `questionid`  integer  not null,
   `question`  varchar(255),
   `option1`  varchar(255),
   `option2`  varchar(255),
   `option3`  varchar(255),
   `option4`  varchar(255),
   `correctanswer`  integer,
  primary key (`questionid`)
);


-- EnrolledCourse [ent5]
create table `enrolledcourse` (
   `encolledcourseid`  integer  not null,
   `grade`  double precision,
  primary key (`encolledcourseid`)
);


-- Lecture [ent6]
create table `lecture` (
   `lectureid`  integer  not null,
   `title`  varchar(255),
   `content`  varchar(255),
  primary key (`lectureid`)
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table `group`  add column  `module_oid`  integer;
alter table `group`   add index fk_group_module (`module_oid`), add constraint fk_group_module foreign key (`module_oid`) references `module` (`oid`);


-- Group_Module [Group2Module_Module2Group]
create table `group_module` (
   `group_groupid`  integer not null,
   `module_oid`  integer not null,
  primary key (`group_groupid`, `module_oid`)
);
alter table `group_module`   add index fk_group_module_group (`group_groupid`), add constraint fk_group_module_group foreign key (`group_groupid`) references `group` (`groupid`);
alter table `group_module`   add index fk_group_module_module (`module_oid`), add constraint fk_group_module_module foreign key (`module_oid`) references `module` (`oid`);


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table `user`  add column  `group_groupid`  integer;
alter table `user`   add index fk_user_group (`group_groupid`), add constraint fk_user_group foreign key (`group_groupid`) references `group` (`groupid`);


-- User_Group [User2Group_Group2User]
create table `user_group` (
   `user_userid`  integer not null,
   `group_groupid`  integer not null,
  primary key (`user_userid`, `group_groupid`)
);
alter table `user_group`   add index fk_user_group_user (`user_userid`), add constraint fk_user_group_user foreign key (`user_userid`) references `user` (`userid`);
alter table `user_group`   add index fk_user_group_group (`group_groupid`), add constraint fk_user_group_group foreign key (`group_groupid`) references `group` (`groupid`);


-- Creator_course [rel1]
alter table `course`  add column  `user_userid`  integer;
alter table `course`   add index fk_course_user (`user_userid`), add constraint fk_course_user foreign key (`user_userid`) references `user` (`userid`);


-- EnrolledCourse_Course [rel11]
alter table `enrolledcourse`  add column  `course_courseid`  integer;
alter table `enrolledcourse`  add column  `course_name`  varchar(255);
alter table `enrolledcourse`   add index fk_enrolledcourse_course (`course_courseid`, `course_name`), add constraint fk_enrolledcourse_course foreign key (`course_courseid`, `course_name`) references `course` (`courseid`, `name`);


-- User_EnrolledCourse [rel2]
alter table `enrolledcourse`  add column  `user_userid`  integer;
alter table `enrolledcourse`   add index fk_enrolledcourse_user (`user_userid`), add constraint fk_enrolledcourse_user foreign key (`user_userid`) references `user` (`userid`);


-- Course_Lecture [rel4]
alter table `lecture`  add column  `course_courseid`  integer;
alter table `lecture`  add column  `course_name`  varchar(255);
alter table `lecture`   add index fk_lecture_course (`course_courseid`, `course_name`), add constraint fk_lecture_course foreign key (`course_courseid`, `course_name`) references `course` (`courseid`, `name`);


-- Lecture_Question [rel9]
alter table `question`  add column  `lecture_lectureid`  integer;
alter table `question`   add index fk_question_lecture (`lecture_lectureid`), add constraint fk_question_lecture foreign key (`lecture_lectureid`) references `lecture` (`lectureid`);


