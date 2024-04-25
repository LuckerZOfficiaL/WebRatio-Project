-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "public"."user"  add column  "group_oid_2"  int4;
alter table "public"."user"   add constraint fk_user_group_2 foreign key ("group_oid_2") references "public"."group" ("oid");


