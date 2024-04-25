-- Grades_AssignedExams [rel12]
alter table "public"."assignedexams"  add column  "grades_oid"  int4;
alter table "public"."assignedexams"   add constraint fk_assignedexams_grades foreign key ("grades_oid") references "public"."grades" ("oid");


