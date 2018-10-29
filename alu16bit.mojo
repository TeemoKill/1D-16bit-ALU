<?xml version="1.0" encoding="UTF-8"?>
<project name="alu16bit" board="Mojo V3" language="Lucid">
  <files>
    <src>alu16.luc</src>
    <src>storeab.luc</src>
    <src>boole16.luc</src>
    <src>seven_seg.luc</src>
    <src>comparator16.luc</src>
    <src>multi_seven_se.luc</src>
    <src>shift16.luc</src>
    <src top="true">mojo_top.luc</src>
    <src>tester16.luc</src>
    <src>adder16.luc</src>
    <ucf>overrideclk.ucf</ucf>
    <ucf lib="true">io_shield.ucf</ucf>
    <ucf lib="true">mojo.ucf</ucf>
    <component>decoder.luc</component>
    <component>reset_conditioner.luc</component>
    <component>pipeline.luc</component>
    <component>button_conditioner.luc</component>
    <component>counter.luc</component>
    <component>edge_detector.luc</component>
  </files>
</project>
