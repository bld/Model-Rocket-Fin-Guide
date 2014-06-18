Model-Rocket-Fin-Guide
======================

I was building my first high powered rocket - a LOC Precision Aura -
and I wanted a jig to epoxy the fins and launch lug on straight. I
designed this thing to print a pair of jigs to stick in either end of
the body tube - one end with engine mount. The fins are held with
strips of thin plywood held with spring clamps & wedges. A piece of
threaded rod with nuts on either end holds the launch lug in place,
while putting the jigs in tension. This setup allowed me to epoxy all
the fins and the launch lug at once.

Licensed under [CC BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/).

Instructions
------------

Materials required
* 2 plates
* 2 adapters (body tube and/or engine mount)
* Threaded rod or other long, thin rod or stick to hold launch lug. Longer than body tube.
* 6 thin plywood strips to clamp fins (longer than body tube, ~1" or 3/4" wide, ~1/8" thick)
* 3 (or 6) small plywood strips (~1/2" x 2") thicker than fin material for use as wedges.
* 3 spring clamps
* Epoxy (or glue for lower power rockets)
* Paper towel to catch dripping epoxy

1. Take measurements and modify parameters in .SCAD file.
   * Inner diameter of body tube, and engine mount if applicable
   * Thickness of fin material
   * Thickness of plywood strips to clamp fins
   * Rod diameter - leave some clearance
   * Inner body tube diameter - leave ~0.5mm clearance
   * Engine mount inner diameter - leave ~0.5mm clearance
   * For very large body tubes, check to see if your printer is big enough - my Mosaic was big enough to do a 100mm diameter plate - plenty big for my 38mm diameter rocket.
   * Check other parameters to make sure they work for your situation.
2. Print 2 plates. I provided an STL for my situation.
3. Print 2 adapters - one to fit each end of the body tube, which may have an engine mount in one end. I provided adapter STL files for a 38mm body tube and 29mm motor mount.
4. Check fit of adapters into body tube and engine mount - I had to reprint one, and reduce the others with a file.
5. Attach the adapters to the plates with an M3 cap screw and nut. I put the paper towel in between the adapter and bottom plate to catch epoxy, cutting slots for the fins and rod to hold the launch lug.
6. My body tube was pre-marked with lines for the lug and fins. You can mark a straight line by laying the body tube next to a straight piece of wood on a flat surface and using it as a ruler.
7. Put threaded rod through the enclosed slot on one jig. Slip launch lug over it. Put rod through other slot. Put nuts on either end. Make sure one end is inside the fin slot blisters so it can stand on that end. Align with line marked on tube. Tighten nuts.
8. Put a pair of plywood strips in each set of slots. Put fin between the strips up on body tube where there is room. Slide fins down until they reach the location along the body tube desired. In my case, the fins stuck into the bottom jig slots. If you want the fins up higher, you may need a 2nd set of plywood wedges.
7. Attach spring clamps to the plywood strips just above the fins to hold them.
9. You may notice a slight gap between the fins and body tube. I fixed this by pulling the upper end of the plywood strips away from the body tube until they are part of the way out from the body tube. Then, stuff the plywood wedges in between the strips above the jig until the strips are firmly held in the upper slots. Now, push the top of the strips into the slots. This will push the fins firmly against the body tube.
10. Now that you know where everything goes, pull the strips a little ways out from the top of the body tube, apply epoxy between the base of the fins and body tube, and push them back against the body tube. Loosen one nut on the rod holding the launch lug and apply epoxy at the correct position. Mine was ~half way up the tube. Press rod against the body tube at top and bottom and tighten nuts.
11. Now that the fins and launch lug are firmly secured, you may be able to stand the whole assembly upright. If not, find a way to support it vertically so that if the epoxy runs, it runs down symmetrically.
12. Once the epoxy is dry, apply thickened epoxy fillets to the base of the fins and launch lug. Allow to dry. 