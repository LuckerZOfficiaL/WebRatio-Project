-- User_AssignedExams [rel1]
alter table "public"."assignedexams"  add column  "user_oid"  int4;
alter table "public"."assignedexams"   add constraint fk_assignedexams_user foreign key ("user_oid") references "public"."user" ("oid");


