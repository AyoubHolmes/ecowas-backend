DROP TABLE IF EXISTS "country";
CREATE TABLE "public"."country" (
    "id" integer NOT NULL,
    "label" character varying NOT NULL,
    CONSTRAINT "PK_bf6e37c231c4f4ea56dcd887269" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "country" ("id", "label") VALUES
(1,	'Country'),
(2,	'Benin'),
(3,	'Burkina Faso'),
(4,	'Cabo Verde'),
(5,	'Cote d''Ivoire'),
(6,	'Ghana'),
(7,	'Guinea'),
(8,	'Guinea-Bissau'),
(9,	'Liberia'),
(10,	'Mali'),
(11,	'Niger'),
(12,	'Nigeria'),
(13,	'Senegal'),
(14,	'Sierra Leone'),
(15,	'Gambia, The'),
(16,	'Togo'),
(17,	'ECOWAS');

DROP TABLE IF EXISTS "kpi";
CREATE TABLE "public"."kpi" (
    "id" integer NOT NULL,
    "label" character varying NOT NULL,
    "parentId" integer,
    CONSTRAINT "PK_56589835e31cc0331684d2d28a7" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "kpi" ("id", "label", "parentId") VALUES
(1,	'Health and nutrition',	NULL),
(2,	'Fertility rate',	1),
(3,	'Maternal mortality rate',	1),
(4,	'Under-5 mortality rate',	1),
(5,	'Under-5 stunting rate',	1),
(6,	'Life expectancy at birth',	1),
(7,	'Government health exp.',	1),
(8,	'Child Marriage',	1),
(9,	'Education, skills and labor participation',	NULL),
(10,	'Government Education exp.',	9),
(11,	'Ratio of teachers',	9),
(12,	'Children out of school',	9),
(13,	'Mean years of schooling',	9),
(14,	'Harmonized test scores',	9),
(15,	'Youth NEET',	9),
(16,	'Youth literacy rate',	9),
(17,	'Number of citations',	9),
(18,	'Entrepreneurship, financial inclusion and digital economy',	NULL),
(19,	'Penetration rate fin services',	18),
(20,	'Individuals using Internet',	18),
(21,	'New business density',	18),
(22,	'Integrated index (average per theme)',	NULL);

DROP TABLE IF EXISTS "kpi_value";
DROP SEQUENCE IF EXISTS kpi_value_id_seq;
CREATE SEQUENCE kpi_value_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."kpi_value" (
    "id" integer DEFAULT nextval('kpi_value_id_seq') NOT NULL,
    "ranking" double precision NOT NULL,
    "baseline" double precision NOT NULL,
    "latestValue" double precision NOT NULL,
    "targetLatestValue" double precision NOT NULL,
    "target2030" double precision NOT NULL,
    "progressMade" double precision NOT NULL,
    "distanceToTarget" double precision NOT NULL,
    "directionGoodPerformance" double precision NOT NULL,
    "kpiId" integer NOT NULL,
    "countryId" integer NOT NULL,
    CONSTRAINT "PK_6b4a10260242a07160894fd5df8" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "kpi_value" ("id", "ranking", "baseline", "latestValue", "targetLatestValue", "target2030", "progressMade", "distanceToTarget", "directionGoodPerformance", "kpiId", "countryId") VALUES
(1,	2,	0.21,	0.22,	0.25,	0.43,	0.12,	5.03,	3.07,	22,	2),
(2,	2,	0.25,	0.27,	0.29,	0.46,	0.12,	5.03,	3.07,	22,	3),
(3,	2,	0.46,	0.46,	0.51,	0.73,	0.12,	5.03,	3.07,	22,	4),
(4,	2,	0.23,	0.26,	0.27,	0.47,	0.12,	5.03,	3.07,	22,	5),
(5,	2,	0.31,	0.34,	0.35,	0.55,	0.12,	5.03,	3.07,	22,	6),
(6,	2,	0.16,	0.18,	0.19,	0.38,	0.12,	5.03,	3.07,	22,	7),
(7,	2,	0.13,	0.17,	0.16,	0.32,	0.12,	5.03,	3.07,	22,	8),
(8,	2,	0.19,	0.19,	0.22,	0.4,	0.12,	5.03,	3.07,	22,	9),
(9,	2,	0.14,	0.17,	0.18,	0.38,	0.12,	5.03,	3.07,	22,	10),
(10,	2,	0.08,	0.1,	0.12,	0.3,	0.12,	5.03,	3.07,	22,	11),
(11,	2,	0.17,	0.13,	0.22,	0.46,	0.12,	5.03,	3.07,	22,	12),
(12,	2,	0.25,	0.3,	0.29,	0.49,	0.12,	5.03,	3.07,	22,	13),
(13,	2,	0.19,	0.21,	0.22,	0.43,	0.12,	5.03,	3.07,	22,	14),
(14,	2,	0.22,	0.28,	0.27,	0.46,	0.12,	5.03,	3.07,	22,	15),
(15,	2,	0.26,	0.28,	0.29,	0.44,	0.12,	5.03,	3.07,	22,	16),
(16,	1,	0.22,	0.24,	0.25,	0.45,	0.12,	0.02,	3.07,	22,	17),
(17,	1,	0.28,	0.27,	0.25,	0.33,	0.12,	5.03,	3.07,	1,	2),
(18,	1,	4.91,	4.77,	0.25,	4.66,	0.12,	5.03,	3.07,	2,	2),
(19,	1,	397,	4.77,	0.25,	368.22,	0.12,	5.03,	3.07,	3,	2),
(20,	1,	95.1,	90.3,	0.25,	82.04,	0.12,	5.03,	3.07,	4,	2),
(21,	1,	32.9,	31.3,	0.25,	29.41,	0.12,	5.03,	3.07,	5,	2),
(22,	1,	61.17,	61.77,	0.25,	62.49,	0.12,	5.03,	3.07,	6,	2),
(23,	1,	3.73,	2.96,	0.25,	4.05,	0.12,	5.03,	3.07,	7,	2),
(24,	1,	2.74,	30.6,	0.25,	5,	0.12,	5.03,	3.07,	8,	2),
(25,	2,	0.26,	0.21,	0.25,	0.31,	0.12,	5.03,	3.07,	9,	2),
(26,	3,	3.54,	2.97,	0.25,	3.62,	0.12,	5.03,	3.07,	10,	2),
(27,	4,	55.66,	49.73,	0.25,	55.11,	0.12,	5.03,	3.07,	11,	2),
(28,	5,	2.97,	6.72,	0.25,	2.9,	0.12,	5.03,	3.07,	12,	2),
(29,	5,	3.8,	3.8,	0.25,	4.03,	0.12,	5.03,	3.07,	13,	2),
(30,	4,	384,	383.92,	0.25,	401.77,	0.12,	5.03,	3.07,	14,	2),
(31,	3,	31.7,	36.66,	0.25,	28.11,	0.12,	5.03,	3.07,	15,	2),
(32,	4,	60.95,	60.95,	0.25,	64.38,	0.12,	5.03,	3.07,	16,	2),
(33,	7,	9.04,	0.44,	0.25,	10.45,	0.12,	5.03,	3.07,	17,	2),
(35,	6,	69.21,	111.79,	0.25,	84.74,	0.12,	5.03,	3.07,	19,	2),
(36,	7,	13.3,	29,	0.25,	15.68,	0.12,	5.03,	3.07,	20,	2),
(37,	4,	0.49,	0.61,	0.25,	0.57,	0.12,	5.03,	3.07,	21,	2),
(38,	5,	0.38,	0.36,	0.25,	0.44,	0.12,	5.03,	3.07,	1,	3),
(39,	6,	5.27,	5.11,	0.25,	5.01,	0.12,	5.03,	3.07,	2,	3),
(40,	8,	320,	4.11,	0.25,	296.8,	0.12,	5.03,	3.07,	3,	3),
(41,	2,	93.9,	87.5,	0.25,	81.01,	0.12,	5.03,	3.07,	4,	3),
(42,	3,	28.3,	25.5,	0.25,	25.3,	0.12,	5.03,	3.07,	5,	3),
(43,	4,	60.77,	61.58,	0.25,	62.08,	0.12,	5.03,	3.07,	6,	3),
(44,	5,	11.03,	8.78,	0.25,	11.98,	0.12,	5.03,	3.07,	7,	3),
(45,	6,	12.01,	7.91,	0.25,	11.04,	0.12,	5.03,	3.07,	8,	3),
(46,	3,	0.32,	0.31,	0.25,	0.35,	0.12,	5.03,	3.07,	9,	3),
(47,	2,	5.63,	5.79,	0.25,	5.77,	0.12,	5.03,	3.07,	10,	3),
(48,	1,	45.36,	41.49,	0.25,	44.91,	0.12,	5.03,	3.07,	11,	3),
(49,	5,	22.99,	24.5,	0.25,	22.46,	0.12,	5.03,	3.07,	12,	3),
(50,	6,	1.6,	1.6,	0.25,	1.7,	0.12,	5.03,	3.07,	13,	3),
(51,	5,	404,	403.65,	0.25,	422.69,	0.12,	5.03,	3.07,	14,	3),
(52,	6,	24.04,	24.56,	0.25,	21.31,	0.12,	5.03,	3.07,	15,	3),
(53,	6,	58.87,	58.87,	0.25,	62.19,	0.12,	5.03,	3.07,	16,	3),
(54,	5,	3.74,	0.54,	0.25,	10.45,	0.12,	5.03,	3.07,	17,	3),
(56,	2,	43.37,	110.43,	0.25,	53.1,	0.12,	5.03,	3.07,	19,	3),
(57,	2,	12,	18,	0.25,	14.15,	0.12,	5.03,	3.07,	20,	3),
(58,	2,	0.33,	0.33,	0.25,	0.38,	0.12,	5.03,	3.07,	21,	3),
(34,	5,	0.09,	0.17,	0.25,	0.3,	0.12,	5.03,	3.07,	18,	2),
(55,	4,	0.06,	0.14,	0.25,	0.29,	0.12,	5.03,	3.07,	18,	3);

ALTER TABLE ONLY "public"."kpi" ADD CONSTRAINT "FK_53626dce20758d209e6007b5c85" FOREIGN KEY ("parentId") REFERENCES kpi(id) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."kpi_value" ADD CONSTRAINT "FK_31b37fc120db0a3354757e4247c" FOREIGN KEY ("kpiId") REFERENCES kpi(id) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."kpi_value" ADD CONSTRAINT "FK_702ae2ff929852654817c9e8851" FOREIGN KEY ("countryId") REFERENCES country(id) NOT DEFERRABLE;
