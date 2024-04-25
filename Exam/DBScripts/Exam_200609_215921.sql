-- Group [Group]
create table "public"."group_2" (
   "oid"  int4  not null,
   "groupname"  varchar(255),
  primary key ("oid")
);


-- Module [Module]
create table "public"."module_2" (
   "oid"  int4  not null,
   "moduleid"  varchar(255),
   "modulename"  varchar(255),
  primary key ("oid")
);


-- User [User]
create table "public"."user_2" (
   "oid"  int4  not null,
   "username"  varchar(255),
   "password"  varchar(255),
   "email"  varchar(255),
  primary key ("oid")
);


-- Admin [ent1]
create table "public"."admin_2" (
   "user_2_oid"  int4  not null,
   "admin_code"  int4  not null,
  primary key ("user_2_oid")
);


-- Student [ent2]
create table "public"."student_2" (
   "user_2_oid"  int4  not null,
   "student_code"  int4  not null,
   "approved"  int4,
  primary key ("user_2_oid")
);


-- Grades [ent3]
create table "public"."grades" (
   "oid"  int4  not null,
   "grade"  float8,
  primary key ("oid")
);


-- Exam [ent4]
create table "public"."exam_2" (
   "exam_code"  int4  not null,
   "name"  varchar(255),
  primary key ("exam_code")
);


-- Teacher [ent5]
create table "public"."teacher_2" (
   "user_2_oid"  int4  not null,
   "teacher_code"  int4  not null,
   "approved"  int4,
  primary key ("user_2_oid")
);


-- Question [ent6]
create table "public"."question_2" (
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
create table "public"."category_2" (
   "oid"  int4  not null,
   "category_name"  varchar(255),
  primary key ("oid")
);


-- GEN FK: Admin --> User
alter table "public"."admin_2"   add constraint fk_admin_2_user_2 foreign key ("user_2_oid") references "public"."user_2" ("oid");


-- GEN FK: Student --> User
alter table "public"."student_2"   add constraint fk_student_2_user_2 foreign key ("user_2_oid") references "public"."user_2" ("oid");


-- GEN FK: Teacher --> User
alter table "public"."teacher_2"   add constraint fk_teacher_2_user_2 foreign key ("user_2_oid") references "public"."user_2" ("oid");


