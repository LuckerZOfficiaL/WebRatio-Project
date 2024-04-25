-- Exam_AssignedExams [rel11]
alter table "public"."assignedexams"  add column  "exam_exam_code"  int4;
alter table "public"."assignedexams"   add constraint fk_assignedexams_exam foreign key ("exam_exam_code") references "public"."exam" ("exam_code");


