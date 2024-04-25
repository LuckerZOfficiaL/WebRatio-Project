-- Grades_User [rel10]
alter table "public"."grades"  add column  "user_oid"  int4;
alter table "public"."grades"   add constraint fk_grades_user foreign key ("user_oid") references "public"."user" ("oid");


