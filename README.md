<h1 align="center">
  Home-Automation-System
</h1>

# Overview

This is a VLSI project where we used Synthesis, Placing & Routing on our hardware designs to achieve best performance for the given requirements.

### Problem specification

Home automation involves a number of factors including:

• **Security**: where the system is concerned with home intrusion detection and avoidance.

• **Environment factors**: such as temperature and fire detection.

The system is designed to control the doors, windows, fire alarm and the temperature. Each process being automated is associated with a sensor.

• When the sensor is `LOW (0)` then no action is needed, and the next device can be checked.

• When the sensor is `HIGH (1)` then an action is needed.

Sensors include:

1. Front door
2. Rear door
3. Fire alarm
4. Window
5. Temperature

# Setup

> ### clone this repository with

```bash
https://github.com/We2Am-BaSsem/Home-Automation-System.git
```

> ### create new project with Modelsim in the same directory with ProjectName "Home-Automation-System" to create the work folder and mpf file.

```bash
Home-Automation-System
```

> ### Then add existing files to add VHDL or Verilog files to your local project
>
> #### unfortunately, You need to do this countinousley when you pull from the remote repository

# Solution

We worked on 4 different designs with resonable assumptions to solve this problem. Below is a brief description of them followed by the results:

### 13 States Mono

![13 States Mono Schema](./13StatesMono/13StatesMono.png)

<div align="center">
  13 States Mono Schema
</div>

Rather than checking the sensors on each cycle based on their priority, we check the sensors on 13 cycles, with each sensor having a higher weight based on its priority, so:

1. The front sensor has 4 cycles weight.
2. The rear sensor have 3 cycles weight.
3. The fire sensor have 3 cycles weight.
4. The window sensor have 2 cycles weight.
5. The temperature sensor have 1 cycles weight.

This means that the front door sensor is checked four times for every 13 clock cycles, while the rear door and fire alarm sensors are checked three times for every 13 clock cycles, and so on.

### 13 States Multi

![13 States Multi Schema](./13StatesMulti/13StatesMulti.png)

<div align="center">
  13 States Multi Schema
</div>

The goal of this design is to make the 13 States Mono more effective by not just checking one sensor on each clock cycle based on its weight, but also monitoring the other sensors if a sensor's reading is low on his turn.

### Design 14253

![Design 14253 Schema](./design14253/design14253.png)

<div align="center">
  Design 14253 Schema
</div>

This design utilizes two loops, the inner one loops every single cycle on all sensors until it finds a `HIGH` signal to process, while the other one decides the beginning of the inner loop, i.e.:

the inner loop can be one of 5:

```
1 2 3 4 5
2 3 4 5 1
3 4 5 1 2
4 5 1 2 3
5 1 2 3 4
```

the outer loop decides which one.

In another way, the outer loop selects where to start checking, then the inner loop stops when it finds a `HIGH` signal or outputs `ZERO` if none is found. The trick is, the Start of checking is `1, 4, 2, 5, 3` instead of the usual `1, 2, 3, 4, 5.` This distributes the checked signals more evenly compared to the naive way. In a third way, this design checks signals like this:

1. first cycle: `1->2->3->4->5`.
2. next: `4->5->1->2->3`.
3. next: `2->.....`.
4. next `5...`.
5. next `3...`.
6. go back to `1`.

### Seq mono check

![Seq mono check Schema](./seq_monocheck/seq_monocheck.png)

<div align="center">
  Seq mono check Schema
</div>

We examine the reading of one sensor every clock cycle, starting with the greatest priority and working our way down, therefore we need 6 clock cycles to check the full system design. When it's time to check a sensor with a lower priority than the previous one and a high value, we ignore the previous one and update the display with the current condition, despite the lower priority.

# Results

## Synthesis & Floor Planning

the images below show the resulting schema from Synthesis and the resulting chip design from Floor Planning per design

### 13 States Mono

<div align="center">

![13 States Mono Synthesis Schema](./13StatesMono/save.png)

13 States Mono Synthesis Schema

</div>

  <br/>

<div align="center">
  
  ![13 States Mono Chip Design](<./13StatesMono/Screenshot(62).png>)
  
  13 States Mono Chip Design
</div>

### 13 States Multi

<div align="center">
  
  ![13 States Multi Synthesis Schema](./13StatesMulti/save.png)

13 States Multi Synthesis Schema

</div>

  <br/>

<div align="center">
  
  ![13 States Multi Chip Design](<./13StatesMulti/Screenshot(63).png>)

13 States Multi Chip Design

</div>

### Design 14253

<div align="center">

![Design 14253 Synthesis Schema](./design14253/save.png)

Design 14253 Synthesis Schema

</div>
  
  <br/>

<div align="center">
  
  ![13 States Multi Chip Design](<./design14253/Screenshot(64).png>)

Design 14253 Chip Design

</div>

### Seq mono check

<div align="center">
  
  ![Seq mono check Synthesis Schema](./seq_monocheck/save.png)

Seq mono check Synthesis Schema

</div>

  <br/>

<div align="center">
  
  ![13 States Multi Chip Design](<./seq_monocheck/Screenshot(65).png>)

Seq mono check Chip Design

</div>

## Comparison by Metrics

• D1: 13 States Mono,
• D2: 13 States Multi,
• D3: 14253 Design,
• D4: Seq Mono Check

### By Time:

Mesured as `(Cycle Period - Worst Slack Time)`

<div align="center">
  
  ![Time Comparison Graph](<./Stats/TimeGraph.JPG>)

Time Comparison Graph

</div>

### Conclusions:

From These Graphs We considered optimizing `D4: Seq Mono Check`, Since it clearly has better metrics than the other designs, `D1: 13 States Mono` also was good in some metrics, we tried making some optimizations and got a score of `362`. So, D4 made more sense to work on.

We tried optimizing the design itself multiple times. While that did have some effects, they were very minor. On the other hand, we changed the input delay to reach the bottleneck of the minimum slack, we found that anything below `0.3ns` input delay had no effects on the minimum slack. So we used `0.3ns` instead of the initial `0.7ns`. Below we compare the results:

<div align="center">
  
  ![Optimizations Comparison Table](<./Stats/Table.JPG>)

Optimizations Comparison Table

</div>
