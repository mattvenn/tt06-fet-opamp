v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 280 -400 1080 0 {flags=graph
y1=-0.07
y2=0.07
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.092989944
x2=0.18648943
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="11 7"
node="vi
vo"}
N -80 -20 -50 -20 {
lab=#net1}
N -70 -100 -20 -100 {
lab=#net1}
N -70 -100 -70 -20 {
lab=#net1}
N 90 -0 100 -0 {
lab=Vo}
N 100 -100 100 -0 {
lab=Vo}
N 40 -100 100 -100 {
lab=Vo}
N -80 20 -80 40 {
lab=Vi}
N -80 20 -50 20 {
lab=Vi}
N -80 100 -80 120 {
lab=GND}
N 30 140 30 160 {
lab=GND}
N 30 60 30 80 {
lab=#net2}
N 160 140 160 160 {
lab=GND}
N 160 -60 160 80 {
lab=#net3}
N 10 -60 160 -60 {
lab=#net3}
N 10 -60 10 -50 {
lab=#net3}
N 100 0 110 0 {
lab=Vo}
N -10 60 -10 160 {
lab=GND}
N -90 20 -80 20 {
lab=Vi}
N -180 -20 -180 0 {
lab=GND}
N -180 -20 -140 -20 {
lab=GND}
C {opamp.sym} 20 0 0 0 {name=x1}
C {devices/res.sym} -110 -20 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 10 -100 1 0 {name=R2
value=2k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -180 0 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -80 70 0 0 {name=V1 value="sin(0 20m 100)" savecurrent=false}
C {devices/gnd.sym} -80 120 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 30 110 0 0 {name=V2 value=-1 savecurrent=false}
C {devices/gnd.sym} 30 160 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 160 110 0 0 {name=V3 value=1 savecurrent=false}
C {devices/gnd.sym} 160 160 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 110 0 2 0 {name=p1 sig_type=std_logic lab=Vo}
C {devices/gnd.sym} -10 160 0 0 {name=l5 lab=GND}
C {devices/launcher.sym} -100 -180 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} 60 -310 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
tran 10u 1
write opamp_tb.raw
.endc
"}
C {sky130_fd_pr/corner.sym} -220 -320 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -90 20 0 0 {name=p2 sig_type=std_logic lab=Vi}
