-- User_Exam [rel9]
alter table "public"."exam"  add column  "user_oid"  int4;
alter table "public"."exam"   add constraint fk_exam_user foreign key ("user_oid") references "public"."user" ("oid");


