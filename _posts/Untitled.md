1. (BMO 2000) Two intersecting circles C1 and C2 have a common tangent which touches C1 at P and C2 at Q. The two circles intersect at M and N, where N is nearer to PQ than M is. The line PN meets the circle C2 again at R. Prove that MQ bisects angle PMR.
2. (BMO 2001) Circle S lies inside circle T and touches it at A. From a point P (distinct from A) on T, chords PQ and PR of T are drawn touching S at X and Y respectively. Show that $\angle  QAR=2 \angle XAY$.
3. (BMO R1 2020) Let points 𝐴, 𝐵 and 𝐶 lie on a circle Γ. Circle Δ is tangent to 𝐴𝐶 at 𝐴. It meets Γ again at 𝐷 and the line 𝐴𝐵 again at 𝑃. The point 𝐴 lies between points 𝐵 and 𝑃. Prove that if 𝐴𝐷 = 𝐷𝑃, then 𝐵𝑃 = 𝐴𝐶.

![[Pasted image 20241009183916.png]]

4.  (BMO R1 2015) Let $ABCD$ be a cyclic quadrilateral and let the lines $CD$ and $BA$ meet at E. The line through D which is tangent to the circle $ADE$ meets the line $CB$ at F. Prove that the triangle $CDF$ is isosceles.
5.  (BMO R1 2012) Let ABC be an acute-angled triangle. The feet of the altitudes from A,B and C are D, E and F respectively. Prove that $DE+DF ≤ BC$ and determine the triangles for which equality holds.
6.  (RMO 2016) Let ABC be a triangle with centroid G. Let the circumcircle of triangle AGB intersect the line BC in X different from B; and the circumcircle of triangle AGC intersect the line BC in Y different from C. Prove that G is the centroid of triangle AXY.

---

Camp problems:

(BMO R1 2012) Let ABC be an acute-angled triangle. The feet of the altitudes from A,B and C are D, E and F respectively. Prove that $DE+DF ≤ BC$ and determine the triangles for which equality holds.
![[Screenshot 2024-12-17 at 11.13.33 AM.png]]

**Aliter Hint:** trig kills it, use circle DEF is nine point circle, so get radius.

---

(INMO 2019 P5) Let AB be the diameter of a circle Γ and  C be a point on Γ different from A and B. Let D be the foot of the perpendicular from C onto AB. Let K be a point on the segment CD such that AC is equal to the semi-perimeter of ADK. Show that the excircle of ADK opposite A is tangent to Γ.

Proof 1:
Set $D$ as origin, $A = (-k, 0)$, $K$ and $C$ are on the $y$-axis.  
Now,  
$$AB\cdot AD = AC^2 \implies AB = \frac{s^2}{k}$$$$AM = \frac{s^2}{2k} \implies M = \left(\frac{s^2}{2k} - k, 0\right)$$Let $I$ be the $A$-excenter of $\triangle AKD$, then $I = (s-k, s-k)$.

$$
\begin{align*}
|MI|^2 &= \left(\frac{s^2}{2k} - s\right)^2 + (s - k)^2\\
&= \left(\frac{s^2}{2k}\right)^2 + s^2 - \frac{s^3}{k} + s^2 - 2sk + k^2\\
&= \left|\frac{s^2}{2k} - s + k\right|^2 \\
&= |MA - (s - k)|^2 = |r - r_A|^2.
\end{align*}
$$

So we are done.

Proof 2: Invert about circle with centre at A and AC radius. ADK excircle is fixed since its orthogonal and circle with BC as diameter interchanges with line CD, so we are done.

---

![[Screenshot 2024-12-17 at 11.11.00 AM.png]]
