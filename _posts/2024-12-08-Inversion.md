---
layout: post
date: 2024-12-08 11:59:00-0400
title: Some Inversion Problems
description: Inversion is reflection in a circle.
tags:
  - geometry
  - INMO
related_posts: true
giscus_comments: true
display_categories:
  - teaching
categories: " Olympiad, teaching"
---

> "One of the endearing things about mathematicians is the extent to which they will go to avoid doing any real work." –Matthew Pordage

In this blog post, we discuss the definition and properties of inversion, suggest a few configurations, outline the solution to a sample problem, and conclude with a few exercises.

# Inversion: A recap

_Definition:_ Given a circle $C$ with centre $O$ and radius $k$, the inversion of a point P ($\neq O$ ) in the plane is a point $P'$ on the ray $OP$ such that \\[OP \times OP' = k^2.\\]
_Facts:_ If $C$ is a given circle, and $I_C$ represents the inversion of the plane (except $O$), then we have,

1. A line $l$ through $O$ inverts to itself.
2. A line $l$ not through $O$ inverts to a circle $l'$ passing through $O$ so that $l$ is the radical axis of $C$ and $l'$. Conversely a circle $\omega$ through $O$ inverts to a line $l$ not passing through $O$ so that $l$ is the radical axis of $\omega$ and $C$.
3. A circle orthogonal to C inverts to itself.
4. Given a circle $\omega$ not passing through $O$, inverts to a circle $\overline{\omega}$ not passing though $O$. The circle $\overline{\omega}$ can be obtained by dilating $\omega$ about $O$ with a dilation factor $\dfrac{k^2}{Pow_{\omega}(O)}.$
5. Tangency is preserved under inversion.

The following video series details the proofs of the above facts.

<iframe style="display: block; margin: auto;" width="560" height="315" src="https://www.youtube.com/embed/videoseries?si=R8xRcn2Kjbse2M_N&amp;list=PL2eijNv2W5mgDJcaPQBEl-B1H2dRtj84k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
# Configurations

> (Length formula) If A',B' are the inverse of A,B w.r.t a circle with centre O and radius $k$, show that the length of the segment A'B' is \\[A'B' = k^2 \dfrac{AB}{OA \times OB}.\\]

_Proof._ Use the fact that $ABB'A'$ is concyclic we get $\triangle OAB \sim \triangle OB'A'$. Using similarity ratios, we get \\[\dfrac{OA}{OB'} = \dfrac{OB}{OA'}=\dfrac{AB}{A'B'} \\] and thus \\[A'B' = \dfrac{k^2}{OA \times OB}AB.\\]

> If P is outside the circle of inversion, then P' is the midpoint of the chord of contact.

There is a simple proof using similar triangles, but we will try to prove it using inversion.

_Proof._ Let A,B be touch points when tangents are drawn from $P$ to the circle of inversion. Note that the circle $\omega$ with $OP$ as diameter passes through A and B. So the circle $\omega$ inverts to the line AB. Define $P':=OP \cap AB$ inverts to $OP \cap \omega = P(\neq O).$ So P is the inverse of P'. Note that P' is the midpoint of AB since OP is the perpendicular bisector of AB (because $OA=OB$).

> Let ABC be a triangle with circumcircle Γ and contact triangle DEF . Consider an inversion with respect to the incircle of triangle ABC. Show that Γ is sent to the nine-point circle of triangle DEF.

_Proof._ Note that E is on AB and F is on AC. By the previous problem the midpoint of EF is the inverse of A in the incircle. So the circumcircle passes through the midpoints of the sides of triangle DEF and is thus the nine-point circle of triangle DEF.

> Let ABC be a triangle. Consider the transformation consisting of an inversion about A with radius $k=\sqrt{AB\cdot AC}$ followed by a reflection around the angle bisector of $\angle BAC$. This transformation fixes B and C.

_Proof._ Suppose $B,C \mapsto B',C'$ under inversion, then \\[ AB\cdot AB' = k^2 = AB \cdot AC.\\] Thus $AB'=AC$ and similarly $AC' = AB$. If we reflect the plane about the A-angle bisector after the inversion then we have $B',C' \mapsto B'',C''$, thus $AB'' = AB$ with B'' on AB, thus $B''=B$ and similarly $C''=C$.

> Let ABC be a triangle with circumcenter S. Invert around C with radius 1. What is the relation between S', C, A', and B'?

_Proof._ Using the length formula show that $S'A' = A'C,S'B'=CB'.$ Thus $A'B'$ is the perpendicular bisector of $S'C'$.

# A Sample Problem

> Let  E  and  F  be the midpoints on the respective sides  CA  and  AB  of triangle  ABC, and let  P  be the second point of intersection of the circles  ABE  and  ACF . Prove that the circle  AEF  intersects the line  AP  again in the point  X  for which  AX = 2XP .

Draw your own figure!

_Proof:_(Sketch) Invert the plane about $A$ with an arbitrary radius $k$. Circles $(AEBP),(AFPC), (AFXE)$ invert to lines $E'B'P', F'P'C',F'X'E'$. Note that the lines $AFB, AXP, AEC$ are fixed. Next we note that \\[AE \times AE' = AC \times AC'\\] But $AC = 2AE$ since $E$ is midpoint of $AC$. Thus $C'$ is the midpoint of $AE'$. Similarly $B'$ is the midpoint of $AF'$. So we conclude $P'$ is the centroid of triangle $AF'E'$ and $X'$ is the midpoint of $F'E'$. Thus \\[2AX' = 3AP' \implies 2 \dfrac{k^2}{AX} = 3 \dfrac{k^2}{AP} \implies 3AX = 2AP \implies AX = 2PX.\\]

# Exercises

1. For coplanar points $A, B, C, D,$ if they are concyclic, then show that \\[AB·CD+AD·BC=AC·BD.\\] (Hint: Length formula.)
2. Let A, B, C be three collinear points and P be a point not on this line. Prove that the circumcenters of $\triangle PAB, \triangle PBC, \triangle PCA$ lie on a circle passing through P .
3. (95 Iranian MO) Let M, N and P be points of intersection of the incircle of triangle ABC with sides AB, BC and CA respectively. Prove that the orthocenter of ∆MNP, the incenter of ∆ABC and the circumcenter of ∆ABC are collinear. (Hint: Consider Euler line of ∆MNP.)
4. Let BC be a chord of a circle Γ. Let ω be a circle tangent to chord BC at K and internally tangent to ω at T. Then ray TK passes through the midpoint M of the arc BC not containing T.
5. Let $P$ be a point inside triangle ABC such that $\angle APB − \angle ACB = \angle APC − \angle ABC$. Let $D, E$ be the incenters of triangles $APB,APC,$ respectively. Show that $AP,BD,CE$ meet at a point. (Hint: invert about $A$.)
