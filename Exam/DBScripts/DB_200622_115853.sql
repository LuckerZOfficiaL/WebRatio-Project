-- Exam_AssignedExams [rel11]
alter table "public"."assignedexams"  add column  "exam_exam_code_2"  int4;
alter table "public"."assignedexams"   add constraint fk_assignedexams_exam_2 foreign key ("exam_exam_code_2") references "public"."exam" ("exam_code");


