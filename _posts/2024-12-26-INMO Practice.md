---
layout: post
date: 2024-12-08 11:59:00-0400
title: INMO 24-25 Practice
description: Hints for INMO problems
tags:
  - geometry
  - INMO
related_posts: true
giscus_comments: true
display_categories:
  - teaching
categories: " Olympiad, teaching"
---

1. Let ABCD be a trapezoid with BC parallel to AD and AB = CD. A circle ω centred at I is tangent to the segments AB, CD, and DA. The circle BIC meets the side AB at points B, and E. Prove that CE is tangent to ω.
   (Proof sketch: $AB$ meet $CD$ at P. Let tangent from E meet $CD$ at C'. Incentre-Excentre lemma in triangle $PEC'$ says $\angle EIC' = 90 - p/2$ where $p = \angle EPC'$. $BC || AD$ means $\angle EBC = 90+p/2$ and since $E,B,C,I$ are concyclic,$\angle EIC = 90 - p/2$. Thus angle EIC = angle EIC' and thus C=C'.)
2. Let ABC be an acute-angled triangle. The feet of the altitudes from A,B and C are D, E and F, respectively. Prove that DE+DF≤BC and determine the triangles for which equality holds.
   Two solutions:
   Hint: Reflect F about BC to F'. Show E,D,F' are collinear. Now consider circle with diameter BC and diameter > chord EF'.
   Hint: trig kills the problem; use circle DEF is a nine-point circle, so get the radius.
3. Let O be the centre of the circumcircle ω of an acute-angle triangle ABC. A circle ω$_1$ with centre K passing through A, O and C and intersecting AB at M and BC at N . Point L is symmetric to K with respect to line NM. Prove that BL ⊥ AC
   Sketch of proof: Show O is the orthocentre of triangle BMN. Circle (BMN) reflects about MN to $\omega_1$. So L is the centre of (BMN). OB is parallel to LK since both are perpendicular to MN and OK=LB since the segments are radii of reflected circles. Thus OBLK is a parallelogram and BL is parallel to OK. Now OK is perpendicular to AC since line joining centres is perpendicular to the common chord. Thus $BL \perp AC$.
4. Let a,b,c and d denote the sides of a cyclic quadrilateral and m and n its diagonals. Prove that mn=ac+bd .
   Let p,q,r,s be complex numbers associated to the vertices P,Q,R,S of the cyclic quadrilateral PQRS. Now note that $(p-q)(r-s)+($
5. Let BC be a chord of a circle Γ. Let ω be a circle tangent to chord BC at K and internally tangent to ω at T. Then ray TK passes through the midpoint M of the arc BC not containing T.
6. Let ABC be a triangle and AD,BE,CF be altitudes with H as orthocenter with D,E,F on sides. Suppose X is the intersection of circle passing through points A,E, F and the circumcircle of triangle ABC. Let EF meet BC at T. Show that A, T, X are collinear.

   Inversion in my homework set. use root(AH.AD) inversion

7. Let ABC be a triangle with orthocenter H and let D,E,F be the feet of the altitudes lying on the sides BC, CA, AB respectively. Let T=EF ∩ BC . Prove that TH is perpendicular to the A-median of triangle ABC.

   inversion set in my note

8. Let AB be the diameter of a circle Γ and let C be a point on Γ different from A and B. Let D be the foot of perpendicular from C on to AB.Let K be a point on the segment CD such that AC is equal to the semi perimeter of ADK.Show that the excircle of ADK opposite A is tangent to Γ.
9. Let  E  and  F  be the midpoints on the respective sides  CA  and  AB  of triangle  ABC, and let  P  be the second point of intersection of the circles  ABE  and  ACF . Prove that the circle  AEF  intersects the line  AP  again in the point  X  for which  AX = 2XP .

   Blog inversion solution

10. Let the incircle of triangle ABC touch side BC at D , and let DT be a diameter of the circle. If line AT meets BC at X , then BD=CX .
11. Prove that the midpoints of the sides, feet of the altitudes, and the midpoints of the segments joining a vertex to the orthocentre lie on a common circle whose centre is the midpoint of the segment joining the circumcentre and the orthocentre and the diameter is the circumradius.Additionally, show that this circle is tangent to the incircle and the excircles!
12. Let ABCD be a square. Let P be point inside the square such that PA = 1,PB = 2,PC = 3. Find ∠APB in degrees.
13. ABCD is a unit square. Points P,Q,M,N are on sides AB, BC, CD, DA respectively such that AP + AN + CQ + CM = 2. Prove that PM⊥QN.
14. Show that the composition of two rotations of angle magnitudes a and b, respectively around centres A and B, is equal to a rotation a + b around another centre X. This centre X is located at a position where ∠XAB = a/2 and ∠ABX = b/2.
15. (INMO 2024)Let points A 1 , A 2 and A 3 lie on the circle Γ in counter-clockwise order, and let P be a point in the same plane. For i ∈ {1,2,3} , let τ i denote the counter-clockwise rotation of the plane centered at A i , where the angle of the rotation is equal to the angle at vertex A i in ▵ A 1 A 2 A 3 . Further, define P i to be the point τ i+2 ( τ i ( τ i+1 ( P ) ) ) , where indices are taken modulo 3 (i.e., τ 4 = τ 1 and τ 5 = τ 2 ). Prove that the radius of the circumcircle of ▵ P 1 P 2 P 3 is at most the radius of Γ .
16. Prove that:
    1. the bisectors of the exterior angles of a triangle intersect the extensions of its opposite sides at three points lying on the same straight line;
    2. the tangents drawn from the vertices of the triangle to the circle circumscribed about it intersect its opposite sides at three collinear points.
17. In the plane let C be a circle, l a line tangent to the circle C and M a point on l . Find the locus of all points P with the following property: there exists two points Q,R on l such that M is the midpoint of QR and C is the inscribed circle of triangle PQR .
18. Let M be the midpoint of the arc ACB on the circumcircle of ▵ ABC , and let MD be the perpendicular to the longer of AC and BC , say AC . We will call D as the C -Archimedes point.
    1. Then show that D bisects the polygonal path ACB , that is, AD=DC+CB.
    2. Let P be the midpoint of AB , then show that DP is parallel to the C -angle bisector of triangle ACB .
    3. Suppose E,F are A -Archimedes point, B -Archimedes point of ▵ ABC , and Q,R are midpoints of BC and CA , respectively. Show that segments EQ,FR and DP concur. [Hint: look at the medial triangle.]
19. Let ABC be a triangle with AB>AC . Let P be a point on the line AB beyond A such that AP+PC=AB . Let M be the mid-point of BC and let Q be the point on the side AB such that CQ⊥AM . Prove that BQ=2AP .

    (Archimedes broken chord) Point A' outside line BP with PA'=PC, then angle A'CQ is right.
