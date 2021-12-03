pg_dump: warning: there are circular foreign-key constraints on this table:
pg_dump:   people_people
pg_dump: You might not be able to restore the dump without using --disable-triggers or temporarily dropping the constraints.
pg_dump: Consider using a full dump instead of a --data-only dump to avoid this problem.
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--



--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--

INSERT INTO public.django_content_type VALUES (1, 'rescue', 'rescue');
INSERT INTO public.django_content_type VALUES (2, 'people', 'people');
INSERT INTO public.django_content_type VALUES (3, 'boat', 'boat');
INSERT INTO public.django_content_type VALUES (4, 'error', 'thomaspesquetquotes');
INSERT INTO public.django_content_type VALUES (5, 'admin', 'logentry');
INSERT INTO public.django_content_type VALUES (6, 'auth', 'permission');
INSERT INTO public.django_content_type VALUES (7, 'auth', 'group');
INSERT INTO public.django_content_type VALUES (8, 'auth', 'user');
INSERT INTO public.django_content_type VALUES (9, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type VALUES (10, 'sessions', 'session');


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--

INSERT INTO public.auth_permission VALUES (1, 'Can add rescue', 1, 'add_rescue');
INSERT INTO public.auth_permission VALUES (2, 'Can change rescue', 1, 'change_rescue');
INSERT INTO public.auth_permission VALUES (3, 'Can delete rescue', 1, 'delete_rescue');
INSERT INTO public.auth_permission VALUES (4, 'Can view rescue', 1, 'view_rescue');
INSERT INTO public.auth_permission VALUES (5, 'Can add people', 2, 'add_people');
INSERT INTO public.auth_permission VALUES (6, 'Can change people', 2, 'change_people');
INSERT INTO public.auth_permission VALUES (7, 'Can delete people', 2, 'delete_people');
INSERT INTO public.auth_permission VALUES (8, 'Can view people', 2, 'view_people');
INSERT INTO public.auth_permission VALUES (9, 'Can add boat', 3, 'add_boat');
INSERT INTO public.auth_permission VALUES (10, 'Can change boat', 3, 'change_boat');
INSERT INTO public.auth_permission VALUES (11, 'Can delete boat', 3, 'delete_boat');
INSERT INTO public.auth_permission VALUES (12, 'Can view boat', 3, 'view_boat');
INSERT INTO public.auth_permission VALUES (13, 'Can add thomas pesquet quotes', 4, 'add_thomaspesquetquotes');
INSERT INTO public.auth_permission VALUES (14, 'Can change thomas pesquet quotes', 4, 'change_thomaspesquetquotes');
INSERT INTO public.auth_permission VALUES (15, 'Can delete thomas pesquet quotes', 4, 'delete_thomaspesquetquotes');
INSERT INTO public.auth_permission VALUES (16, 'Can view thomas pesquet quotes', 4, 'view_thomaspesquetquotes');
INSERT INTO public.auth_permission VALUES (17, 'Can add log entry', 5, 'add_logentry');
INSERT INTO public.auth_permission VALUES (18, 'Can change log entry', 5, 'change_logentry');
INSERT INTO public.auth_permission VALUES (19, 'Can delete log entry', 5, 'delete_logentry');
INSERT INTO public.auth_permission VALUES (20, 'Can view log entry', 5, 'view_logentry');
INSERT INTO public.auth_permission VALUES (21, 'Can add permission', 6, 'add_permission');
INSERT INTO public.auth_permission VALUES (22, 'Can change permission', 6, 'change_permission');
INSERT INTO public.auth_permission VALUES (23, 'Can delete permission', 6, 'delete_permission');
INSERT INTO public.auth_permission VALUES (24, 'Can view permission', 6, 'view_permission');
INSERT INTO public.auth_permission VALUES (25, 'Can add group', 7, 'add_group');
INSERT INTO public.auth_permission VALUES (26, 'Can change group', 7, 'change_group');
INSERT INTO public.auth_permission VALUES (27, 'Can delete group', 7, 'delete_group');
INSERT INTO public.auth_permission VALUES (28, 'Can view group', 7, 'view_group');
INSERT INTO public.auth_permission VALUES (29, 'Can add user', 8, 'add_user');
INSERT INTO public.auth_permission VALUES (30, 'Can change user', 8, 'change_user');
INSERT INTO public.auth_permission VALUES (31, 'Can delete user', 8, 'delete_user');
INSERT INTO public.auth_permission VALUES (32, 'Can view user', 8, 'view_user');
INSERT INTO public.auth_permission VALUES (33, 'Can add content type', 9, 'add_contenttype');
INSERT INTO public.auth_permission VALUES (34, 'Can change content type', 9, 'change_contenttype');
INSERT INTO public.auth_permission VALUES (35, 'Can delete content type', 9, 'delete_contenttype');
INSERT INTO public.auth_permission VALUES (36, 'Can view content type', 9, 'view_contenttype');
INSERT INTO public.auth_permission VALUES (37, 'Can add session', 10, 'add_session');
INSERT INTO public.auth_permission VALUES (38, 'Can change session', 10, 'change_session');
INSERT INTO public.auth_permission VALUES (39, 'Can delete session', 10, 'delete_session');
INSERT INTO public.auth_permission VALUES (40, 'Can view session', 10, 'view_session');


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--



--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--

INSERT INTO public.auth_user VALUES (1, 'pbkdf2_sha256$260000$5tafYLHLq4A7p8cLq1mxs1$964KsceeSBYy3/ehCuIBWBaonJ8OlbVi7l2iwzCX7Vc=', '2021-12-03 05:29:20.658287+00', true, 'nuitdelinfo_2021', '', '', 'test@test.test', true, true, '2021-12-03 05:28:43.5337+00');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--



--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--



--
-- Data for Name: people_people; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--

INSERT INTO public.people_people VALUES (1, 'Florian', 'Charlaix', 'Développeur back', '{"delta":"{\"ops\":[{\"insert\":\"Étudiant en licence DevOps\\n\"}]}","html":"<p>Étudiant en licence DevOps</p>"}', '2000-10-13', NULL, '{"delta":"","html":""}', '{"delta":"","html":""}', '{"delta":"","html":""}', '{"delta":"","html":""}', '{"delta":"","html":""}', '{"delta":"{\"ops\":[{\"insert\":\"Lui même\\n\"}]}","html":"<p>Lui même</p>"}', NULL, true);
INSERT INTO public.people_people VALUES (2, 'Benoît', 'Kezel', 'Développeur front', '{"delta":"{\"ops\":[{\"insert\":\"Étudiant a Polytech\\n\"}]}","html":"<p>Étudiant a Polytech</p>"}', '2001-11-09', NULL, '{"delta":"","html":""}', '{"delta":"","html":""}', '{"delta":"","html":""}', '{"delta":"","html":""}', '{"delta":"","html":""}', '{"delta":"{\"ops\":[{\"insert\":\"Lui même\\n\"}]}","html":"<p>Lui même</p>"}', NULL, true);


--
-- Data for Name: boat_boat; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--

INSERT INTO public.boat_boat VALUES (1, 'Test', 'TEst', 'HEya', NULL, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--

INSERT INTO public.django_admin_log VALUES (1, '2021-12-03 05:29:50.767291+00', '1', 'L’homme a toujours eu besoin de se confronter à des choses qui le dépassent. C’est en sortant de sa zone de confort qu’on apprend.', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (2, '2021-12-03 05:29:56.878755+00', '2', 'À bord de l’ISS, on est derrière un blindage qui nous protège de tout : du vide, des températures extrêmes, du rayonnement… Sur Terre c’est pareil, sauf que son blindage, l’atmosphère, est infiniment ', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (3, '2021-12-03 05:30:02.154609+00', '3', 'J’ai vu la beauté de la Terre, mais aussi sa fragilité.', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (4, '2021-12-03 05:30:08.475728+00', '4', 'Le bas du CV, ce sont des activités que l’on aime faire. En les pratiquant, on apprend tout un tas de savoirs très importants. C’est ce qui m’a permis de devenir astronaute.', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (5, '2021-12-03 05:30:13.513723+00', '5', 'Ce n’est pas simple de résister aux sollicitations constantes quand le téléphone est dans votre poche et que cela permet d’échapper à un réel pas toujours marrant. Mais la vie, ce n’est pas Instagram.', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (6, '2021-12-03 05:30:20.053148+00', '6', 'Je me revois à 16 ans face à une personne qui me demande ce que je veux faire dans la vie, et moi, je ne sais pas. Cela dépend de tant de choses. A cet âge, on n’a pas les armes pour savoir ce qui nou', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (7, '2021-12-03 05:30:24.871925+00', '7', 'Je me revois à 16 ans face à une personne qui me demande ce que je veux faire dans la vie, et moi, je ne sais pas. Cela dépend de tant de choses. A cet âge, on n’a pas les armes pour savoir ce qui nou', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (8, '2021-12-03 05:30:41.430302+00', '7', 'Ce n’était pas écrit sur mon berceau que j’allais devenir astronaute.', 2, '[{"changed": {"fields": ["Text"]}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (9, '2021-12-03 05:30:49.82741+00', '8', 'Ce n’est pas simple de résister aux sollicitations constantes quand le téléphone est dans votre poche et que cela permet d’échapper à un réel pas toujours marrant. Mais la vie, ce n’est pas Instagram.', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (10, '2021-12-03 05:30:54.873559+00', '9', 'Ce n’est pas simple de résister aux sollicitations constantes quand le téléphone est dans votre poche et que cela permet d’échapper à un réel pas toujours marrant. Mais la vie, ce n’est pas Instagram.', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (11, '2021-12-03 05:31:03.588116+00', '9', 'A cet âge, on n’a pas les armes pour savoir ce qui nous plaît à 100 %. C’est un moment très difficile, qui génère énormément de stress. On a l’impression qu’on doit déterminer toute sa vie.', 2, '[{"changed": {"fields": ["Text"]}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (12, '2021-12-03 05:31:21.101359+00', '10', 'Bien travailler à l’école, c’est une clé. Ce n’est pas la seule, bien sûr, mais c’est un vrai tremplin, un accélérateur social, j’en suis l’exemple premier. Je ne suis pas là pour faire la publicité d', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (13, '2021-12-03 05:31:28.087799+00', '11', 'Le plus grand obstacle à la réussite est l''autocensure.', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (14, '2021-12-03 05:31:33.406292+00', '12', 'Le plus grand obstacle à la réussite est l''autocensure.', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (15, '2021-12-03 05:32:31.409588+00', '1', 'Florian Charlaix', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log VALUES (16, '2021-12-03 05:33:15.797492+00', '2', 'Benoît Kezel', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log VALUES (17, '2021-12-03 05:36:10.978541+00', '1', 'Sauvetage de la nuit de l''info', 1, '[{"added": {}}]', 1, 1);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--

INSERT INTO public.django_migrations VALUES (1, 'contenttypes', '0001_initial', '2021-12-03 05:27:37.09675+00');
INSERT INTO public.django_migrations VALUES (2, 'auth', '0001_initial', '2021-12-03 05:27:37.157019+00');
INSERT INTO public.django_migrations VALUES (3, 'admin', '0001_initial', '2021-12-03 05:27:37.175833+00');
INSERT INTO public.django_migrations VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-12-03 05:27:37.184081+00');
INSERT INTO public.django_migrations VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-03 05:27:37.192522+00');
INSERT INTO public.django_migrations VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-12-03 05:27:37.209656+00');
INSERT INTO public.django_migrations VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-12-03 05:27:37.219098+00');
INSERT INTO public.django_migrations VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-12-03 05:27:37.233176+00');
INSERT INTO public.django_migrations VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-12-03 05:27:37.2481+00');
INSERT INTO public.django_migrations VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-12-03 05:27:37.259678+00');
INSERT INTO public.django_migrations VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-12-03 05:27:37.262194+00');
INSERT INTO public.django_migrations VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-12-03 05:27:37.272819+00');
INSERT INTO public.django_migrations VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-12-03 05:27:37.286055+00');
INSERT INTO public.django_migrations VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-12-03 05:27:37.295356+00');
INSERT INTO public.django_migrations VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-12-03 05:27:37.306052+00');
INSERT INTO public.django_migrations VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-12-03 05:27:37.314522+00');
INSERT INTO public.django_migrations VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2021-12-03 05:27:37.323066+00');
INSERT INTO public.django_migrations VALUES (18, 'people', '0001_initial', '2021-12-03 05:27:37.330793+00');
INSERT INTO public.django_migrations VALUES (19, 'people', '0002_auto_20211202_2127', '2021-12-03 05:27:37.350945+00');
INSERT INTO public.django_migrations VALUES (20, 'people', '0003_auto_20211202_2225', '2021-12-03 05:27:37.371499+00');
INSERT INTO public.django_migrations VALUES (21, 'boat', '0001_initial', '2021-12-03 05:27:37.378121+00');
INSERT INTO public.django_migrations VALUES (22, 'boat', '0002_auto_20211203_0349', '2021-12-03 05:27:37.390133+00');
INSERT INTO public.django_migrations VALUES (23, 'error', '0001_initial', '2021-12-03 05:27:37.396802+00');
INSERT INTO public.django_migrations VALUES (24, 'rescue', '0001_initial', '2021-12-03 05:27:37.428868+00');
INSERT INTO public.django_migrations VALUES (25, 'rescue', '0002_auto_20211202_2301', '2021-12-03 05:27:37.439926+00');
INSERT INTO public.django_migrations VALUES (26, 'rescue', '0003_rescue_boats', '2021-12-03 05:27:37.458434+00');
INSERT INTO public.django_migrations VALUES (27, 'rescue', '0004_auto_20211203_0349', '2021-12-03 05:27:37.478112+00');
INSERT INTO public.django_migrations VALUES (28, 'sessions', '0001_initial', '2021-12-03 05:27:37.489143+00');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--

INSERT INTO public.django_session VALUES ('ef0bmfz8o3kmavuqvto3ku3xupesf15a', '.eJxVjDsOwjAQBe_iGlnxL2tT0nMGa9dr4wBypDipEHeHSCmgfTPzXiLitta49bzEicVZKHH63QjTI7cd8B3bbZZpbusykdwVedAurzPn5-Vw_w4q9vqtA7rg2GNi43RQ4Fgxo4XB6AQU0JBHsl5zLljAWzBjCTQqhoEVcBLvD-oSOD8:1mt18K:UCNEgM7tfumG00UOToDCeoq6aydRodihjcYIvjKFehE', '2021-12-17 05:29:20.660844+00');


--
-- Data for Name: error_thomaspesquetquotes; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--

INSERT INTO public.error_thomaspesquetquotes VALUES (1, 'L’homme a toujours eu besoin de se confronter à des choses qui le dépassent. C’est en sortant de sa zone de confort qu’on apprend.');
INSERT INTO public.error_thomaspesquetquotes VALUES (2, 'À bord de l’ISS, on est derrière un blindage qui nous protège de tout : du vide, des températures extrêmes, du rayonnement… Sur Terre c’est pareil, sauf que son blindage, l’atmosphère, est infiniment plus fin et cette fine pellicule contient toute la vie qu’on ait jamais vu à des millions d’années lumières donc ça vaut le coup de l’entretenir. On n’a pas de solution de rechange.');
INSERT INTO public.error_thomaspesquetquotes VALUES (3, 'J’ai vu la beauté de la Terre, mais aussi sa fragilité.');
INSERT INTO public.error_thomaspesquetquotes VALUES (4, 'Le bas du CV, ce sont des activités que l’on aime faire. En les pratiquant, on apprend tout un tas de savoirs très importants. C’est ce qui m’a permis de devenir astronaute.');
INSERT INTO public.error_thomaspesquetquotes VALUES (5, 'Ce n’est pas simple de résister aux sollicitations constantes quand le téléphone est dans votre poche et que cela permet d’échapper à un réel pas toujours marrant. Mais la vie, ce n’est pas Instagram.');
INSERT INTO public.error_thomaspesquetquotes VALUES (6, 'Je me revois à 16 ans face à une personne qui me demande ce que je veux faire dans la vie, et moi, je ne sais pas. Cela dépend de tant de choses. A cet âge, on n’a pas les armes pour savoir ce qui nous plaît à 100 %. C’est un moment très difficile, qui génère énormément de stress. On a l’impression qu’on doit déterminer toute sa vie.');
INSERT INTO public.error_thomaspesquetquotes VALUES (7, 'Ce n’était pas écrit sur mon berceau que j’allais devenir astronaute.');
INSERT INTO public.error_thomaspesquetquotes VALUES (8, 'Ce n’est pas simple de résister aux sollicitations constantes quand le téléphone est dans votre poche et que cela permet d’échapper à un réel pas toujours marrant. Mais la vie, ce n’est pas Instagram. Dans la Silicon Valley, ceux qui créent ces programmes font en sorte que leurs enfants passent le moins de temps possible sur les écrans.');
INSERT INTO public.error_thomaspesquetquotes VALUES (9, 'A cet âge, on n’a pas les armes pour savoir ce qui nous plaît à 100 %. C’est un moment très difficile, qui génère énormément de stress. On a l’impression qu’on doit déterminer toute sa vie.');
INSERT INTO public.error_thomaspesquetquotes VALUES (10, 'Bien travailler à l’école, c’est une clé. Ce n’est pas la seule, bien sûr, mais c’est un vrai tremplin, un accélérateur social, j’en suis l’exemple premier. Je ne suis pas là pour faire la publicité de l’éducation nationale, mais j’ai eu toutes ces ouvertures grâce au système éducatif.');
INSERT INTO public.error_thomaspesquetquotes VALUES (11, 'Le plus grand obstacle à la réussite est l''autocensure.');
INSERT INTO public.error_thomaspesquetquotes VALUES (12, 'Le plus grand obstacle à la réussite est l''autocensure.');


--
-- Data for Name: rescue_rescue; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--

INSERT INTO public.rescue_rescue VALUES (1, 'Sauvetage de la nuit de l''info', '2021-12-03', 45.782973, 4.866505, 'Une superbe nuit', '{"delta":"{\"ops\":[{\"insert\":\"Yay\\n\"}]}","html":"<p>Yay</p>"}', '{"delta":"{\"ops\":[{\"insert\":\"Les deux personnes concerner\\n\"}]}","html":"<p>Les deux personnes concerner</p>"}', NULL, true);


--
-- Data for Name: rescue_rescue_boats; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--

INSERT INTO public.rescue_rescue_boats VALUES (1, 1, 1);


--
-- Data for Name: rescue_rescue_rescuers; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--

INSERT INTO public.rescue_rescue_rescuers VALUES (1, 1, 2);


--
-- Data for Name: rescue_rescue_saved; Type: TABLE DATA; Schema: public; Owner: nuitdelinfo_2021
--

INSERT INTO public.rescue_rescue_saved VALUES (1, 1, 1);
INSERT INTO public.rescue_rescue_saved VALUES (2, 1, 2);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: boat_boat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.boat_boat_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 17, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- Name: error_thomaspesquetquotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.error_thomaspesquetquotes_id_seq', 12, true);


--
-- Name: people_people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.people_people_id_seq', 2, true);


--
-- Name: rescue_rescue_boats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.rescue_rescue_boats_id_seq', 1, true);


--
-- Name: rescue_rescue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.rescue_rescue_id_seq', 1, true);


--
-- Name: rescue_rescue_rescuers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.rescue_rescue_rescuers_id_seq', 1, true);


--
-- Name: rescue_rescue_saved_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nuitdelinfo_2021
--

SELECT pg_catalog.setval('public.rescue_rescue_saved_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

