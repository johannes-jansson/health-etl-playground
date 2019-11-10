create table mood (
	id bigserial primary key not null,
	date date unique not null,
	mood int not null,
	netflix boolean not null,
	sport boolean not null,
	reading boolean not null,
	outdoors boolean not null
);
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (1, '9/10/2019', 4, false, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (2, '10/3/2019', 4, true, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (3, '11/14/2018', 5, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (4, '7/16/2019', 5, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (5, '8/5/2019', 2, false, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (6, '12/26/2018', 3, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (7, '7/28/2019', 1, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (8, '9/5/2019', 3, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (9, '4/21/2019', 5, false, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (10, '5/25/2019', 1, true, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (11, '3/31/2019', 2, true, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (12, '11/9/2018', 3, false, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (13, '10/14/2019', 5, false, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (14, '1/30/2019', 4, false, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (15, '10/20/2019', 5, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (16, '7/12/2019', 1, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (17, '4/11/2019', 3, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (18, '1/5/2019', 4, false, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (19, '7/21/2019', 3, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (20, '8/30/2019', 4, false, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (21, '5/21/2019', 1, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (22, '7/6/2019', 1, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (23, '12/16/2018', 1, false, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (24, '6/3/2019', 3, false, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (25, '5/5/2019', 4, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (26, '9/14/2019', 2, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (27, '12/11/2018', 3, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (28, '4/3/2019', 4, false, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (29, '2/17/2019', 2, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (30, '5/2/2019', 4, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (31, '10/31/2019', 2, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (32, '11/17/2018', 1, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (33, '10/8/2019', 3, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (34, '4/5/2019', 3, true, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (35, '3/12/2019', 2, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (36, '5/21/2019', 3, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (37, '5/6/2019', 3, true, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (38, '5/17/2019', 5, false, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (39, '8/1/2019', 2, false, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (40, '5/18/2019', 5, false, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (41, '4/16/2019', 1, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (42, '6/17/2019', 4, false, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (43, '10/18/2019', 4, false, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (44, '10/18/2019', 2, false, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (45, '10/14/2019', 5, true, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (46, '8/4/2019', 1, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (47, '5/25/2019', 3, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (48, '11/28/2018', 2, true, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (49, '5/11/2019', 3, true, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (50, '6/9/2019', 3, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (51, '11/3/2019', 1, false, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (52, '12/24/2018', 1, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (53, '6/15/2019', 2, false, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (54, '11/2/2019', 2, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (55, '11/21/2018', 4, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (56, '2/17/2019', 2, false, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (57, '8/29/2019', 3, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (58, '10/23/2019', 2, true, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (59, '2/21/2019', 3, true, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (60, '1/22/2019', 5, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (61, '11/1/2019', 2, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (62, '2/10/2019', 3, true, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (63, '12/24/2018', 5, false, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (64, '12/27/2018', 2, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (65, '10/17/2019', 5, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (66, '10/9/2019', 1, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (67, '11/9/2018', 1, false, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (68, '7/13/2019', 3, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (69, '7/3/2019', 3, true, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (70, '5/11/2019', 3, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (71, '9/9/2019', 4, false, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (72, '12/10/2018', 2, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (73, '10/4/2019', 4, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (74, '3/28/2019', 1, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (75, '10/19/2019', 1, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (76, '1/1/2019', 2, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (77, '8/29/2019', 3, true, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (78, '3/1/2019', 4, false, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (79, '2/21/2019', 3, false, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (80, '3/24/2019', 4, false, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (81, '6/28/2019', 2, false, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (82, '1/19/2019', 5, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (83, '9/23/2019', 1, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (84, '11/15/2018', 3, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (85, '3/30/2019', 1, true, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (86, '12/23/2018', 5, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (87, '5/23/2019', 1, false, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (88, '6/22/2019', 2, false, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (89, '4/24/2019', 4, false, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (90, '6/26/2019', 3, true, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (91, '6/7/2019', 1, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (92, '3/27/2019', 3, false, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (93, '12/25/2018', 1, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (94, '3/22/2019', 3, false, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (95, '8/21/2019', 5, false, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (96, '6/30/2019', 2, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (97, '4/23/2019', 1, false, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (98, '1/23/2019', 3, false, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (99, '12/10/2018', 1, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (100, '2/7/2019', 5, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (101, '4/14/2019', 1, false, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (102, '4/9/2019', 3, true, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (103, '12/27/2018', 5, true, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (104, '4/11/2019', 1, false, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (105, '5/7/2019', 5, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (106, '6/15/2019', 3, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (107, '8/13/2019', 2, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (108, '6/30/2019', 4, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (109, '7/12/2019', 5, true, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (110, '5/30/2019', 3, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (111, '8/22/2019', 4, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (112, '1/7/2019', 3, false, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (113, '3/31/2019', 1, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (114, '1/14/2019', 3, false, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (115, '4/22/2019', 1, false, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (116, '3/3/2019', 4, true, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (117, '5/9/2019', 5, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (118, '1/13/2019', 4, false, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (119, '4/19/2019', 2, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (120, '6/23/2019', 2, true, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (121, '9/27/2019', 5, false, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (122, '8/30/2019', 1, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (123, '4/20/2019', 3, true, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (124, '7/27/2019', 5, false, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (125, '10/2/2019', 3, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (126, '9/25/2019', 2, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (127, '12/31/2018', 5, true, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (128, '7/29/2019', 1, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (129, '2/12/2019', 4, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (130, '3/17/2019', 2, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (131, '12/27/2018', 3, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (132, '1/17/2019', 1, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (133, '1/13/2019', 2, false, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (134, '12/9/2018', 4, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (135, '5/1/2019', 5, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (136, '5/19/2019', 3, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (137, '3/5/2019', 5, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (138, '8/1/2019', 4, true, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (139, '11/14/2018', 2, false, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (140, '9/22/2019', 3, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (141, '8/17/2019', 1, true, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (142, '8/11/2019', 1, false, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (143, '6/20/2019', 1, false, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (144, '10/14/2019', 2, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (145, '9/4/2019', 5, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (146, '10/21/2019', 5, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (147, '4/13/2019', 5, true, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (148, '8/13/2019', 5, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (149, '1/27/2019', 5, true, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (150, '8/10/2019', 1, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (151, '8/9/2019', 2, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (152, '12/5/2018', 1, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (153, '7/5/2019', 5, false, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (154, '8/26/2019', 3, true, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (155, '7/1/2019', 2, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (156, '12/28/2018', 2, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (157, '6/1/2019', 1, true, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (158, '5/4/2019', 2, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (159, '1/7/2019', 1, true, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (160, '3/1/2019', 3, false, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (161, '2/24/2019', 1, false, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (162, '7/17/2019', 1, false, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (163, '12/7/2018', 1, true, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (164, '9/10/2019', 4, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (165, '7/5/2019', 3, false, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (166, '3/5/2019', 1, true, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (167, '3/1/2019', 5, false, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (168, '10/9/2019', 5, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (169, '1/18/2019', 3, true, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (170, '2/11/2019', 5, true, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (171, '6/24/2019', 4, true, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (172, '1/4/2019', 3, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (173, '8/30/2019', 2, false, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (174, '9/29/2019', 1, true, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (175, '1/10/2019', 2, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (176, '5/2/2019', 5, false, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (177, '6/29/2019', 4, false, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (178, '2/26/2019', 1, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (179, '3/27/2019', 4, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (180, '12/4/2018', 3, false, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (181, '11/16/2018', 1, false, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (182, '4/21/2019', 4, true, false, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (183, '2/13/2019', 2, true, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (184, '1/18/2019', 3, false, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (185, '12/31/2018', 1, false, false, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (186, '11/16/2018', 2, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (187, '8/25/2019', 5, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (188, '2/21/2019', 2, true, true, false, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (189, '1/28/2019', 4, false, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (190, '3/30/2019', 5, false, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (191, '12/13/2018', 3, false, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (192, '9/23/2019', 2, false, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (193, '8/6/2019', 4, false, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (194, '2/21/2019', 1, true, false, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (195, '9/1/2019', 5, true, false, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (196, '2/24/2019', 3, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (197, '5/10/2019', 4, false, true, true, false) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (198, '9/22/2019', 1, false, true, false, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (199, '1/18/2019', 2, true, true, true, true) on conflict (date) do nothing;
insert into mood (id, date, mood, netflix, sport, reading, outdoors) values (200, '11/20/2018', 3, true, false, false, false) on conflict (date) do nothing;