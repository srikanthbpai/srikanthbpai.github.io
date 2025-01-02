---
layout: post
date: 2025-01-01 11:59:00-0400
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

1. <span style="color:blue"> Let ABCD be a trapezoid with BC parallel to AD and AB = CD. A circle ω centred at I is tangent to the segments AB, CD, and DA. The circle BIC meets the side AB at points B, and E. Prove that CE is tangent to ω.</span>

   <sup>_Proof sketch:_ $AB$ meet $CD$ at P. Let tangent from E meet $CD$ at C'. Incentre-Excentre lemma in triangle $PEC'$ says $\angle EIC' = 90 - p/2$ where $p = \angle EPC'$. $BC || AD$ means $\angle EBC = 90+p/2$ and since $E,B,C,I$ are concyclic,$\angle EIC = 90 - p/2$. Thus angle EIC = angle EIC' and thus C=C'.</sup>

2. <span style="color:blue"> Let ABC be an acute-angled triangle. The feet of the altitudes from A,B and C are D, E and F, respectively. Prove that DE+DF≤BC and determine the triangles for which equality holds.</span>

   <sup>Hint: Reflect F about BC to F'. Show E,D,F' are collinear. Now consider circle with diameter BC and note that diameter is the longest chord.</sup>

   <sup>Another hint: trig kills the problem; use circle DEF is a nine-point circle, so get the radius.</sup>

3. <span style="color:blue"> Let O be the centre of the circumcircle ω of an acute-angle triangle ABC. A circle ω$_1$ with centre K passing through A, O and C and intersecting AB at M and BC at N . Point L is symmetric to K with respect to line NM. Prove that BL ⊥ AC. </span>

   <sup> _Proof sketch:_ Show O is the orthocentre of triangle BMN. Circle (BMN) reflects about MN to $\omega_1$. So L is the centre of (BMN). OB is parallel to LK since both are perpendicular to MN and OK=LB since the segments are radii of reflected circles. Thus OBLK is a parallelogram and BL is parallel to OK. Now OK is perpendicular to AC since line joining centres is perpendicular to the common chord. Thus $BL \perp AC$. </sup>

4. <span style="color:blue"> Let a,b,c and d denote the sides of a quadrilateral and m and n its diagonals. Prove that $mn\leq ac+bd,$ equality iff the quadrilateral is cyclic.</span>

   <sup> _Proof:_ Let p,q,r,s be complex numbers associated to the vertices P,Q,R,S of the cyclic quadrilateral PQRS. Note that $(p-q)(r-s)+(q-r)(p-s) = (p-r)(q-s)$ and thus by triangle inequality we are done. Equality holds iff the ratio of summands is real and thus the cross-ratio is real (cyclicity condition). </sup>

5. <span style="color:blue"> Let ABC be a triangle and AD,BE,CF be altitudes with H as orthocenter with D,E,F on sides. Suppose X is the intersection of circle passing through points A,E, F and the circumcircle of triangle ABC. Let EF meet BC at T. Show that A, T, X are collinear.</span>

   <sup>_Hint:_ Use inversion with centre A and radius $\sqrt{AH.AD}$. Note that the inversion exchanges B,D,C with F,H,E respectively. </sup>

6. <span style="color:blue"> Let ABC be a triangle with orthocenter H and let D,E,F be the feet of the altitudes lying on the sides BC, CA, AB respectively. Let T=EF ∩ BC . Prove that TH is perpendicular to the A-median of triangle ABC.</span>

   <sup>_Hint:_ Use the previous problem to show H is the orthocentre of triangle ATM where M is the mid-point of BC.</sup>

7. <span style="color:blue"> Let AB be the diameter of a circle Γ and let C be a point on Γ different from A and B. Let D be the foot of perpendicular from C on to AB.Let K be a point on the segment CD such that AC is equal to the semi perimeter of ADK.Show that the excircle of ADK opposite A is tangent to Γ.</span>

   <sup>_Hint:_ Call the excircle of ADK opposite A as $\omega$. Invert about A with AC as radius. Now $\omega$ is orthogonal to $\Gamma$ and thus it is fixed under inversion. But $\Gamma$ is exchanged with line CD, so we are done. </sup>

8. <span style="color:blue"> Let  E  and  F  be the midpoints on the respective sides  CA  and  AB  of triangle  ABC, and let  P  be the second point of intersection of the circles  ABE  and  ACF . Prove that the circle  AEF  intersects the line  AP  again in the point  X  for which  AX = 2XP .</span>

    <sup>A solution of the sample problem can be found [here](https://srikanthbpai.github.io/blog/2024/Inversion/).</sup>

9. <span style="color:blue"> Let the incircle of triangle ABC touch side BC at D , and let DT be a diameter of the circle. If line AT meets BC at X , then BD=CX .</span>

    <sup>_Hint:_ Show that a dilation that sends the incircle to the A-excircle sends T to the touchpoint of the excircle on BC. Then length chase.</sup>

10. <span style="color:blue"> Let ABCD be a square. Let P be point inside the square such that PA = 1,PB = 2,PC = 3. Find ∠APB in degrees.</span> <sup> (Hint: Rotate about B by 90 degrees.)</sup>

11. <span style="color:blue"> ABCD is a unit square. Points P,Q,M,N are on sides AB, BC, CD, DA respectively such that AP + AN + CQ + CM = 2. Prove that PM⊥QN. </span> <sup>(Hint: Rotate by 90 degrees and spot a parallelogram.)</sup>

12. <span style="color:blue"> Show that the composition of two rotations of angle magnitudes a and b, respectively around centres A and B, is equal to a rotation a + b around another centre X. This centre X is located at a position where ∠XAB = a/2 and ∠ABX = b/2.</span>

13. <span style="color:blue"> (INMO 2024) Let points $A_1$ , $A_2$ and $A_3$ lie on the circle Γ in counter-clockwise order, and let P be a point in the same plane. For i ∈ {1,2,3} , let $τ_ i$ denote the counter-clockwise rotation of the plane centered at $A_ i$ , where the angle of the rotation is equal to the angle at vertex $A_i$ in $▵ A_1 A_2 A_3$ . Further, define $P_ i$ to be the point $τ_{i+2} ( τ_i ( τ_ {i+1} ( P ) ) )$ , where indices are taken modulo 3 (i.e., $τ_ 4 = τ_ 1$ and $τ_ 5 = τ_ 2$ ). Prove that the radius of the circumcircle of $▵ P_ 1 P_ 2 P_ 3$ is at most the radius of Γ . </span> <sup>Hint: Use the previous problem and show that $\triangle P_ 1 P_ 2 P_ 3$ is dilation of the contact triangle from point P by a factor of 2. Then use $R \geq 2r$)</sup>

14. <span style="color:blue"> Prove that:</span>

    1. <span style="color:blue"> the bisectors of the exterior angles of a triangle intersect the extensions of its opposite sides at three points lying on the same straight line;</span>
    2. <span style="color:blue"> the tangents drawn from the triangle's vertices to the circle circumscribed about it intersect its opposite sides at three collinear points.</span>

    <sup> Hint: Menelaus theorem.</sup>

15. <span style="color:blue">In the plane let C be a circle, l a line tangent to the circle C and M a point on l . Find the locus of all points P with the following property: there exists two points Q,R on l such that M is the midpoint of QR and C is the inscribed circle of triangle PQR . </span>

    <sup>_Hint:_ Let T be the touchpoint of l and C, and let S be the diametrically opposite point to T in circle C. Locate X on l so that M is the midpoint of TX. Now use problem 9 above to argue that the locus of P is a segment of the line XS.</sup>

16. <span style="color:blue">Let M be the midpoint of the arc ACB on the circumcircle of ▵ ABC , and let MD be the perpendicular to the longer of AC and BC , say AC . We will call D as the C -Archimedes point.</span>
    1. <span style="color:blue">Then show that D bisects the polygonal path ACB , that is, AD=DC+CB. (Archimedes theorem of broken chord.) </span>
    2. <span style="color:blue">Let P be the midpoint of AB , then show that DP is parallel to the C -angle bisector of triangle ACB .</span>
    3. <span style="color:blue">Suppose E,F are A -Archimedes point, B -Archimedes point of ▵ ABC , and Q,R are midpoints of BC and CA , respectively. Show that segments EQ,FR and DP concur.</span> <sup>(Hint: look at the medial triangle.) </sup>

<sup> Reference: See the first chapter of [Ross Honsberger's book](https://archive.org/details/episodes-in-nineteenth-and-twentieth-century-euclidean-geometry-ross-honsberger/page/n9/mode/2up) </sup>

17. <span style="color:blue">Let ABC be a triangle with AB>AC . Let P be a point on the line AB beyond A such that AP+PC=AB . Let M be the mid-point of BC and let Q be the point on the side AB such that CQ⊥AM . Prove that BQ=2AP. <span>

    <sup>Hint: Use Archimedes broken chord. Point A' outside line BP with PA'=PC, then angle A'CQ is right.</sup>
