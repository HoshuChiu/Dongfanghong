# AG1280Q48演奏东方红
一个Verilog HDL实现的东方红演奏器。

编译方式参见AGM官网

效果见： https://www.bilibili.com/video/BV1wthnePESs
## 音调
音阶以A4=432Hz为基准，采用五度相生律得到音阶。

提供C major和F major两种调，在switcher下降沿切换。

## 时值
有2s,1s和0.5s三种间隔值，音符发声时长为1.75s,0.75s和0.25s

## 音色
输出占空比为50%的方波，无衰减。
