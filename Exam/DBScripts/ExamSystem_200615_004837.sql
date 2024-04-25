-- User_Teacher [rel6]
alter table "public"."teacher"  add column  "user_oid_2"  int4;
alter table "public"."teacher"   add constraint fk_teacher_user_2 foreign key ("user_oid_2") references "public"."user" ("oid");


-- User_Admin [rel7]
alter table "public"."admin"  add column  "user_oid_2"  int4;
alter table "public"."admin"   add constraint fk_admin_user_2 foreign key ("user_oid_2") references "public"."user" ("oid");


-- Student_User [rel8]
alter table "public"."user"  add column  "student_student_code"  int4;
alter table "public"."user"   add constraint fk_user_student foreign key ("student_student_code") references "public"."student" ("student_code");


