ClrHome
Disp "LOADING..."
17->dim(L2)
If L2(16)=0
1->L2(16)
Degree
500->L2(9)
500->L2(10)
1->Xmin
95->Xmax
0->Ymin
62->Ymax
Func
AxesOff
GridOff
FnOff 
PlotsOff 
45->L2(3
45->L2(4
20->L2(5
20->L2(6
0->L2(7)
0->L2(8)
randInt(6,26)->L2(1)
randInt(70,90)->L2(2)
Lbl theta1
Lbl S
randInt(10,16)->A
2rand+2->B
randInt(1,90)->C
randInt(20,25)->D
randInt(2,4)->E
randInt(11,18)->F
ClrDraw
Text(0,0,"TANK WAR |v3.6 -- J. ANDERSON"
For(X,1,95
	Acos(XB+C)+D+Ecos(XF)->L1(X)
	Line(X,0,X,L1(X)
End
For(A,55,62
	Line(1,A,95,A,0
End
10rand-5->L2(17
randInt(2,4->V
ClrHome
Disp "X HITS TO WIN!"
Output(1,1,V
Pause 
2->P
Goto 1A
Lbl 1
ClrDraw
For(A,1,95
	Line(A,0,A,L1(A)
End
Lbl 1A
L2(17)->I
If I<0
I+2->J
If I>0
I-2->J
If I=0
0->J
Line(48,60,48+I,60
Line(48+I,60,48+J,62
Line(48+I,60,48+J,58
~P+3->P
Lbl 1P
For(A,1,2
	L2(A)->B
	For(C,L1(B)-2,L1(B)+2
		Line(B-2,C,B+2,C
	End
	Pt-Off(B,L1(B),2
End
L2(P)->X
Line(X-2,61,X,59
Line(X,59,X+2,61
L2(~P+3)->U
Line(U-2,61,U,59,0
Line(U,59,U+2,61,0
Line(1,0,95,0
Pause 
If P=1
"1"->Str1
If P=2
"2"->Str1
L2(8+P)+200->L2(8+P)
Lbl theta9
0->H
ClrHome
Disp "PLAYER "+Str1,"MONEY:"
Output(2,8,L2(8+P)
Pause 
ClrHome
Menu("PLAYER "+Str1+"        ","OFFENSE",O,"DEFENSE",D,"SKIP TURN +700",ST
Lbl ST
L2(8+P)+500->L2(8+P)
Goto 1A
Lbl O
Menu("OFFENSE P"+Str1,"MISSLE    -100",OM,"ROCKET    -750",OR,"SGM       -800",OS,"ROLLER    -850",O5,"SAT LASER-1000",OL,"BACK",theta9
Lbl D
Menu("DEFENSE P"+Str1,"BARRACADE -500",DB,"DRILL     -750",DD,"HILL      -900",DH,"SPIKES    -650",DS,"WALL     -1500",DW,"BACK",theta9
Lbl O5
If L2(8+P)-850<0
Goto IF
L2(8+P)-850->L2(8+P)
6->H
Goto 1theta
Lbl O6
round(N,0)->N
L1(N)->O
If N+1<=95
L1(N+1)->I
If N-1>=1
L1(N-1)->J
If I>J:Then
	~1->E
	Else
	1->E
End
N->D
While E=E
	Pt-Change(D,L1(D)+1
	Pt-Change(D,L1(D)
	D+E->D
	If N>95 or N<1
	Goto O7
	If abs(L1(D)-L1(N))>7 or L1(D)>L1(N) or D=L2(~P+3)
	Goto O8
	Pt-Change(N,L1(N)+1
	Pt-Change(N,L1(N)
	D->N
End
Lbl O7
Goto 1A
Lbl O8
3->L2(14)
L1(D)->O
Goto 3B
Lbl OR
If L2(8+P)-750<0
Goto IF
L2(8+P)-750->L2(8+P)
7->L2(14)
Goto 1theta
Lbl DW
If L2(8+P)-1500<0
Goto IF
L2(8+P)-1500->L2(8+P)
48->N
While E=E
	Pt-Change(N-5,57
	Pt-Change(N+5,57
	0->K
	While K=0
		getKey->K
	End
	Pt-Change(N-5,57
	Pt-Change(N+5,57
	If K=24:Then
		N-1->N
		If N<6
		6->N
	End
	If K=26:Then
		N+1->N
		If N>90
		90->N
	End
	If K=105
	Goto W1
End
Lbl W1
For(I,~5,5
	50->L1(I+N)
End
5->A
Goto RD
Lbl OM
If L2(8+P)-200<0
Goto IF
L2(8+P)-200->L2(8+P)
4->L2(14)
Goto 1theta
Lbl OS
If L2(8+P)-800<0
Goto IF
L2(8+P)-800->L2(8+P)
For(theta,1,80
	Pt-On(theta,62
End
L2(P)->X
L1(X)->Y
0->N
1->O
X->I
Y->J
Lbl S1
0->K
While K=0
	X+N->X
	Y+O->Y
	Pt-On(X,Y
	Pt-Off(I,J
	Pt-Off(theta,62
	theta-1->theta
	If theta<0
	Goto S3
	If X>95 or X<1 or Y>61 or Y<L1(X)
	Goto S2
	X->I
	Y->J
	getKey->K
End
If K=24:Then
	~1->N
	0->O
	Goto S1
End
If K=26:Then
	1->N
	0->O
	Goto S1
End
If K=25:Then
	0->N
	1->O
	Goto S1
End
If K=34:Then
	0->N
	~1->O
	Goto S1
End
Goto S1
Lbl S3
For(O,Y,L1(X),~1
	Pt-On(X,O
End
For(O,Y,L1(X)+1,~1
	Pt-Off(X,O
End
Lbl S2
Line(1,62,95,62,0
L2(~P+3)->U
If X=U
Goto 65
Goto 1A
Lbl OL
If L2(8+P)-1000<0
Goto IF
L2(8+P)-1000->L2(8+P)
If P=1
L2(2)->U
If P=2
L2(1)->U
For(A,0,5
	If P=1
	randInt(48,94)->N
	If P=2
	randInt(1,46)->N
	Vertical N
	Vertical N+1
	If N=U or N+1=U
	Goto 65
	Line(N,L1(N)-1,N,62,0
	Line(N+1,L1(N+1)-1,N+1,62,0
	L1(N)-1->L1(N)
	L1(N+1)-1->L1(N+1)
End
Goto 1A
Lbl DB
If L2(8+P)-500<0
Goto IF
L2(8+P)-500->L2(8+P)
If P=1
1->E
If P=2
~1->E
L2(P)->N
For(I,N+E4,N+E8,E
	If I>=1 and I<=95
	Then
		L1(I)+5->L1(I)
		Line(I,0,I,L1(I)
	End
End
Goto 1A
Lbl DD
If L2(8+P)-750<0
Goto IF
L2(8+P)-750->L2(8+P)
L2(P)->N
L1(N)-5->J
If J<0
0->J
For(I,N-2,N+2
	If I>=1 and I<=95
	Then
		Line(I,0,I,62,0
		J->L1(I)
		Line(I,0,I,L1(I)
	End
End
100randInt(2,9)->I
ClrHome
Disp "YOU FOUND XXX IN","GOLD WHILE","DRILLING"
Output(1,11,I
L2(8+P)+I->L2(8+P)
Pause 
Goto 1A
Lbl DH
If L2(8+P)-900<0
Goto IF
L2(8+P)-900->L2(8+P)
48->N
While E=E
	Pt-Change(N-15,57
	Pt-Change(N+15,57
	0->K
	While K=0
		getKey->K
	End
	Pt-Change(N-15,57
	Pt-Change(N+15,57
	If K=24:Then
		N-1->N
		If N<16
		16->N
	End
	If K=26:Then
		N+1->N
		If N>80
		80->N
	End
	If K=105
	Goto H5
End
Lbl H5
Vertical N-15
Vertical N+15
round(N,0)->N
For(S,~15,15
	5+5cos(12S)+L1(S+N)->T
	If T>55
	55->T
	If T<0
	0->T
	T->L1(S+N)
End
15->A
Goto RD
Lbl DS
If L2(8+P)-650<0
Goto IF
L2(8+P)-650->L2(8+P)
48->N
While E=E
	Pt-Change(N,L1(N
	Pt-Change(N,57
	0->K
	While K=0
		getKey->K
	End
	Pt-Change(N,L1(N
	Pt-Change(N,57
	If K=24:Then
		N-1->N
		If N<1
		1->N
	End
	If K=26:Then
		N+1->N
		If N>95
		95->N
	End
	If K=105
	Goto S8
End
Lbl S8
For(A,~5,5,2
	If A+N>=1 and A+N<=95
	Then
		L1(A+N)+7->J
		If J>55
		55->J
		J->L1(A+N)
	End
End
Horizontal 0
Goto RD
Lbl IF
ClrHome
Output(4,1,"NOT ENOUGH MONEY"
Pause 
Goto theta9
Lbl 1theta
ClrHome
Disp "PLAYER","","ANGLE:    2ND","FORCE:    ALPHA","","[ENTER] DONE"
Output(8,1,"[DEL] TO SEE POS"
Output(1,8,P
L2(P+2)->A
L2(P+4)->F
Lbl K1
0->K
Output(3,8,A
Output(4,8,F
While K=0
	getKey->K
End
If K=21:Then
	ClrHome
	Disp A
	Output(1,1,"PRVS ANGLE:"
	Input "ANGLE:",A
	int(A)->A
	If A>180
	180->A
	If A<0
	0->A
	A->L2(P+2)
	Goto 1theta
End
If K=31:Then
	ClrHome
	Disp F
	Output(1,1,"PRVS FORCE:"
	Input "FORCE:",F
	int(F)->F
	If F>80
	80->F
	If F<1
	1->F
	F->L2(P+4)
	Goto 1theta
End
If K=23:Then
	DispGraph
	Pause 
End
If K=105
Goto 2
If K=45
Goto Q
Goto K1
Lbl A1
Output(3,9,"  "
DS<(A,0
Goto K1
0->A
Goto K1
Lbl A2
Output(3,9," "
IS>(A,180
Goto K1
180->A
Goto K1
Lbl 2
A->L2(2+P)
F->L2(4+P)
0->T
L2(P)->X
L1(X)+3->Y
X->I
Y->J
If P=1
1->E
If P=2
~1->E
Pt-Change(X,Y
Pt-Off(X,0
L2(17)/2->C
While E=E
	TC+X+EFcos(A)T->N
	Y+Fsin(A)T-9.8T^^2->O
	If N>95 or N<1
	Goto 3A
	If O<=L1(round(N,0))
	Goto 3
	Pt-Change(N,O
	Pt-Change(I,J
	Pt-Off(N,0
	Pt-On(I,0
	N->I
	O->J
	T+.1->T
End
Lbl 3
Pt-Change(I,0
Pt-On(I,0
If H=6
Goto O6
round(N,0)->N
Lbl 3B
L2(14)->F
For(I,0,F
	sqrt(F^^2-I^^2)->J
	Line(N+I,O+J,N+I,O-J,0
	Line(N-I,O+J,N-I,O-J,0
End
L2(14)->F
For(S,~F,F
	If N+S>=1 and N+S<=95:Then
		sqrt(F^^2-S^^2)->T
		L1(N+S)->J
		O+T->A
		O-T->B
		If B<=J and A>=J
		B->L1(N+S)
		If J>A
		J-(A-B)->L1(N+S)
		If L1(N+S)<0
		0->L1(N+S)
	End
End
L2(14)->F
F->A
Goto R1
Lbl 3A
Pt-Change(I,J
Pt-On(I,0
Goto 1A
Lbl RD
0->F
Lbl R1
For(I,0,A+3
	Line(N+I,0,N+I,62,0
	Line(N-I,0,N-I,62,0
	If N+I<=95
	Line(N+I,0,N+I,L1(N+I)
	If N-I>=1
	Line(N-I,0,N-I,L1(N-I)
End
If F=0
Goto 1A
L2(P)->I
L2(~P+3)->U
L2(14)->F
If sqrt(abs(L1(I)-O)^^2+abs(I-N)^^2)<=L2(14)
Goto 64
If sqrt(abs(L1(U)-O)^^2+abs(N-U)^^2)<=L2(14)
Goto 65
Goto 1A
Lbl 64
L2(6+P)-1->L2(6+P)
Goto 7
Lbl 65
L2(6+P)+1->L2(6+P)
1000+L2(8+P)->L2(8+P)
ClrHome
Disp "1000 AWARDED TO","PLAYER X!"
Output(2,8,P
Pause 
Goto 7
Lbl 7
ClrHome
Disp "]----STATS-----[",L2(7),L2(8),"","]----CREDITS---[",L2(9),L2(10)
Output(2,1,"PLAYER 1:"
Output(3,1,"PLAYER 2:"
Output(6,1,"P1 MONEY:"
Output(7,1,"P2 MONEY:"
Pause 
L2(7)->G
L2(8)->H
If G=V or H=V
Goto 4
ClrDraw
1->F
Goto 1
Lbl Q
ClrHome
Output(1,1,""
Stop
Lbl 4
ClrHome
Disp "GAME OVER","PLAYER   WINS!"
Output(2,8,P
