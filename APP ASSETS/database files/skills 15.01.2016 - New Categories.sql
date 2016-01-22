-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2016 at 06:55 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bouncebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fig_notation` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tariff` float NOT NULL,
  `shape_bonus` float NOT NULL DEFAULT '0',
  `start_position` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `end_position` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `long_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `coaching_points` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prereq` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `lateral_prog` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linear_prog` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vid` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `level`, `fig_notation`, `tariff`, `shape_bonus`, `start_position`, `end_position`, `short_desc`, `long_desc`, `coaching_points`, `prereq`, `lateral_prog`, `linear_prog`, `vid`) VALUES
(null, 'Tuck Jump', 'Shape', ' o ', 0, 0, 'Feet', 'Feet', 'A jump which displays the tucked shape.', 'A big tall straight bounce displaying a tucked shape at the top of the bounce. Useful for beginners to get used to how it feels to move the body during a bounce, useful for more skilled competitors to demonstrate their body control, core strength and flexibility. Getting into and out of the tucked shape is one of the fundamental body movements of trampoline gymnastics. The others basic shapes are: straight(link), piked(link), and straddled pike(link). When you get comfortable with making your tucked shape at the top of your bounce our coaches will start asking you to "line out". This involves pushing back to the straight shape as soon as you''ve displayed your beautiful tuck. Your arms should reamin in line with your body. The best way to describe a good tuck jump/line out is "explosive". Get into the shape fast, get out of the shape fast. There is no requirement to display the shape for as long as possible. In fact, this is undesireable. The technical description of the tucked shape cn be found in the FIG code of points 2013-2016 section 14.6.3. It says that "The angle between the upper body and thighs must be equal to or less than 135 degrees and the angle between the thighs and lower legs must be equal to or less than 135 degrees." Uniquely to the tucked position section 14.4 also states "In the tucked position the hands should touch the legs below the knees except in the twisting phase of multiple somersaults".', 'Take off like a straight jump. Get in and out of the shape rapidly once you''re at the top of your bounce. Straight arms. Knees to chest. Touch the legs below the knees. Pointed toes\n', '', '["Pike Jump","Straddle Jump","Half Twist Jump"]', '["Seat Drop"]', 'Line out. Big stretch up. What to do if falling forwards/backwards during.'),
(null, 'Pike Jump', 'Shape', '<', 0, 0, 'Feet', 'Feet', 'A jump which displays the piked shape.', 'A big stretchy straight bounce displaying a piked shape at the top of the bounce. Useful for beginners to get used to how it feels to move the body during a bounce, useful for more skilled competitors to demonstrate their body control, core strength and flexibility. Many beginners find this one of the harder shapes to make. See the body prep. section for ways to improve your pike jump! Making the piked shape is one of the fundamental body movements of trampoline gymnastics. The others basic shapes are: straight(link), tucked(link), and straddled pike(link). When you get comfortable with making your piked shape at the top of your bounce our coaches will start asking you to "line out". This involves pushing back to the straight shape as soon as you''ve displayed your perfect pin-point precise pike. Your arms should reamin in line with your body. Many gymnasts find it helps to imagine yourself putting on trousers to start learning to line-out. See the video for this skill if you find that difficult to imagine. The best way to describe a good pike jump/line out is "snappy". Get into the shape fast, get out of the shape fast. There is no requirement to display the shape for as long as possible. In face, this is undesireable. The technical description of the piked shape can be found in the FIG code of points 2013-2016 section 14.6.2. It says that "The angle between the upper body and thighs must be equal to or less than 135 degrees and the angle between the thighs and lower legs must be greater than 135 degrees." The 2013-2016 code of points has no requirement to touch the legs during a pike jump. Many coaches will still encourage a gymnast to do so, though. A good rule of thumb is that if you''re not telling your arms what to do, they''re proabably doing something wrong. Touching your toes (or at least trying to) ensures taht your arms are kept "straight and/or held close to the body" as FIG requiers. Some judges may not be aware of the omission in the new code, too. Long story short: reach for your toes, it''s pretty! ', 'Take off like a straight jump. Get in and out of the shape rapidly once you''re at the top of your bounce. Straight arms. Reach for your toes during. Pulling on your trousers. Pointed toes. Reach for your toes.', '["Straight Bouncing"]', '["Tuck Jump","Straddle Jump","Straddle Jump"]', '["Seat Drop","Seat Drop"]', '"Pulling on your trousers" for line out. Floor exercises to improve your piked shape. Older coaches talking briefly about what the biggest hurdles to learning a good pike jump are.'),
(null, 'Straddle Jump', 'Shape', '0 -', 0, 0, 'Feet', 'Feet', 'A jump which displays the straddle shape.', 'A big confident straight bounce displaying a straddled pike (usually just called a "straddle") shape at the top of the bounce. Useful for beginners to get used to how it feels to move the body during a bounce, useful for more skilled competitors to demonstrate their body control, core strength and flexibility. See the body prep. section, or ask acoach at training for ways to improve your straddle shape! Making the straddle shape is one of the fundamental body movements of trampoline gymnastics. The others basic shapes are: straight(link), tucked(link), and piked(link). Out of all of these shapes, straddled is the only one which cannot be used during a somersault in competition. Experianced tramps will sometimes do straddled somersaults during training. These are purely for fun, and cannot be used in a routine. When you get comfortable with making your straddled shape at the top of your bounce our coaches will start asking you to "line out". This involves pushing back to the straight shape as soon as you''ve displayed your impressive "holy hell are their legs made from rubber?" straddle. Your arms should reamin in line with your body. Many gymnasts find it helps to imagine yourself putting on trousers to start learning to line-out. See the video for this skill if you find that difficult to imagine. The best way to describe a good straddle jump/line out is "confident". Get into the shape fast, get out of the shape fast. There is no requirement to display the shape for as long as possible. In face, this is undesireable. The technical description of the straddle shape is the same for that of a piked jump except that the legs should be spread apart. Preferably at a 90 degree angle. The technical definition of the piked shape can be found in the FIG code of points 2013-2016 section 14.6.2. It says that "The angle between the upper body and thighs must be equal to or less than 135 degrees and the angle between the thighs and lower legs must be greater than 135 degrees." The 2013-2016 code of points has no requirement to touch the legs during a straddle jump. Many coaches will still encourage a gymnast to do so, though. A good rule of thumb is that if you''re not telling your arms what to do, they''re proabably doing something wrong. Some judges may not be aware of the omission in the new code, too. Touching your toes ensures that the arms are kept "straight and/or held close to the body" as FIG requires.  Long story short: reach for your toes, it''s pretty! ', 'Take off like a straight jump. Get in and out of the shape rapidly once you''re at the top of your bounce. Straight arms. Reach for your toes during. Pulling on your trousers. Pointed toes. Reach for your toes.\nMake sure your legs come IN FRONT of you, otherwise it''s a star jump!', '["Straight Bouncing"]', '["Tuck Jump","Pike Jump"]', '["Seat Drop","Seat Drop"]', 'Show the difference to a star jump'),

(null, 'Half Twist Jump', 'Twist', '0 1', 0.1, 0, 'Feet', 'Feet', 'Bounce', '', '', '', '', '', ''),
(null, 'Full Twist Jump', 'Twist', '0 2', 0.2, 0, 'Feet', 'Feet', 'Variation of the Clara Twist Jump - The worst full twist ever undertaken by a person ever...', '', '', '', '', '', ''),

(null, 'Seat Drop', 'Seat', '0 -', 0, 0, 'Feet', 'Seat', 'Landing in a seat position', '', '', '', '["Half Twist to Seat Drop","Half Twist to Seat Drop"]', '["Front Drop","Front Drop"]', ''),
(null, 'Half Twist to Seat Drop', 'Seat', '0 1', 0.1, 0, 'Feet', 'Seat', '', '', '', '', '', '', ''),
(null, 'Swivel Hips/Seat Half Twist to Seat Drop', 'Seat', '0 1', 0.1, 0, 'Seat', 'Seat', '', '', '', '', '', '', ''),
(null, 'To Feet (from seat)', 'Seat', '0 -', 0, 0, 'Seat', 'Feet', '', '', '', '', '', '', ''),
(null, 'Half Twist to Feet (from seat)', 'Seat', '0 1', 0.1, 0, 'Seat', 'Seat', '', '', '', '', '', '', ''),
(null, 'Full Twist to Feet (from seat)', 'Seat', '0 2', 0.2, 0, 'Seat', 'Seat', '', '', '', '', '', '', ''),
(null, 'Roller', 'Seat', '0 2', 0.2, 0, 'Seat', 'Seat', 'Full twist from seat to seat rotating around the longitudinal axis. The same axis as normal full twists', '', '', '', '', '', ''),

(null, 'Front Drop', 'Front', '1 -', 0.1, 0, 'Feet', 'Front', '', '', '', '', '["Half Twist to Back Drop","Full Twist to Back Drop","Log Roll","Tom Cruise"]', '["Back Drop"]', ''),
(null, 'Half Twist to Front Drop', 'Front', '1 1', 0.2, 0, 'Feet', 'Front', 'Backwards take off. Also known as an Airplane', '', '', '', '', '', ''),
(null, 'Full Twist to Front Drop', 'Front', '2 1', 0.2, 0, 'Feet', 'Front', 'Forwards take off. If you''re terrified, you''re porbably right', '', '', '', '', '', ''),
(null, 'To Feet (from front)', 'Front', '1 -', 0.1, 0, 'Front', 'Feet', '', '', '', '', '', '', ''),
(null, 'Half Twist to Feet (from front)', 'Front', '1 1', 0.2, 0, 'Front', 'Feet', '', '', '', '', '', '', ''),
(null, 'Full Twist to Feet (from front)', 'Front', '1 2', 0.3, 0, 'Front', 'Feet', '', '', '', '', '', '', ''),
(null, 'Log Roll', 'Front', '0 2', 0.2, 0, 'Front', 'Front', 'Full twist from front to front rotating around the longitudinal axis. Not the same as Cruise (lateral axis) or a Turntable (dorso-ventral axis) both of which also start and end in front position', '', '', '', '', '', ''),
(null, 'Tom Cruise', 'Front', '2 1 /', 0.3, 0, 'Front', 'Front', '', '', '', '', '', '', ''),
(null, 'Turntable', 'Front', '', 0, 0, 'Front', 'Front', 'From front landing, spin 360 on dorso-ventral ', '', '', '', '', '', ''),

(null, 'Back Drop', 'Back', '1 -', 0.1, 0, 'Feet', 'Back', '', '', '', '', '["Half Twist to Back Drop","Full Twist to Back Drop","Cat Twist","Turnover/Bounce Roll"]', '["Back Pullover to Feet"]', ''),
(null, 'Half Twist to Back Drop', 'Back', '1 1', 0.2, 0, 'Feet', 'Back', '', '', '', '', '', '', ''),
(null, 'Full Twist to Back Drop', 'Back', '2 1', 0.2, 0, 'Feet', 'Back', 'Backwards take off. Just half to front with a little more', '', '', '', '', '', ''),
(null, 'To Feet (from back)', 'Back', '1 -', 0.1, 0, 'Back', 'Feet', '', '', '', '', '', '', ''),
(null, 'Half Twist to Feet (from back)', 'Back', '1 1', 0.2, 0, 'Back', 'Feet', '', '', '', '', '', '', ''),
(null, 'Full Twist to Feet (from back)', 'Back', '1 2', 0.3, 0, 'Back', 'Feet', '', '', '', '', '', '', ''),
(null, 'Cat Twist', 'Back', '0 2', 0.2, 0, 'Back', 'Back', 'Full twist from back to back rotating around longitudinal axis, the same axis as normal full twists. There is no somersault rotation', '', '', '', '', '', ''),
(null, 'Cradle', 'Back', '2 1', 0.3, 0, 'Back', 'Back', 'Starting from back, half twist to back with 180&deg; forward rotation around lateral axis', '', '', '', '', '', ''),
(null, 'Corkscrew', 'Back', '2 3', 0.5, 0, 'Back', 'Back', 'From back landing, 1 and a half twists to back drop (with 180&deg; forward rotation). In other words a cradle with an extra full twist', '', '', '', '', '', ''),
(null, 'Toilet Bowl', 'Back', '', 0, 0, 'Back', 'Back', 'From back landing, try to spin 360 on dorsal axis', '', '', '', '', '', ''),

(null, 'Turnover/Bounce Roll', 'Front Somersault', '4 - o', 0.5, 0, 'Back', 'Back', 'Front somersault from back landing to back landing', '', '', '', '', '', ''),
(null, 'Front S/S', 'Front Somersault', '4 - o', 0.5, 0.1, 'Feet', 'Feet', '', '', '', '', '', '', ''),
(null, 'Barani', 'Front Somersault', '4 1 o', 0.6, 0, 'Feet', 'Feet', 'Front somersault with a half twist', '', '', '', '', '', ''),
(null, 'Crash Dive', 'Front Somersault', '3 - o', 0.3, 0, 'Feet', 'Back', 'A Three quarter front somersault from feet that turns over to back landing', '', '', '', '', '', ''),
(null, 'Half Twist to Crash Dive', 'Front Somersault', '3 1', 0.4, 0, 'Feet', 'Bacj', '', '', '', '', '', '', ''),
(null, '1 and three quarter Front S/S', 'Front Somersault', '7 - o', 0.8, 0.2, 'Feet', 'Back', 'Landing on back. Also known as a 1 and 3 which you''ll hear people say as 1 in 3. What fools', '', '', '', '', '', ''),

(null, 'Back Pullover to Feet', 'Back Somersault', '3 -', 0.3, 0, 'Back', 'Feet', 'Three quarter back somersault from back landing', '', '', '', '', '', ''),
(null, 'Back S/S', 'Back Somersault', '4 - o', 0.5, 0.1, 'Feet', 'Feet', '', '', '', '', '', '', ''),
(null, 'Back S/S to Seat', 'Back Somersault', '4 - o', 0.5, 0.1, 'Feet', 'Seat', '', '', '', '', '', '', ''),
(null, 'Lazy Back', 'Back Somersault', '3 - o', 0.3, 0, 'Feet', 'Front', '', '', '', '', '', '', ''),
(null, 'Cody', 'Back Somersault', '5 - o', 0.6, 0.1, 'Front', 'Feet', 'Any somersault from front landing. Usually 1 and a quarter back somersault from front to feet but 1 and a quarter front somersaulting cody is also seen', '', '', '', '', '', ''),

(null, 'Ball Out', 'Ball Outs', '5 - o', 0.6, 0, 'Back', 'Feet', '1 and a quarter front somersault from back landing to feet', '', '', '', '', '', ''),
(null, 'Barani Ball Out', 'Ball Outs', '5 1 o', 0.7, 0, 'Back', 'Feet', '1 and a quarter front somersault from back landing with a half twist to feet', '', '', '', '', '', ''),
(null, 'Baby Fliffus', 'Ball Outs', '5 1 -', 0.7, 0, 'Back', 'Feet', 'From back landing, 1 and a quarter front somersault to feet with early half twist. Different move to barani ball-out, though it involves the same amount of rotation and twist from the same take off position.', '', '', '', '', '', ''),
(null, 'Rudy Ball Out', 'Ball Outs', '5 3 /', 0.9, 0, 'Back', 'Feet', '1 and a quarter front somersault from back landing with 1 and a half twists to feet', '', '', '', '', '', ''),
(null, 'Randy Ball Out', 'Ball Outs', '5 5 /', 1.1, 0, 'Back', 'Feet', '1 and a quarter front somersault from back landing with 2 and a half twists to feet', '', '', '', '', '', ''),
(null, 'Adolf Ball Out', 'Ball Outs', '5 7 /', 1.3, 0, 'Back', 'Feet', '1 and a quarter front somersault from back landing with 3 and a half twists to feet 0.o', '', '', '', '', '', ''),
(null, 'Half Out Ball Out', 'Ball Outs', '9 - 1 o', 1.2, 0.2, 'Back', 'Feet', 'Double somersault from back landing with 1 twist to feet', '', '', '', '', '', ''),

(null, 'Rudolph / Rudi', 'Twisting Single Somersault', '4 3 /', 0.8, 0, 'Feet', 'Feet', 'Single front somersault with 1 and a half twists', '', '', '', '', '', ''),
(null, 'Randolph / Randy', 'Twisting Single Somersault', '4 5 /', 1, 0, 'Feet', 'Feet', 'Single front somersault with 2 and a half twists', '', '', '', '', '', ''),
(null, 'Adolph/Ady', 'Twisting Single Somersault', '4 7 /', 1.2, 0, 'Feet', 'Feet', '3 and a half twisting front somersault. Also known as an Ady', '', '', '', '', '', ''),
(null, 'Periwinkle', 'Twisting Single Somersault', '7 2 - o', 1, 0.2, 'Feet', 'Feet', '1 and three quarter front somersault with full twist in the first somersault', '', '', '', '', '', ''),
(null, 'Full', 'Twisting Single Somersault', '4 2 /', 0.7, 0, 'Feet', 'Feet', 'Single back somersault with a full twist', '', '', '', '', '', ''),
(null, 'Double Full', 'Twisting Single Somersault', '4 4 /', 0.9, 0, 'Feet', 'Feet', 'Single back somersault with 2 full twists', '', '', '', '', '', ''),

(null, 'Double Front', 'Double Front Somersaults', '8 - - o', 1, 0.2, 'Feet', 'Feet', 'Double front somersault', '', '', '', '', '', ''),
(null, 'Double Bounce-Roll', 'Double Front Somersaults', '8 - - o', 1, 0.2, 'Back', 'Back', 'Double front somersault from back landing to back landing', '', '', '', '', '', ''),
(null, 'Half Out', 'Double Front Somersaults', '8 - 1 o', 1.1, 0.2, 'Feet', 'Feet', 'Double front somersault with a half twist in the 2nd somersault.', '', '', '', '', '', ''),
(null, 'Rudi Out', 'Double Front Somersaults', '8 - 3 o', 1.3, 0.2, 'Feet', 'Feet', 'Double front somersault with 1 and a half twists in the 2nd somersult', '', '', '', '', '', ''),
(null, 'Randy Out', 'Double Front Somersaults', '8 - 5 o', 1.5, 0.2, 'Feet', 'Feet', 'Double front somersault with 2 and a half twists in the 2nd somersult', '', '', '', '', '', ''),
(null, 'Half In - Back Out', 'Double Front Somersaults', '8 1 - o', 1.1, 0.2, 'Feet', 'Feet', 'Double front somersault with a half twist in the 1st somersault so the 2nd is a back somersault', '', '', '', '', '', ''),
(null, 'Full In - Half Out', 'Double Front Somersaults', '8 2 1 o', 1.3, 0.2, 'Feet', 'Feet', 'Double front somersault with a full twist in the 1st somersault and a half twist in the 2nd', '', '', '', '', '', ''),
(null, 'Full In - Rudi Out', 'Double Front Somersaults', '8 2 3 o', 1.5, 0.2, 'Feet', 'Feet', 'Double front somersault with a full twist in the 1st somersault and 1 and a half twists in the 2nd', '', '', '', '', '', ''),
(null, 'Full In - Double Full Out', 'Double Front Somersaults', '8 2 4 o', 1.6, 0.2, 'Feet', 'Feet', 'Double front somersault with a full twist in the 1st somersault and two full twists in the 2nd', '', '', '', '', '', ''),
(null, '2 and three quarter Front S/S', 'Double Front Somersaults', '11 - - - o', 1.3, 0.2, 'Feet', 'Back', '', '', '', '', '', '', ''),

(null, 'Double Back', 'Double Back Somersaults', '8 - - o', 1, 0.2, 'Feet', 'Feet', 'Double back somersault', '', '', '', '', '', ''),
(null, 'Miller', 'Double Back Somersaults', '8 2 1 o', 1.6, 0.2, 'Feet', 'Feet', 'Double back somersault with a full twist in the 1st and a half twist in the second', '', '', '', '', '', ''),
(null, 'Poliarush/Miller Plus', 'Double Back Somersaults', '8 4 4 o', 1.8, 0.2, 'Feet', 'Feet', 'Double back somersault with 2 twists in each. Also known as a killer. Named after', '', '', '', '', '', ''),
(null, 'Half In - Half Out', 'Double Back Somersaults', '8 1 1 o', 1.2, 0.2, 'Feet', 'Feet', 'Double back somersault with a half twist in each somersault', '', '', '', '', '', ''),
(null, 'Half In - Rudi Out', 'Double Back Somersaults', '8 1 3 o', 1.4, 0.2, 'Feet', 'Feet', 'Double back somersault with a half twist in the 1st somersault and 1 and a half twists in the 2nd', '', '', '', '', '', ''),
(null, 'Half In - Randy Out', 'Double Back Somersaults', '8 1 5 o', 1.6, 0.2, 'Feet', 'Feet', 'Double back somersault with a half twist in the 1st somersault and 2 and a half twists in the 2nd', '', '', '', '', '', ''),
(null, 'Full In - Back Out', 'Double Back Somersaults', '8 2 - o', 1.2, 0.2, 'Feet', 'Feet', 'Double back somersault with a full twist in the 1st somersault', '', '', '', '', '', ''),
(null, 'Back In - Full Out', 'Double Back Somersaults', '8 - 2 o', 1.2, 0.2, 'Feet', 'Feet', 'Double back somersault with a full twist in the 2nd somersault', '', '', '', '', '', ''),
(null, 'Full In - Full Out', 'Double Back Somersaults', '8 2 2 o', 1.4, 0.2, 'Feet', 'Feet', 'Double back somersault with a full twist in both 360&deg;s', '', '', '', '', '', ''),
(null, 'Full Out', 'Double Back Somersaults', '8 - 2 o', 1.2, 0.2, 'Feet', 'Feet', 'Double back somersault with a full twist in the 2nd somersault', '', '', '', '', '', ''),

(null, 'Triffus', 'Tripples +', '12 - - 1 <', 1.8, 0, 'Feet', 'Feet', 'Can\'t even...', '', '', '', '', '', ''),
(null, 'Half Out Triffus', 'Tripples +', '12 - - 1 o', 1.7, 0.3, 'Feet', 'Feet', 'Triple somersault with a half twist in the last somersault.', '', '', '', '', '', ''),
(null, 'Rudi Out Triffus', 'Tripples +', '12 - - 3 o', 1.8, 0.2, 'Feet', 'Feet', 'Triple front somersault with 1 and a half twists', '', '', '', '', '', ''),
(null, 'Half In Half Out Triffus', 'Tripples +', '12 1 - 1 o', 1.8, 0.3, 'Feet', 'Feet', 'Triple back somersault with a half twist in the 1st somersault and a half twist in 3rd somersault', '', '', '', '', '', ''),
(null, 'Half In Rudi Out Triffus', 'Tripples +', '12 1 - 3 o', 2, 0.3, 'Feet', 'Feet', 'Triple back somersault with a half twist in the 1st somersault and 1 and half twists in 3rd somersault', '', '', '', '', '', ''),
(null, 'Half Out Quad', 'Tripples +', '16 - - - 1 o', 2.3, 0.4, 'Feet', 'Feet', 'Quadruple somersault with a half twist in the last somersault.', '', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
