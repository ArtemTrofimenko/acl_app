INSERT INTO user_account (id, username, password, enabled)
VALUES (1, 'user1', '$2a$10$hSUFRzewjvfhimruB/hQWufjOlfypPD7Kn2mXcqRJhm6LyBs9zAM6', true);
INSERT INTO user_account (id, username, password, enabled)
VALUES (2, 'user2', '$2a$10$VkV9iyEbyx4PB3AGP5z/i.PPcScoS1txWRexxZPozF9X0GqQZlff2', true);
INSERT INTO user_account (id, username, password, enabled)
VALUES (3, 'admin', '$2a$10$gGzdJ4HtvtbH89g6DubZCOKWAolstY2S90jvBmGDW6wPvYTKYLQwa', true);



INSERT INTO user_role(id, id_user, role_type)
values (1, 1, 'USER');
INSERT INTO user_role(id, id_user, role_type)
values (2, 2, 'USER');
INSERT INTO user_role(id, id_user, role_type)
values (3, 3, 'ADMIN');
