# SmoothLineGraphPlot
iOS application to plot line graph with smooth curves using Thomas algorithm

# Algorithm to draw a curved line through a set of points
I hope you already know what is Bezier curve, if not you can take a look here.

Let’s say we need to draw a curved line through 3 points A, B, C, there are 2 curved segments: AB and BC. With random control points, the line that connect those points may look like this:

![1_rn4cwzacc2tmjvpeu1ccwg](https://user-images.githubusercontent.com/32428855/50538470-59235b00-0b96-11e9-9f63-be79fe68d311.png)


In the image above, P1 and P2 are 2 control points of the segment AB while P3 and P4 are 2 control points of the segment BC. The line above is a curved line but it doesn’t look continuous at B.

# Now, How to choose control points:
STEP 1: Choose temporary control points on AB and BC straight segments.

![1](https://user-images.githubusercontent.com/32428855/50538487-9687e880-0b96-11e9-9265-dca4ad3af873.png)


The length of segment AP1 and segment BP2 are equal to 30% of the length of AB. Similarly for BP3 and CP4. With those control points, AB and BC are straight segments instead of being curved. Please note that the 30% is a number chosen by my intuition and it works out quite well.

STEP 2: Find good P2 and P3 from the temporary P2 and P3 above. The image below illustrates the way I find the final P2 and P3.


![2](https://user-images.githubusercontent.com/32428855/50538488-9687e880-0b96-11e9-92c8-506d9ec7319e.jpeg)





P2' is the reflection of P2 over the point B and P3' is the reflection of P3 over the point B.

The final P2 is midpoint of P2P3' segment and the final P3 is midpoint of P2'P3 segment.

The formula to find a midpoint of a segment is very straight forward. For example, the midpoint of segment P2P3' can be calculated as follow:

FP2.x = (P2.x + P3'.x)/2

FP2.y = (P2.y + P3'.y)/2

and the formula to calculate the reflection point can be inferred from the above formula. For example, to find the reflection of P2 over the point B:

P2'.x = 2*B.x - P2.x

P2'.y = 2*B.y -P2.y

With the new control points P2 and P3, the line chart become like this:

![3](https://user-images.githubusercontent.com/32428855/50538489-9687e880-0b96-11e9-9a1d-4f850188fec9.jpeg)


## SCREEN SHOTS:

Splash:

![screen shot 2018-12-28 at 2 05 06 am](https://user-images.githubusercontent.com/32428855/50538498-c59e5a00-0b96-11e9-85fd-8e1684bea4e6.png)

POINTS:
![screen shot 2018-12-28 at 2 05 16 am](https://user-images.githubusercontent.com/32428855/50538500-c59e5a00-0b96-11e9-8443-8230bd8a8a80.png)

PROMPT TO ENTER:
![screen shot 2018-12-28 at 2 09 47 am](https://user-images.githubusercontent.com/32428855/50538503-c636f080-0b96-11e9-8342-b6e155debc6a.png)

PLOTS THE LINE GRAPH:
![screen shot 2018-12-28 at 2 09 56 am](https://user-images.githubusercontent.com/32428855/50538504-c6cf8700-0b96-11e9-8462-b759384fc6f4.png)
