-- Group [Group]
create table `group` (
   `oid`  integer  not null,
   `groupname`  varchar(255),
  primary key (`oid`)
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
   `oid`  integer  not null,
   `username`  varchar(255),
   `password`  varchar(255),
   `email`  varchar(255),
   `firstname`  varchar(255),
   `lastname`  varchar(255),
  primary key (`oid`)
);


-- Grades [ent3]
create table `grades` (
   `oid`  integer  not null,
   `grade`  double precision,
  primary key (`oid`)
);


-- Exam [ent4]
create table `exam` (
   `exam_code`  integer  not null,
   `name`  varchar(255),
  primary key (`exam_code`)
);


-- Question [ent6]
create table `question` (
   `question_code`  integer  not null,
   `question`  varchar(255),
   `option1`  varchar(255),
   `option2`  varchar(255),
   `option3`  varchar(255),
   `option4`  varchar(255),
   `answer`  integer,
  primary key (`question_code`)
);


-- AssignedExams [ent8]
create table `assignedexams` (
   `oid`  integer  not null,
  primary key (`oid`)
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table `group`  add column  `module_oid`  integer;
alter table `group`   add index fk_group_module (`module_oid`), add constraint fk_group_module foreign key (`module_oid`) references `module` (`oid`);


-- Group_Module [Group2Module_Module2Group]
create table `group_module` (
   `group_oid`  integer not null,
   `module_oid`  integer not null,
  primary key (`group_oid`, `module_oid`)
);
alter table `group_module`   add index fk_group_module_group (`group_oid`), add constraint fk_group_module_group foreign key (`group_oid`) references `group` (`oid`);
alter table `group_module`   add index fk_group_module_module (`module_oid`), add constraint fk_group_module_module foreign key (`module_oid`) references `module` (`oid`);


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table `user`  add column  `group_oid`  integer;
alter table `user`   add index fk_user_group (`group_oid`), add constraint fk_user_group foreign key (`group_oid`) references `group` (`oid`);


-- User_Group [User2Group_Group2User]
create table `user_group` (
   `user_oid`  integer not null,
   `group_oid`  integer not null,
  primary key (`user_oid`, `group_oid`)
);
alter table `user_group`   add index fk_user_group_user (`user_oid`), add constraint fk_user_group_user foreign key (`user_oid`) references `user` (`oid`);
alter table `user_group`   add index fk_user_group_group (`group_oid`), add constraint fk_user_group_group foreign key (`group_oid`) references `group` (`oid`);


-- User_AssignedExams [rel1]
alter table `assignedexams`  add column  `user_oid`  integer;
alter table `assignedexams`   add index fk_assignedexams_user (`user_oid`), add constraint fk_assignedexams_user foreign key (`user_oid`) references `user` (`oid`);


-- Exam_AssignedExams [rel11]
alter table `assignedexams`  add column  `exam_exam_code`  integer;
alter table `assignedexams`   add index fk_assignedexams_exam (`exam_exam_code`), add constraint fk_assignedexams_exam foreign key (`exam_exam_code`) references `exam` (`exam_code`);


-- Grades_AssignedExams [rel12]
alter table `assignedexams`  add column  `grades_oid`  integer;
alter table `assignedexams`   add index fk_assignedexams_grades (`grades_oid`), add constraint fk_assignedexams_grades foreign key (`grades_oid`) references `grades` (`oid`);


-- Exam_Question [rel3]
alter table `question`  add column  `exam_exam_code`  integer;
alter table `question`   add index fk_question_exam (`exam_exam_code`), add constraint fk_question_exam foreign key (`exam_exam_code`) references `exam` (`exam_code`);


-- User_Exam [rel9]
alter table `exam`  add column  `user_oid`  integer;
alter table `exam`   add index fk_exam_user (`user_oid`), add constraint fk_exam_user foreign key (`user_oid`) references `user` (`oid`);


