# BG_ROUTINES
[Back to Fanuc LS Example README](/main_README.md)
## This repo holds useful Fanuc TP programs mainly used in Background Logic.
>Background Logic routines typically start with "BG."

> Routines Listed:

-  *Axis Monitor*

-  *CPC Zone Status*

-  *One Shot*

- *Toggle*

- *Debounce or Timed Input monitoring*
---
---

## [_BG_AXIS_MONITOR.LS](BG_AXIS_MONITOR.LS)

>SYNOPSIS
- A very common routine to monitor Joint or CART positions in real time.

![_BG_AXIS_MONITOR Image](/Images/AxisMonitor.png)

>USES
- Use the registers to interrogate the robot position for recovery routines or status during production.

>VARIANTS
- Another way to get position data is call a subroutine to get LPOS or JPOS, but the data is only as recent as the last call.
<!--END AXIS MONITOR -->
---
## [_BG_CPC_MONITOR.LS](_BG_CPC_MONITOR.LS)
>SYNOPSIS
- Using DCS CPC zones for status.
- 
![_BC_CPC_MONITOR Image](/Images/CPC_Monitor.png)
>> ![CPC Safe Image](/Images/CPC_Safe.png) ![CPC Disabled Image](/Images/CPC_Disabled.png) ![CPC Unsafe Image](/Images/CPC_Unsafe.png)
>USES
- This could be used during pick and place routines, and/or for a recovery routine.
>VARIANTS
- There are a plethora of ways to be creative for using DCS flags for monitoring. This is just one example.
- 
---
<!--END CPC MONITOR -->

## [_BG_ONESHOT.LS](_BG_ONESHOT.LS) 
>SYNOPSIS
 - Example of detecting a rising edge/one shot of an input.

![_BG_ONESHOT Image](/Images/OneShot.png)
>USES
- Detects one press of a button or an input going high.  

>VARIANTS
- The example shows a count incrementing by one every one shot.  The user application will dictate the output.
<!--END ONESHOT -->
---
## [_BG_TOGGLE.LS](_BG_TOGGLE.LS)
>USES

>VARIANTS
<!--END TOGGLE -->
---

