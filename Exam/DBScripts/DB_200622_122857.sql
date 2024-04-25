-- Group [Group]
create table "public"."group" (
   "oid"  int4  not null,
   "groupname"  varchar(255),
  primary key ("oid")
);


-- Module [Module]
create table "public"."module" (
   "oid"  int4  not null,
   "moduleid"  varchar(255),
   "modulename"  varchar(255),
  primary key ("oid")
);


-- User [User]
create table "public"."user" (
   "oid"  int4  not null,
   "username"  varchar(255),
   "password"  varchar(255),
   "email"  varchar(255),
   "firstname"  varchar(255),
   "lastname"  varchar(255),
  primary key ("oid")
);


-- Admin [ent1]
create table "public"."admin" (
   "admin_code"  int4  not null,
  primary key ("admin_code")
);


-- Student [ent2]
create table "public"."student" (
   "student_code"  int4  not null,
   "approved"  int4,
  primary key ("student_code")
);


-- Grades [ent3]
create table "public"."grades" (
   "oid"  int4  not null,
   "grade"  float8,
  primary key ("oid")
);


-- Exam [ent4]
create table "public"."exam" (
   "exam_code"  int4  not null,
   "name"  varchar(255),
  primary key ("exam_code")
);


-- Teacher [ent5]
create table "public"."teacher" (
   "teacher_code"  int4  not null,
   "approved"  int4,
  primary key ("teacher_code")
);


-- Question [ent6]
create table "public"."question" (
   "question_code"  int4  not null,
   "question"  varchar(255),
   "option1"  varchar(255),
   "option2"  varchar(255),
   "option3"  varchar(255),
   "option4"  varchar(255),
   "answer"  int4,
  primary key ("question_code")
);


-- Category [ent7]
create table "public"."category" (
   "oid"  int4  not null,
   "category_name"  varchar(255),
  primary key ("oid")
);


-- AssignedExams [ent8]
create table "public"."assignedexams" (
   "oid"  int4  not null,
  primary key ("oid")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "public"."group"  add column  "module_oid"  int4;
alter table "public"."group"   add constraint fk_group_module foreign key ("module_oid") references "public"."module" ("oid");


-- Group_Module [Group2Module_Module2Group]
create table "public"."group_module" (
   "group_oid"  int4 not null,
   "module_oid"  int4 not null,
  primary key ("group_oid", "module_oid")
);
alter table "public"."group_module"   add constraint fk_group_module_group foreign key ("group_oid") references "public"."group" ("oid");
alter table "public"."group_module"   add constraint fk_group_module_module foreign key ("module_oid") references "public"."module" ("oid");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "public"."user"  add column  "group_oid"  int4;
alter table "public"."user"   add constraint fk_user_group foreign key ("group_oid") references "public"."group" ("oid");


-- User_Group [User2Group_Group2User]
create table "public"."user_group" (
   "user_oid"  int4 not null,
   "group_oid"  int4 not null,
  primary key ("user_oid", "group_oid")
);
alter table "public"."user_group"   add constraint fk_user_group_user foreign key ("user_oid") references "public"."user" ("oid");
alter table "public"."user_group"   add constraint fk_user_group_group foreign key ("group_oid") references "public"."group" ("oid");


-- User_AssignedExams [rel1]
alter table "public"."assignedexams"  add column  "user_oid"  int4;
alter table "public"."assignedexams"   add constraint fk_assignedexams_user foreign key ("user_oid") references "public"."user" ("oid");


-- Grades_User [rel10]
alter table "public"."grades"  add column  "user_oid"  int4;
alter table "public"."grades"   add constraint fk_grades_user foreign key ("user_oid") references "public"."user" ("oid");


-- Exam_AssignedExams [rel11]
alter table "public"."assignedexams"  add column  "exam_exam_code"  int4;
alter table "public"."assignedexams"   add constraint fk_assignedexams_exam foreign key ("exam_exam_code") references "public"."exam" ("exam_code");


-- Student_Exam [rel2]
create table "public"."student_exam" (
   "student_student_code"  int4 not null,
   "exam_exam_code"  int4 not null,
  primary key ("student_student_code", "exam_exam_code")
);
alter table "public"."student_exam"   add constraint fk_student_exam_student foreign key ("student_student_code") references "public"."student" ("student_code");
alter table "public"."student_exam"   add constraint fk_student_exam_exam foreign key ("exam_exam_code") references "public"."exam" ("exam_code");


-- Exam_Question [rel3]
alter table "public"."question"  add column  "exam_exam_code"  int4;
alter table "public"."question"   add constraint fk_question_exam foreign key ("exam_exam_code") references "public"."exam" ("exam_code");


-- Teacher_Category [rel4]
alter table "public"."teacher"  add column  "category_oid"  int4;
alter table "public"."teacher"   add constraint fk_teacher_category foreign key ("category_oid") references "public"."category" ("oid");


-- Exam_Grades [rel5]
alter table "public"."grades"  add column  "exam_exam_code"  int4;
alter table "public"."grades"   add constraint fk_grades_exam foreign key ("exam_exam_code") references "public"."exam" ("exam_code");


-- User_Teacher [rel6]
alter table "public"."teacher"  add column  "user_oid"  int4;
alter table "public"."teacher"   add constraint fk_teacher_user foreign key ("user_oid") references "public"."user" ("oid");


-- User_Admin [rel7]
alter table "public"."admin"  add column  "user_oid"  int4;
alter table "public"."admin"   add constraint fk_admin_user foreign key ("user_oid") references "public"."user" ("oid");


-- Student_User [rel8]
alter table "public"."user"  add column  "student_student_code"  int4;
alter table "public"."user"   add constraint fk_user_student foreign key ("student_student_code") references "public"."student" ("student_code");


-- User_Exam [rel9]
alter table "public"."exam"  add column  "user_oid"  int4;
alter table "public"."exam"   add constraint fk_exam_user foreign key ("user_oid") references "public"."user" ("oid");


