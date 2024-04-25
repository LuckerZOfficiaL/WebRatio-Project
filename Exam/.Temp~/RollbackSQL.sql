-- Student_User [rel8]
alter table "public"."user"  drop column  "student_student_code";
-- User_Admin [rel7]
alter table "public"."admin"   drop constraint "fk_admin_user_2";
alter table "public"."admin"  drop column  "user_oid_2";
-- User_Teacher [rel6]
alter table "public"."teacher"   drop constraint "fk_teacher_user_2";
alter table "public"."teacher"  drop column  "user_oid_2";
