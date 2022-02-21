INSERT INTO acl_sid (id, principal, sid) VALUES
(1, true , 'user1'),
(2, true , 'user2'),
(3, true , 'admin');

INSERT INTO acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) VALUES
(1, 1, 1, NULL, 3, false),
(2, 1, 2, NULL, 3, false),
(3, 1, 3, NULL, 3, false);

INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
(1, 1, 1, 1, 1, true, true, true),
(2, 1, 2, 3, 1, true, true, true),
(3, 1, 3, 3, 2, true, true, true);

INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
(4, 2, 1, 2, 1, true, true, true),
(5, 2, 2, 3, 1, true, true, true),
(6, 2, 3, 3, 2, true, true, true);

INSERT INTO acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) VALUES
(7, 3, 1, 3, 1, true, true, true),
(8, 3, 2, 3, 2, true, true, true);
