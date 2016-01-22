BEGIN TRANSACTION;
CREATE TABLE "tariff_skills" (
	`id`	int,
	`order`	real,
	`level`	text,
	`skill`	text,
	`shaped`	int,
	`shape_bonus`	real,
	`start_position`	text,
	`end_position`	text,
	`tariff`	real,
	`fig_notation`	text,
	`description`	text,
	`starred`	INTEGER DEFAULT 0,
	PRIMARY KEY(id)
);
INSERT INTO `tariff_skills` VALUES (1,0.0,'Elite','&frac12; In &frac12; Out Triffus',1,0.3,'Feet','Feet',1.8,'12 1 - 1 o','Tripple back somersault with &frac12; twist in 1st somersault and &frac12; twists in 3rd somersault phase',NULL),
 (2,0.0,'Elite','&frac12; In Rudi Out Triffus',1,0.3,'Feet','Feet',2.0,'12 1 - 3 o','Tripple back somersault with &frac12; twist in 1st somersault and 1&frac12; twists in 3rd somersault phase',NULL),
 (3,0.0,'Elite','&frac12; Out Triffus',1,0.3,'Feet','Feet',1.7,'12 - - 1 o','Triple somersault with &frac12; twist in the last somersault.',NULL),
 (4,0.0,'Elite','&frac12; In - &frac12; Out',1,0.2,'Feet','Feet',1.2,'8 1 1 o','Double back somersault with &frac12; twist in each somersault phase',NULL),
 (5,0.0,'Elite','&frac12; In - Back Out',1,0.2,'Feet','Feet',1.1,'8 1 - o','Double front somersault with &frac12; twist in 1st somersault',NULL),
 (6,0.0,'Elite','&frac12; In - Randy Out',1,0.2,'Feet','Feet',1.6,'8 1 5 o','Double back somersault with &frac12; twist in 1st somersault and 2&frac12; twists in 2nd somersault phase',NULL),
 (7,0.0,'Elite','&frac12; In - Rudi Out',1,0.2,'Feet','Feet',1.4,'8 1 3 o','Double back somersault with &frac12; twist in 1st somersault and 1&frac12; twists in 2nd somersault phase',NULL),
 (8,0.0,'Elite','&frac12; Out',1,0.2,'Feet','Feet',1.1,'8 - 1 o','Double front somersault with &frac12; twist in 2nd somersault.',NULL),
 (9,0.0,'Elite','&frac12; Out Quad',1,0.4,'Feet','Feet',2.3,'16 - - - 1 o','Quadruple somersault with &frac12; twist in the last somersault.',NULL),
 (10,1.4,'Novice','&frac12; Twist Jump',0,0.0,'Feet','Feet',0.1,'0 1','',NULL),
 (11,4.1,'Novice','&frac12; Twist to Back Drop',0,0.0,'Feet','Back',0.2,'1 1','',NULL),
 (12,1.1,'Advanced','&frac12; Twist to Crash Dive',0,0.0,'Feet','Back',0.4,'3 1','',NULL),
 (13,3.3,'Novice','&frac12; Twist to Feet (from front)',0,0.0,'Front','Feet',0.2,'1 1','',NULL),
 (14,4.3,'Novice','&frac12; Twist to Feet (from back)',0,0.0,'Back','Feet',0.2,'1 1','',NULL),
 (15,2.3,'Novice','&frac12; Twist to Feet (from seat)',0,0.0,'Seat','Feet',0.1,'0 1','',NULL),
 (16,3.1,'Novice','&frac12; Twist to Front Drop',0,0.0,'Feet','Front',0.2,'1 1','Backwards take off. Also known as an Airplane',NULL),
 (17,2.1,'Novice','&frac12; Twist to Seat Drop',0,0.0,'Feet','Seat',0.1,'0 1','',NULL),
 (81,0.0,'Elite','Double Front',1,0.2,'Feet','Feet',1.0,'8 - - o','Double frontsomersault',NULL),
 (19,1.5,'Novice','Full Twist Jump',0,0.0,'Feet','Feet',0.2,'0 2','Variation of the Clara Twist Jump - The worst full twist ever undertaken by a person ever...',NULL),
 (20,0.0,'Elite','1 &frac34; Front S/S',1,0.2,'Feet','Back',0.8,'7 - o','Also known as a 1 and 3',NULL),
 (21,0.0,'Elite','2 &frac34; Front S/S',1,0.2,'Feet','Back',1.3,'11 - - - o','',NULL),
 (22,0.0,'Elite','Adolph',0,0.0,'Feet','Feet',1.2,'4 7 /','3&frac12; twisting front somersault. Also known as an Ady',NULL),
 (23,0.0,'Elite','Baby Fliffus',0,0.0,'Back','Feet',0.7,'5 1 -','From back landing, 1 &frac14; front somersault to feet with early half twist. Different move to barani ball-out, though it involves the same amount of rotation and twist from the same take off position.',NULL),
 (24,4.0,'Novice','Back Drop',0,0.0,'Feet','Back',0.1,'1 -','',NULL),
 (25,0.0,'Elite','Back In - Full Out',1,0.2,'Feet','Feet',1.2,'8 - 2 o','Double back somersault with 1 twist in 2nd somersault phase',NULL),
 (26,2.0,'Intermediate','Back Pullover to Feet',0,0.0,'Back','Feet',0.3,'3 -','&frac34; back somersault from back landing',NULL),
 (27,4.0,'Intermediate','Back S/S',1,0.1,'Feet','Feet',0.5,'4 - o','',NULL),
 (28,4.1,'Intermediate','Back S/S to Seat',1,0.1,'Feet','Seat',0.5,'4 - o','',NULL),
 (29,4.2,'Novice','To Feet (from back)',0,0.0,'Back','Feet',0.1,'1 -','',NULL),
 (30,1.2,'Advanced','Ball Out',1,0.0,'Back','Feet',0.6,'5 - o','1 &frac14; front somersault from back landing to feet',NULL),
 (31,0.0,'Elite','Ball Out - &frac12; Out',1,0.2,'Back','Feet',1.2,'9 - 1 o','',NULL),
 (32,0.0,'Elite','Ball Out - Adolf',0,0.0,'Back','Feet',1.3,'5 7 /','',NULL),
 (33,0.0,'Elite','Ball Out - Barani',1,0.0,'Back','Feet',0.7,'5 1 o','1 &frac14; front somersault (from back landing) with &frac12; twist to feet',NULL),
 (34,0.0,'Elite','Ball Out - Randy',0,0.0,'Back','Feet',1.1,'5 5 /','1 &frac14; front somersault (from back landing) with 2&frac12; twists to feet',NULL),
 (35,0.0,'Elite','Ball Out - Rudy',0,0.0,'Back','Feet',0.9,'5 3 /','1 &frac14; front somersault (from back landing) with 1&frac12; twists to feet',NULL),
 (36,3.1,'Intermediate','Barani',1,0.0,'Feet','Feet',0.6,'4 1 o','Front somersault with &frac12; twist',NULL),
 (37,0.0,'Elite','Barani In - Back Out',0,0.0,'Feet','Feet',1.1,'8 1 - /','Double front somersault with &frac12; twist (in the first somersault phase)',NULL),
 (38,0.0,'Elite','Barani Out',0,0.0,'Feet','Feet',1.1,'8 - 1 /','Double front somersault with &frac12; twist (in the second somersault phase).',NULL),
 (40,2.1,'Intermediate','Turnover / Bounce Roll',1,0.0,'Back','Back',0.5,'4 - o','Front somersault from back landing to back landing',NULL),
 (41,1.3,'Intermediate','Cat Twist',0,0.0,'Back','Back',0.2,'0 2','Full twist from back to back rotating around longitudinal axis, the same axis as normal full twists. There is no somersault rotation',NULL),
 (42,1.4,'Advanced','Cody',1,0.1,'Front','Feet',0.6,'5 - o','Any somersault from front landing. Usually 1 &frac14; back somersault from front to feet but &frac34; front somersaulting cody is also seen',NULL),
 (43,2.0,'Advanced','Corkscrew',0,0.0,'Back','Back',0.5,'2 3','From back landing, 1&frac12; twists to back drop (with 180&deg; forward rotation). In other words a cradle with an extra full twist',NULL),
 (44,1.4,'Intermediate','Cradle',0,0.0,'Back','Back',0.3,'2 1','Starting from back, &frac12; twist to back with 180&deg; forward rotation around lateral axis',NULL),
 (45,1.0,'Advanced','Crash Dive',1,0.0,'Feet','Back',0.3,'3 - o','&frac34; front somersault from feet to back landing',NULL),
 (46,0.0,'Elite','Double Back',1,0.2,'Feet','Feet',1.0,'8 - - o','Double back somersault',NULL),
 (47,0.0,'Elite','Double Bounce-Roll',1,0.2,'Back','Back',1.0,'8 - - o','Double front somersault (720&deg;) from back landing to back landing',NULL),
 (48,0.0,'Elite','Double Full',0,0.0,'Feet','Feet',0.9,'4 4 /','Single back somersault with 2 twists',NULL),
 (49,3.0,'Novice','Front Drop',0,0.0,'Feet','Front',0.1,'1 -','',NULL),
 (50,3.0,'Intermediate','Front S/S',1,0.1,'Feet','Feet',0.5,'4 - o','',NULL),
 (51,3.2,'Novice','To Feet (from front)',0,0.0,'Front','Feet',0.1,'1 -','',NULL),
 (52,0.0,'Elite','Full',0,0.0,'Feet','Feet',0.7,'4 2 /','Single back somersault with 1 twist',NULL),
 (53,0.0,'Elite','Full In - &frac12; Out',1,0.2,'Feet','Feet',1.3,'8 2 1 o','Double front somersault with 1 twist in 1st somersault, &frac12; twist in 2nd somersault',NULL),
 (54,0.0,'Elite','Full In - Back Out',1,0.2,'Feet','Feet',1.2,'8 2 - o','Double back somersault with 1 twist in 1st somersault',NULL),
 (55,0.0,'Elite','Full In - Double Full Out',1,0.2,'Feet','Feet',1.6,'8 2 4 o','',NULL),
 (56,0.0,'Elite','Full In - Full Out',1,0.2,'Feet','Feet',1.4,'8 2 2 o','Double back somersault with 1 twist in both 360&deg; phases',NULL),
 (57,0.0,'Elite','Full In - Rudi Out',1,0.2,'Feet','Feet',1.5,'8 2 3 o','Double front somersault with 1 twist in 1st somersault, 1&frac12; twist in 2nd somersault',NULL),
 (58,0.0,'Elite','Full Out',1,0.2,'Feet','Feet',1.2,'8 - 2 o','Double back somersault with 1 twist in 2nd somersault',NULL),
 (60,2.4,'Novice','Full Twist to Feet (from seat)',0,0.0,'Seat','Feet',0.2,'0 2','',NULL),
 (61,4.4,'Novice','Full Twist to Feet (from back)',0,0.0,'Back','Feet',0.3,'1 2','',NULL),
 (62,3.4,'Novice','Full Twist to Feet (from front)',0,0.0,'Front','Feet',0.3,'1 2','',NULL),
 (63,1.3,'Advanced','Lazy Back',1,0.0,'Feet','Front',0.3,'3 - o','',NULL),
 (64,1.2,'Intermediate','Log Roll',0,0.0,'Front','Front',0.2,'0 2','Full twist from front to front rotating around the longitudinal axis. Not the same as Cruise (lateral axis) or a Turntable (dorso-ventral axis) both of which also start and end in front position',NULL),
 (65,0.0,'Elite','Miller',1,0.2,'Feet','Feet',1.6,'8 2 1 o','',NULL),
 (66,1.3,'Novice','Pike Jump',0,0.0,'Feet','Feet',0.0,'<','',NULL),
 (67,0.0,'Elite','Poliarush / Miller Plus',1,0.2,'Feet','Feet',1.8,'8 4 4 o','Double back somersault with 2 twists in each. Also known as a killer. Named after',NULL),
 (68,0.0,'Elite','Randolph / Randy',0,0.0,'Feet','Feet',1.0,'4 5 /','Single front somersault with 2&frac12; twists',NULL),
 (69,0.0,'Elite','Randy Out',1,0.2,'Feet','Feet',1.5,'8 - 5 o','Double front somersault with 2&frac12; twists in 2nd somersult',NULL),
 (70,1.1,'Intermediate','Roller',0,0.0,'Seat','Seat',0.2,'0 2','Full twist from seat to seat rotating around the longitudinal axis. The same axis as normal full twists',NULL),
 (71,0.0,'Elite','Rudi Out',1,0.2,'Feet','Feet',1.3,'8 - 3 o','Double front somersault with 1&frac12; twists in 2nd somersult',NULL),
 (72,0.0,'Elite','Rudi Out Triffus',1,0.2,'Feet','Feet',1.8,'12 - - 3 o','Tripple front somersault with 1&frac12; twists',NULL),
 (73,0.0,'Elite','Rudolph / Rudi',0,0.0,'Feet','Feet',0.8,'4 3 /','Single front somersault with 1&frac12; twists',NULL),
 (74,2.5,'Novice','Seat &frac12; Twist to Seat Drop',0,0.0,'Seat','Seat',0.1,'0 1','',NULL),
 (75,2.0,'Novice','Seat Drop',0,0.0,'Feet','Seat',0.0,'0 -','',NULL),
 (76,2.2,'Novice','To Feet (from seat)',0,0.0,'Seat','Feet',0.0,'0 -','',NULL),
 (77,1.2,'Novice','Straddle Jump',0,0.0,'Feet','Feet',0.0,'0 -','',NULL),
 (79,0.0,'Elite','Triffus (Pike)',0,0.0,'Feet','Feet',1.8,'12 - - 1 <','',NULL),
 (80,1.1,'Novice','Tuck Jump',0,0.0,'Feet','Feet',0.0,'o','',NULL),
 (82,0.0,'Elite','Periwinkle',0,0.2,'Feet','Back',1.0,'7 2 - o','1 &frac34; front somersault with full twist in the first somersault',NULL);
COMMIT;