unit W3C.FrameTiming;

interface

uses
  W3C.PerformanceTimeline;

type
  JPerformanceFrameTiming = class external 'PerformanceFrameTiming' (JPerformanceEntry);