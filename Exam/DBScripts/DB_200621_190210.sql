-- User_AssignedExams [rel1]
create table "public"."user_assignedexams" (
   "user_oid"  int4 not null,
   "assignedexams_oid"  int4 not null,
  primary key ("user_oid", "assignedexams_oid")
);
alter table "public"."user_assignedexams"   add constraint fk_user_assignedexams_user foreign key ("user_oid") references "public"."user" ("oid");
alter table "public"."user_assignedexams"   add constraint fk_user_assignedexams_assigned foreign key ("assignedexams_oid") references "public"."assignedexams" ("oid");


