/* Tim Scroggs
 01.22.14
 CSCI 182 002
 Self-Portrait Assignment: 
 With a few hundred bezier curves and some other primitive shapes you can begin to see my face in this program. 
 This program draws my portrait.
 */


size (550, 750);
smooth();
background(255);
stroke(0);
strokeWeight(4);
strokeCap(ROUND);//this give the lines a softness more like a felt tip pen
noFill();


//chin begins
bezier(415, 578, 412, 607, 435, 640, 365, 662);
bezier(365, 662, 345, 670, 315, 665, 291, 664);
bezier(291, 664, 173, 630, 124, 591, 55, 525);
bezier(55, 525, 40, 512, 40, 530, 0, 415);
noStroke();
fill(0);
triangle(291, 664, 290, 669, 270, 659);
triangle(278, 661, 290, 669, 308, 666);
triangle(0, 415, 9, 440, 0, 430);
//chin ends


//lips begin
noFill();
stroke(0);
bezier(324, 525, 352, 540, 353, 529, 372, 529);
bezier(372, 529, 402, 523, 398, 530, 405, 521);
bezier(318, 494, 338, 487, 367, 500, 393, 491);
bezier(391, 491, 406, 482, 410, 490, 416, 497);
bezier(391, 491, 400, 472, 398, 477, 380, 480);
bezier(380, 480, 366, 475, 369, 470, 316, 493);
bezier(316, 494, 306, 498, 303, 501, 292, 500);
bezier(292, 500, 265, 498, 297, 487, 301, 486);
line(301, 486, 342, 470);
bezier(342, 470, 355, 466, 361, 466, 371, 460);
bezier(373, 459, 388, 456, 385, 463, 399, 462);
bezier(401, 461, 408, 456, 419, 458, 413, 480);
line(413, 480, 415, 497);
bezier(387, 445, 395, 450, 399, 449, 398, 444);
line(410, 419, 420, 451);
bezier(410, 419, 410, 435, 415, 435, 420, 451);
line(393, 481, 387, 491);
noStroke();
fill(0);
triangle(394, 487, 397, 484, 411, 488);
triangle(394, 477, 392, 485, 382, 481);
triangle(404, 489, 413, 487, 415, 498);
//lips end


//nose begins
noFill();
stroke(0);
bezier(400, 417, 419, 391, 426, 401, 440, 380);
bezier(319, 373, 300, 380, 320, 420, 340, 407);
//nostril
arc(380, 419, 85, 62, radians(225), radians(300));
arc(380, 422, 85, 63, radians(227), radians(290));
arc(350, 363, 90, 70, radians(50), radians(90));
line(370, 392, 400, 392);
//nose ends


//EYES BEGIN

//eyebrow (right eye)
stroke(0, 255);
line(334, 201, 333, 212);
strokeWeight(4);
bezier(333, 212, 335, 211, 352, 202, 341, 203);
bezier(333, 212, 335, 208, 342, 200, 342, 189);
line(340, 196, 338, 189);
bezier(331, 212, 325, 208, 335, 200, 329, 186);
bezier(331, 212, 321, 190, 319, 182,  303, 181);
ellipse(324, 201, 9, 12);
bezier(326, 212, 329, 209, 324, 201, 310, 194);
line(325, 208, 311, 202);
line(310, 196, 298, 191);
bezier(310, 194, 308, 179, 285, 184, 269, 179);
bezier(311, 205, 290, 186, 287, 195,  284, 190);
bezier(299, 198, 289, 203, 262, 185,  250, 189); 
bezier(279, 195, 279, 190, 270, 186,  265, 186);
line(278, 196, 230, 197);
bezier(276, 196, 260, 196, 248, 188,  236, 191);
bezier(263, 181, 260, 178, 230, 178,  223, 183);
bezier(237, 187, 228, 189, 193, 180,  183, 196);
bezier(230, 195, 210, 197, 184, 186, 176, 202);
bezier(234, 201, 228, 194, 208, 209, 195, 208);
bezier(189, 200, 180, 202, 178, 204, 172, 213);
line(212, 195, 163, 219);
stroke(0);


//right eye
fill(0);
ellipse(243, 233, 5, 6);
noFill();
arc(244, 233, 38, 39, -PI / 6, radians(210));
stroke(0);
strokeWeight(4);
arc(245, 231, 40, 39, radians(50), radians(180));
strokeWeight(4);
stroke(0);
bezier(295, 252, 271, 222, 262, 200, 182, 242);
bezier(292, 252, 271, 222, 262, 200, 182, 242);
fill(0);
bezier(295, 252, 279, 254, 285, 233, 270, 226);
noFill();
bezier(212, 252, 199, 243, 198, 240, 186, 244);
fill(0);
triangle(188, 242, 193, 240, 198, 243);
ellipse(186, 243, 5, 2);
noFill();
bezier(290, 224, 268, 205, 252, 200, 188, 227);


//eyebrow (left)
stroke(0, 255);
line(394, 220, 400, 210);
fill(0);
bezier(394, 220, 400, 220, 405, 199, 416, 201);
bezier(398, 220, 408, 200, 416, 219, 425, 198);
bezier(401, 221, 440, 196, 426, 215, 450, 210);
bezier(402, 220, 438, 215, 422, 210, 433, 210);
fill(0);
bezier(394, 220, 400, 200, 390, 215, 440, 220);
bezier(394, 220, 400, 200, 390, 215, 440, 222);
bezier(427, 220, 430, 218, 430, 216, 459, 218);
bezier(430, 222, 445, 230, 425, 222, 456, 221);
bezier(417, 221, 430, 212, 445, 230, 457, 226);
bezier(427, 221, 430, 212, 447, 240, 460, 230);
noStroke();
triangle(393, 224, 415, 220, 405, 215);
noFill();
stroke(0);


//left eye
fill(0);
ellipse(405, 255, 5, 5);
noFill();
strokeWeight(3);
noFill();
strokeWeight(4);
arc(405, 255, 36, 34, -PI / 6, PI/2);
bezier(408, 281, 385, 254, 386, 239, 392, 223);
bezier(432, 287, 432, 270, 430, 269, 450, 245);
noFill();
triangle(450, 245, 451, 239, 456, 239);
strokeWeight(4);
bezier(391, 247, 412, 238, 422, 241, 432, 258);
line(425, 266, 423, 273);
strokeWeight(3);
bezier(411, 241, 418, 242, 427, 240, 432, 258); 
stroke(0);
arc(407, 258, 31, 31,radians(270), radians(360));
arc(409, 256, 30, 30,radians(70), radians(160));
stroke(0);
strokeWeight(4);
bezier(396, 234, 410, 234, 429, 227, 440, 257);
strokeWeight(4);
//EYES END


//hair begins
noFill();
bezier(144, 61, 138, 72, 141, 90, 135, 112);
bezier(129, 0, 140, 15, 144, 23, 142, 44);
bezier(150, 0, 151, 16, 168, 25, 147, 51);
bezier(163, 0, 166, 16, 169, 27, 184, 37);
bezier(185, 0, 188, 24, 189, 59,  155, 61);
line(235, 15, 200, 41);
bezier(241, 22, 218, 51, 210, 49,  191, 52);
bezier(254, 0, 251, 22, 252, 30, 242, 38);
bezier(286, 7, 255, 35, 253, 41, 242, 42);
bezier(308, 0, 292, 14, 277, 23, 268, 55);
bezier(368, 0, 372, 15, 368, 21, 355, 57);
bezier(366, 34, 386, 23, 379, 16,  386,0);
line(409, 0, 415, 10);
bezier(426, 0, 426, 11, 421, 11,  432, 22);
line(438, 0, 441, 12);
bezier(411, 20, 422, 20, 428, 33,   439, 36);
bezier(439, 36, 450, 41, 447, 67,  463, 73);
bezier(439, 40, 450, 48, 446, 65,  453, 58);
bezier(434, 46, 442, 56, 448, 58,  451, 56);
bezier(434, 46, 442, 50, 454, 50,  455, 64);
bezier(438, 63, 447, 68, 453, 79,  470, 86);
noFill();
bezier(444, 71, 445, 78, 450, 95,  455, 93);
bezier(47, 221, 66, 192, 155, 170, 117, 54);
bezier(53, 230, 29, 241, 49, 255, 34, 283);
bezier(444, 118, 448, 122, 449, 127,  456, 135);
line(447, 110, 445, 106);
//hair end


//sideburn begins
bezier(46, 282, 57, 307, 50, 307, 51, 310);
bezier(51, 310, 45, 315, 49, 330, 43, 337);
bezier(42, 321, 40, 328, 40, 350, 45, 356);
bezier(48, 364, 44, 366, 42, 382, 42, 384);
line(6, 295, 8, 330);
bezier(14, 311, 16, 318, 11, 346, 15, 365);
line(14, 348, 15, 365);
bezier(17, 361, 17, 368, 17, 377, 18, 376);
line(19, 378, 28, 370);
bezier(20, 368, 21, 367, 29, 363, 27, 362);
//sideburn ends


//neck
noFill();
stroke(0);
bezier(291, 664, 270, 715, 252, 688, 229, 750);
line(236, 739, 240, 751);


//shirt
bezier(-2, 648, 18, 687, 37, 710,  91, 751);
line(-1, 738, 13, 753);
noStroke();
fill(0);
triangle(0, 650, 11, 675, 0, 665);


