��
�$�#
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint�
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
P

ComplexAbs
x"T	
y"Tout"
Ttype0:
2"
Touttype0:
2
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
J
FFT
input"Tcomplex
output"Tcomplex"
Tcomplextype0:
2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
A
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
�
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 �
:
Less
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718߸
�
classification_head/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_nameclassification_head/kernel
�
.classification_head/kernel/Read/ReadVariableOpReadVariableOpclassification_head/kernel*
_output_shapes
:	�*
dtype0
�
classification_head/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameclassification_head/bias
�
,classification_head/bias/Read/ReadVariableOpReadVariableOpclassification_head/bias*
_output_shapes
:*
dtype0
�
 audio_preprocessing_layer/windowVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" audio_preprocessing_layer/window
�
4audio_preprocessing_layer/window/Read/ReadVariableOpReadVariableOp audio_preprocessing_layer/window*
_output_shapes	
:�*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: *
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
: *
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
: *
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
��*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:�*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
!Adam/classification_head/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*2
shared_name#!Adam/classification_head/kernel/m
�
5Adam/classification_head/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/classification_head/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/classification_head/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/classification_head/bias/m
�
3Adam/classification_head/bias/m/Read/ReadVariableOpReadVariableOpAdam/classification_head/bias/m*
_output_shapes
:*
dtype0
�
!Adam/classification_head/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*2
shared_name#!Adam/classification_head/kernel/v
�
5Adam/classification_head/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/classification_head/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/classification_head/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/classification_head/bias/v
�
3Adam/classification_head/bias/v/Read/ReadVariableOpReadVariableOpAdam/classification_head/bias/v*
_output_shapes
:*
dtype0
I
ConstConst*
_output_shapes
: *
dtype0*
valueB	 :��
J
Const_1Const*
_output_shapes
: *
dtype0*
value
B :�
J
Const_2Const*
_output_shapes
: *
dtype0*
value
B :�

NoOpNoOp
�G
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*�G
value�FB�F B�F
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
regularization_losses
trainable_variables
	variables
	keras_api

signatures
�
layer_with_weights-0
layer-0
	
signatures
#
_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	optimizer
regularization_losses
trainable_variables
	variables
 	keras_api
 

!0
"1
^
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
!11
"12
�
.metrics
regularization_losses
/layer_metrics
trainable_variables
0layer_regularization_losses
	variables
1non_trainable_variables

2layers
 
�

#window
#_window
#3_self_saveable_object_factories
4regularization_losses
5trainable_variables
6	variables
7	keras_api
 
 
 
 

#0
�
8metrics
regularization_losses
9layer_metrics
trainable_variables
:layer_regularization_losses
	variables
;non_trainable_variables

<layers
h

$kernel
%bias
=regularization_losses
>trainable_variables
?	variables
@	keras_api
R
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
h

&kernel
'bias
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
R
Iregularization_losses
Jtrainable_variables
K	variables
L	keras_api
h

(kernel
)bias
Mregularization_losses
Ntrainable_variables
O	variables
P	keras_api
R
Qregularization_losses
Rtrainable_variables
S	variables
T	keras_api
h

*kernel
+bias
Uregularization_losses
Vtrainable_variables
W	variables
X	keras_api
R
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
R
]regularization_losses
^trainable_variables
_	variables
`	keras_api
R
aregularization_losses
btrainable_variables
c	variables
d	keras_api
h

,kernel
-bias
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
R
iregularization_losses
jtrainable_variables
k	variables
l	keras_api
h

!kernel
"bias
mregularization_losses
ntrainable_variables
o	variables
p	keras_api
h
qiter

rbeta_1

sbeta_2
	tdecay
ulearning_rate!m�"m�!v�"v�
 

!0
"1
V
$0
%1
&2
'3
(4
)5
*6
+7
,8
-9
!10
"11
�
vmetrics
regularization_losses
wlayer_metrics
trainable_variables
xlayer_regularization_losses
	variables
ynon_trainable_variables

zlayers
`^
VARIABLE_VALUEclassification_head/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEclassification_head/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUE audio_preprocessing_layer/window&variables/0/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_1/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_1/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_2/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_2/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_3/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_3/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_4/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_4/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_1/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_1/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
N
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10

0
1
 
 
 

#0
�
{metrics
4regularization_losses
|layer_metrics
}layer_regularization_losses
5trainable_variables
6	variables
~non_trainable_variables

layers
 
 
 

#0

0
 
 

$0
%1
�
�metrics
=regularization_losses
�layer_metrics
 �layer_regularization_losses
>trainable_variables
?	variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
Aregularization_losses
�layer_metrics
 �layer_regularization_losses
Btrainable_variables
C	variables
�non_trainable_variables
�layers
 
 

&0
'1
�
�metrics
Eregularization_losses
�layer_metrics
 �layer_regularization_losses
Ftrainable_variables
G	variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
Iregularization_losses
�layer_metrics
 �layer_regularization_losses
Jtrainable_variables
K	variables
�non_trainable_variables
�layers
 
 

(0
)1
�
�metrics
Mregularization_losses
�layer_metrics
 �layer_regularization_losses
Ntrainable_variables
O	variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
Qregularization_losses
�layer_metrics
 �layer_regularization_losses
Rtrainable_variables
S	variables
�non_trainable_variables
�layers
 
 

*0
+1
�
�metrics
Uregularization_losses
�layer_metrics
 �layer_regularization_losses
Vtrainable_variables
W	variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
Yregularization_losses
�layer_metrics
 �layer_regularization_losses
Ztrainable_variables
[	variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
]regularization_losses
�layer_metrics
 �layer_regularization_losses
^trainable_variables
_	variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
aregularization_losses
�layer_metrics
 �layer_regularization_losses
btrainable_variables
c	variables
�non_trainable_variables
�layers
 
 

,0
-1
�
�metrics
eregularization_losses
�layer_metrics
 �layer_regularization_losses
ftrainable_variables
g	variables
�non_trainable_variables
�layers
 
 
 
�
�metrics
iregularization_losses
�layer_metrics
 �layer_regularization_losses
jtrainable_variables
k	variables
�non_trainable_variables
�layers
 

!0
"1

!0
"1
�
�metrics
mregularization_losses
�layer_metrics
 �layer_regularization_losses
ntrainable_variables
o	variables
�non_trainable_variables
�layers
][
VARIABLE_VALUE	Adam/iter>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEAdam/beta_1@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEAdam/beta_2@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE
Adam/decay?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/learning_rateGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 
 
F
$0
%1
&2
'3
(4
)5
*6
+7
,8
-9
^
0
1
2
3
4
5
6
7
8
9
10
11
12
 
 
 

#0
 
 
 
 

$0
%1
 
 
 
 
 
 
 
 
 

&0
'1
 
 
 
 
 
 
 
 
 

(0
)1
 
 
 
 
 
 
 
 
 

*0
+1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

,0
-1
 
 
 
 
 
 
 
 
 
 
 
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
db
VARIABLE_VALUEtotalIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEcountIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
fd
VARIABLE_VALUEtotal_1Ilayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEcount_1Ilayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
��
VARIABLE_VALUE!Adam/classification_head/kernel/matrainable_variables/0/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/classification_head/bias/matrainable_variables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE!Adam/classification_head/kernel/vatrainable_variables/0/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/classification_head/bias/vatrainable_variables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
#serving_default_audio_preproc_inputPlaceholder*)
_output_shapes
:�����������*
dtype0*
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCall#serving_default_audio_preproc_inputConst audio_preprocessing_layer/windowConst_1Const_2conv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_1/kerneldense_1/biasclassification_head/kernelclassification_head/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_30308
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename.classification_head/kernel/Read/ReadVariableOp,classification_head/bias/Read/ReadVariableOp4audio_preprocessing_layer/window/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp5Adam/classification_head/kernel/m/Read/ReadVariableOp3Adam/classification_head/bias/m/Read/ReadVariableOp5Adam/classification_head/kernel/v/Read/ReadVariableOp3Adam/classification_head/bias/v/Read/ReadVariableOpConst_3*'
Tin 
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_31409
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameclassification_head/kernelclassification_head/bias audio_preprocessing_layer/windowconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1!Adam/classification_head/kernel/mAdam/classification_head/bias/m!Adam/classification_head/kernel/vAdam/classification_head/bias/v*&
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_31497��
�H
�	
G__inference_sequential_1_layer_call_and_return_conditional_losses_29856

inputsA
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:A
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource:  6
(conv2d_4_biasadd_readvariableop_resource: :
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�E
2classification_head_matmul_readvariableop_resource:	�A
3classification_head_biasadd_readvariableop_resource:
identity��*classification_head/BiasAdd/ReadVariableOp�)classification_head/MatMul/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�*
paddingVALID*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�2
conv2d_1/BiasAdds
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*'
_output_shapes
:*�2
conv2d_1/Relu�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*&
_output_shapes
:p*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:m *
paddingVALID*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:m 2
conv2d_2/BiasAddr
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:m 2
conv2d_2/Relu�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*&
_output_shapes
:
6 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 *
paddingVALID*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 2
conv2d_3/BiasAddr
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*&
_output_shapes
:	3 2
conv2d_3/Relu�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2
conv2d_4/BiasAddr
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*&
_output_shapes
: 2
conv2d_4/Relu�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_1/Const�
flatten_1/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten_1/Const:output:0*
T0*
_output_shapes
:	�2
flatten_1/Reshapez
dropout_1/IdentityIdentityflatten_1/Reshape:output:0*
T0*
_output_shapes
:	�2
dropout_1/Identity�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout_1/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/BiasAddh
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*
_output_shapes
:	�2
dense_1/Reluz
dropout_2/IdentityIdentitydense_1/Relu:activations:0*
T0*
_output_shapes
:	�2
dropout_2/Identity�
)classification_head/MatMul/ReadVariableOpReadVariableOp2classification_head_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02+
)classification_head/MatMul/ReadVariableOp�
classification_head/MatMulMatMuldropout_2/Identity:output:01classification_head/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/MatMul�
*classification_head/BiasAdd/ReadVariableOpReadVariableOp3classification_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*classification_head/BiasAdd/ReadVariableOp�
classification_head/BiasAddBiasAdd$classification_head/MatMul:product:02classification_head/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/BiasAdd�
classification_head/SoftmaxSoftmax$classification_head/BiasAdd:output:0*
T0*
_output_shapes

:2
classification_head/Softmax�
IdentityIdentity%classification_head/Softmax:softmax:0+^classification_head/BiasAdd/ReadVariableOp*^classification_head/MatMul/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 2X
*classification_head/BiasAdd/ReadVariableOp*classification_head/BiasAdd/ReadVariableOp2V
)classification_head/MatMul/ReadVariableOp)classification_head/MatMul/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�
�
*__inference_Assert_AssertGuard_true_95_116%
!assert_assertguard_identity_equal
"
assert_assertguard_placeholder!
assert_assertguard_identity_1
P
Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert/AssertGuard/NoOp�
Assert/AssertGuard/IdentityIdentity!assert_assertguard_identity_equal^Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity�
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
: :�����������: 

_output_shapes
: :/+
)
_output_shapes
:�����������
�
�
+__inference_Assert_AssertGuard_false_96_180#
assert_assertguard_assert_equal
&
"assert_assertguard_assert_waveform!
assert_assertguard_identity_1
��Assert/AssertGuard/Assert�
Assert/AssertGuard/AssertAssertassert_assertguard_assert_equal"assert_assertguard_assert_waveform*

T
2*
_output_shapes
 2
Assert/AssertGuard/Assert�
Assert/AssertGuard/IdentityIdentityassert_assertguard_assert_equal^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity�
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
: :�����������26
Assert/AssertGuard/AssertAssert/AssertGuard/Assert: 

_output_shapes
: :/+
)
_output_shapes
:�����������
�
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_29418

inputs

identity_1R
IdentityIdentityinputs*
T0*
_output_shapes
:	�2

Identitya

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
:	�2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_29883

inputs
audio_preproc_29794"
audio_preproc_29796:	�
audio_preproc_29798
audio_preproc_29800,
sequential_1_29857: 
sequential_1_29859:,
sequential_1_29861:  
sequential_1_29863: ,
sequential_1_29865:   
sequential_1_29867: ,
sequential_1_29869:   
sequential_1_29871: &
sequential_1_29873:
��!
sequential_1_29875:	�%
sequential_1_29877:	� 
sequential_1_29879:
identity��%audio_preproc/StatefulPartitionedCall�$sequential_1/StatefulPartitionedCall�
%audio_preproc/StatefulPartitionedCallStatefulPartitionedCallinputsaudio_preproc_29794audio_preproc_29796audio_preproc_29798audio_preproc_29800*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_audio_preproc_layer_call_and_return_conditional_losses_291652'
%audio_preproc/StatefulPartitionedCall�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall.audio_preproc/StatefulPartitionedCall:output:0sequential_1_29857sequential_1_29859sequential_1_29861sequential_1_29863sequential_1_29865sequential_1_29867sequential_1_29869sequential_1_29871sequential_1_29873sequential_1_29875sequential_1_29877sequential_1_29879*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_298562&
$sequential_1/StatefulPartitionedCall�
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0&^audio_preproc/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : : : : : 2N
%audio_preproc/StatefulPartitionedCall%audio_preproc/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
�
-__inference_Assert_1_AssertGuard_false_115_86'
#assert_1_assertguard_assert_equal_1
7
3assert_1_assertguard_assert_readvariableop_resource#
assert_1_assertguard_identity_1
��Assert_1/AssertGuard/Assert�
*Assert_1/AssertGuard/Assert/ReadVariableOpReadVariableOp3assert_1_assertguard_assert_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*Assert_1/AssertGuard/Assert/ReadVariableOp�
Assert_1/AssertGuard/AssertAssert#assert_1_assertguard_assert_equal_12Assert_1/AssertGuard/Assert/ReadVariableOp:value:0*

T
2*
_output_shapes
 2
Assert_1/AssertGuard/Assert�
Assert_1/AssertGuard/IdentityIdentity#assert_1_assertguard_assert_equal_1^Assert_1/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert_1/AssertGuard/Identity�
Assert_1/AssertGuard/Identity_1Identity&Assert_1/AssertGuard/Identity:output:0^Assert_1/AssertGuard/Assert*
T0
*
_output_shapes
: 2!
Assert_1/AssertGuard/Identity_1"K
assert_1_assertguard_identity_1(Assert_1/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :2:
Assert_1/AssertGuard/AssertAssert_1/AssertGuard/Assert: 

_output_shapes
: 
�	
�
B__inference_dense_1_layer_call_and_return_conditional_losses_31258

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2	
BiasAddP
ReluReluBiasAdd:output:0*
T0*
_output_shapes
:	�2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_29272

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
N__inference_classification_head_layer_call_and_return_conditional_losses_29431

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpj
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2	
BiasAddX
SoftmaxSoftmaxBiasAdd:output:0*
T0*
_output_shapes

:2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�

�
N__inference_classification_head_layer_call_and_return_conditional_losses_31305

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpj
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2	
BiasAddX
SoftmaxSoftmaxBiasAdd:output:0*
T0*
_output_shapes

:2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_31285

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constk
dropout/MulMulinputsdropout/Const:output:0*
T0*
_output_shapes
:	�2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	�2
dropout/Mul_1]
IdentityIdentitydropout/Mul_1:z:0*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_1_layer_call_fn_29266

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_292602
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_29284

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
__inference_call_364

inputs
	equal_1_x
unknown
	unknown_0
	unknown_1
identity��Assert/AssertGuard�Assert_1/Assert�StatefulPartitionedCall�StatefulPartitionedCall_1N
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
Equal�
Assert/AssertGuardIf	Equal:z:0	Equal:z:0inputs*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *=
else_branch.R,
*__inference_Assert_AssertGuard_false_65_24*
output_shapes
: *=
then_branch.R,
*__inference_Assert_AssertGuard_true_64_1682
Assert/AssertGuard�
Assert/AssertGuard/IdentityIdentityAssert/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/IdentityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
Equal_1Equal	equal_1_xstrided_slice:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_1H
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1�
Assert_1/AssertAssertEqual_1:z:0Shape_1:output:0^Assert/AssertGuard*

T
2*
_output_shapes
 2
Assert_1/Assert�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *0
f+R)
'__inference_tf_webaudio_spectrogram_3162
StatefulPartitionedCall�
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0^Assert_1/Assert*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_z_normalize_spectrogram_672
StatefulPartitionedCall_1k
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ExpandDims/dim�

ExpandDims
ExpandDims"StatefulPartitionedCall_1:output:0ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+���������������������������2

ExpandDims�
IdentityIdentityExpandDims:output:0^Assert/AssertGuard^Assert_1/Assert^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: :: : 2(
Assert/AssertGuardAssert/AssertGuard2"
Assert_1/AssertAssert_1/Assert22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_29320

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:*�2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*'
_output_shapes
:*�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:+�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:O K
'
_output_shapes
:+�
 
_user_specified_nameinputs
�d
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_30445

inputs1
-audio_preproc_audio_preprocessing_layer_30385<
-audio_preproc_audio_preprocessing_layer_30387:	�1
-audio_preproc_audio_preprocessing_layer_303891
-audio_preproc_audio_preprocessing_layer_30391N
4sequential_1_conv2d_1_conv2d_readvariableop_resource:C
5sequential_1_conv2d_1_biasadd_readvariableop_resource:N
4sequential_1_conv2d_2_conv2d_readvariableop_resource: C
5sequential_1_conv2d_2_biasadd_readvariableop_resource: N
4sequential_1_conv2d_3_conv2d_readvariableop_resource:  C
5sequential_1_conv2d_3_biasadd_readvariableop_resource: N
4sequential_1_conv2d_4_conv2d_readvariableop_resource:  C
5sequential_1_conv2d_4_biasadd_readvariableop_resource: G
3sequential_1_dense_1_matmul_readvariableop_resource:
��C
4sequential_1_dense_1_biasadd_readvariableop_resource:	�R
?sequential_1_classification_head_matmul_readvariableop_resource:	�N
@sequential_1_classification_head_biasadd_readvariableop_resource:
identity��?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall�7sequential_1/classification_head/BiasAdd/ReadVariableOp�6sequential_1/classification_head/MatMul/ReadVariableOp�,sequential_1/conv2d_1/BiasAdd/ReadVariableOp�+sequential_1/conv2d_1/Conv2D/ReadVariableOp�,sequential_1/conv2d_2/BiasAdd/ReadVariableOp�+sequential_1/conv2d_2/Conv2D/ReadVariableOp�,sequential_1/conv2d_3/BiasAdd/ReadVariableOp�+sequential_1/conv2d_3/Conv2D/ReadVariableOp�,sequential_1/conv2d_4/BiasAdd/ReadVariableOp�+sequential_1/conv2d_4/Conv2D/ReadVariableOp�+sequential_1/dense_1/BiasAdd/ReadVariableOp�*sequential_1/dense_1/MatMul/ReadVariableOp�
?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallinputs-audio_preproc_audio_preprocessing_layer_30385-audio_preproc_audio_preprocessing_layer_30387-audio_preproc_audio_preprocessing_layer_30389-audio_preproc_audio_preprocessing_layer_30391*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:+�*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *1
f,R*
(__inference_restored_function_body_202172A
?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall�
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOp�
sequential_1/conv2d_1/Conv2DConv2DHaudio_preproc/audio_preprocessing_layer/StatefulPartitionedCall:output:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�*
paddingVALID*
strides
2
sequential_1/conv2d_1/Conv2D�
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp�
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�2
sequential_1/conv2d_1/BiasAdd�
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*'
_output_shapes
:*�2
sequential_1/conv2d_1/Relu�
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_1/Relu:activations:0*&
_output_shapes
:p*
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_1/MaxPool�
+sequential_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_1/conv2d_2/Conv2D/ReadVariableOp�
sequential_1/conv2d_2/Conv2DConv2D-sequential_1/max_pooling2d_1/MaxPool:output:03sequential_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:m *
paddingVALID*
strides
2
sequential_1/conv2d_2/Conv2D�
,sequential_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_2/BiasAdd/ReadVariableOp�
sequential_1/conv2d_2/BiasAddBiasAdd%sequential_1/conv2d_2/Conv2D:output:04sequential_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:m 2
sequential_1/conv2d_2/BiasAdd�
sequential_1/conv2d_2/ReluRelu&sequential_1/conv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:m 2
sequential_1/conv2d_2/Relu�
$sequential_1/max_pooling2d_2/MaxPoolMaxPool(sequential_1/conv2d_2/Relu:activations:0*&
_output_shapes
:
6 *
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_2/MaxPool�
+sequential_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02-
+sequential_1/conv2d_3/Conv2D/ReadVariableOp�
sequential_1/conv2d_3/Conv2DConv2D-sequential_1/max_pooling2d_2/MaxPool:output:03sequential_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 *
paddingVALID*
strides
2
sequential_1/conv2d_3/Conv2D�
,sequential_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_3/BiasAdd/ReadVariableOp�
sequential_1/conv2d_3/BiasAddBiasAdd%sequential_1/conv2d_3/Conv2D:output:04sequential_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 2
sequential_1/conv2d_3/BiasAdd�
sequential_1/conv2d_3/ReluRelu&sequential_1/conv2d_3/BiasAdd:output:0*
T0*&
_output_shapes
:	3 2
sequential_1/conv2d_3/Relu�
$sequential_1/max_pooling2d_3/MaxPoolMaxPool(sequential_1/conv2d_3/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_3/MaxPool�
+sequential_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02-
+sequential_1/conv2d_4/Conv2D/ReadVariableOp�
sequential_1/conv2d_4/Conv2DConv2D-sequential_1/max_pooling2d_3/MaxPool:output:03sequential_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2
sequential_1/conv2d_4/Conv2D�
,sequential_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_4/BiasAdd/ReadVariableOp�
sequential_1/conv2d_4/BiasAddBiasAdd%sequential_1/conv2d_4/Conv2D:output:04sequential_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2
sequential_1/conv2d_4/BiasAdd�
sequential_1/conv2d_4/ReluRelu&sequential_1/conv2d_4/BiasAdd:output:0*
T0*&
_output_shapes
: 2
sequential_1/conv2d_4/Relu�
$sequential_1/max_pooling2d_4/MaxPoolMaxPool(sequential_1/conv2d_4/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_4/MaxPool�
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
sequential_1/flatten_1/Const�
sequential_1/flatten_1/ReshapeReshape-sequential_1/max_pooling2d_4/MaxPool:output:0%sequential_1/flatten_1/Const:output:0*
T0*
_output_shapes
:	�2 
sequential_1/flatten_1/Reshape�
sequential_1/dropout_1/IdentityIdentity'sequential_1/flatten_1/Reshape:output:0*
T0*
_output_shapes
:	�2!
sequential_1/dropout_1/Identity�
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp�
sequential_1/dense_1/MatMulMatMul(sequential_1/dropout_1/Identity:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
sequential_1/dense_1/MatMul�
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp�
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
sequential_1/dense_1/BiasAdd�
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	�2
sequential_1/dense_1/Relu�
sequential_1/dropout_2/IdentityIdentity'sequential_1/dense_1/Relu:activations:0*
T0*
_output_shapes
:	�2!
sequential_1/dropout_2/Identity�
6sequential_1/classification_head/MatMul/ReadVariableOpReadVariableOp?sequential_1_classification_head_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype028
6sequential_1/classification_head/MatMul/ReadVariableOp�
'sequential_1/classification_head/MatMulMatMul(sequential_1/dropout_2/Identity:output:0>sequential_1/classification_head/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2)
'sequential_1/classification_head/MatMul�
7sequential_1/classification_head/BiasAdd/ReadVariableOpReadVariableOp@sequential_1_classification_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype029
7sequential_1/classification_head/BiasAdd/ReadVariableOp�
(sequential_1/classification_head/BiasAddBiasAdd1sequential_1/classification_head/MatMul:product:0?sequential_1/classification_head/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2*
(sequential_1/classification_head/BiasAdd�
(sequential_1/classification_head/SoftmaxSoftmax1sequential_1/classification_head/BiasAdd:output:0*
T0*
_output_shapes

:2*
(sequential_1/classification_head/Softmax�
IdentityIdentity2sequential_1/classification_head/Softmax:softmax:0@^audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall8^sequential_1/classification_head/BiasAdd/ReadVariableOp7^sequential_1/classification_head/MatMul/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_1/conv2d_2/BiasAdd/ReadVariableOp,^sequential_1/conv2d_2/Conv2D/ReadVariableOp-^sequential_1/conv2d_3/BiasAdd/ReadVariableOp,^sequential_1/conv2d_3/Conv2D/ReadVariableOp-^sequential_1/conv2d_4/BiasAdd/ReadVariableOp,^sequential_1/conv2d_4/Conv2D/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : : : : : 2�
?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall2r
7sequential_1/classification_head/BiasAdd/ReadVariableOp7sequential_1/classification_head/BiasAdd/ReadVariableOp2p
6sequential_1/classification_head/MatMul/ReadVariableOp6sequential_1/classification_head/MatMul/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_2/BiasAdd/ReadVariableOp,sequential_1/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_2/Conv2D/ReadVariableOp+sequential_1/conv2d_2/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_3/BiasAdd/ReadVariableOp,sequential_1/conv2d_3/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_3/Conv2D/ReadVariableOp+sequential_1/conv2d_3/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_4/BiasAdd/ReadVariableOp,sequential_1/conv2d_4/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_4/Conv2D/ReadVariableOp+sequential_1/conv2d_4/Conv2D/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
,__inference_sequential_5_layer_call_fn_30345

inputs
unknown
	unknown_0:	�
	unknown_1
	unknown_2#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: #
	unknown_9:  

unknown_10: 

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_298832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
K
/__inference_max_pooling2d_4_layer_call_fn_29302

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_292962
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
+__inference_Assert_AssertGuard_true_197_186%
!assert_assertguard_identity_equal
"
assert_assertguard_placeholder!
assert_assertguard_identity_1
P
Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert/AssertGuard/NoOp�
Assert/AssertGuard/IdentityIdentity!assert_assertguard_identity_equal^Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity�
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :: 

_output_shapes
: 
�
�
R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_424

inputs
	equal_1_x
unknown
	unknown_0
	unknown_1
identity��Assert/AssertGuard�Assert_1/Assert�StatefulPartitionedCall�StatefulPartitionedCall_1N
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
Equal�
Assert/AssertGuardIf	Equal:z:0	Equal:z:0inputs*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *>
else_branch/R-
+__inference_Assert_AssertGuard_false_415_92*
output_shapes
: *=
then_branch.R,
*__inference_Assert_AssertGuard_true_414_792
Assert/AssertGuard�
Assert/AssertGuard/IdentityIdentityAssert/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/IdentityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
Equal_1Equal	equal_1_xstrided_slice:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_1H
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1�
Assert_1/AssertAssertEqual_1:z:0Shape_1:output:0^Assert/AssertGuard*

T
2*
_output_shapes
 2
Assert_1/Assert�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *0
f+R)
'__inference_tf_webaudio_spectrogram_3162
StatefulPartitionedCall�
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0^Assert_1/Assert*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_z_normalize_spectrogram_672
StatefulPartitionedCall_1k
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ExpandDims/dim�

ExpandDims
ExpandDims"StatefulPartitionedCall_1:output:0ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+���������������������������2

ExpandDims�
IdentityIdentityExpandDims:output:0^Assert/AssertGuard^Assert_1/Assert^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: :: : 2(
Assert/AssertGuardAssert/AssertGuard2"
Assert_1/AssertAssert_1/Assert22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_29338

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:m *
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:m 2	
BiasAddW
ReluReluBiasAdd:output:0*
T0*&
_output_shapes
:m 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*&
_output_shapes
:m 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:p: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
:p
 
_user_specified_nameinputs
�

�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_31180

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 *
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 2	
BiasAddW
ReluReluBiasAdd:output:0*
T0*&
_output_shapes
:	3 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*&
_output_shapes
:	3 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:
6 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
:
6 
 
_user_specified_nameinputs
�
�
-__inference_audio_preproc_layer_call_fn_30535

inputs
unknown
	unknown_0:	�
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_audio_preproc_layer_call_and_return_conditional_losses_291652
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
__inference_cond_true_217_208
cond_size_waveform_frame
cond_equal_size
cond_identity��cond/Assert/AssertGuardY
	cond/SizeSizecond_size_waveform_frame*
T0*
_output_shapes
: 2
	cond/Size�

cond/EqualEqualcond/Size:output:0cond_equal_size*
T0*
_output_shapes
: *
incompatible_shape_error( 2

cond/Equal�
cond/Assert/AssertGuardIfcond/Equal:z:0cond/Equal:z:0cond_size_waveform_frame*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *C
else_branch4R2
0__inference_cond_Assert_AssertGuard_false_225_73*
output_shapes
: *C
then_branch4R2
0__inference_cond_Assert_AssertGuard_true_224_1982
cond/Assert/AssertGuard�
 cond/Assert/AssertGuard/IdentityIdentity cond/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 2"
 cond/Assert/AssertGuard/IdentityZ

cond/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2

cond/Constz
cond/IdentityIdentitycond/Const:output:0^cond/Assert/AssertGuard*
T0*
_output_shapes
: 2
cond/Identity"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:'���������������������������: 22
cond/Assert/AssertGuardcond/Assert/AssertGuard:C ?
=
_output_shapes+
):'���������������������������:

_output_shapes
: 
�
�
H__inference_audio_preproc_layer_call_and_return_conditional_losses_30574

inputs#
audio_preprocessing_layer_30564.
audio_preprocessing_layer_30566:	�#
audio_preprocessing_layer_30568#
audio_preprocessing_layer_30570
identity��1audio_preprocessing_layer/StatefulPartitionedCall�
1audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallinputsaudio_preprocessing_layer_30564audio_preprocessing_layer_30566audio_preprocessing_layer_30568audio_preprocessing_layer_30570*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *1
f,R*
(__inference_restored_function_body_2021723
1audio_preprocessing_layer/StatefulPartitionedCall�
IdentityIdentity:audio_preprocessing_layer/StatefulPartitionedCall:output:02^audio_preprocessing_layer/StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : : : 2f
1audio_preprocessing_layer/StatefulPartitionedCall1audio_preprocessing_layer/StatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�Z
�	
G__inference_sequential_1_layer_call_and_return_conditional_losses_30876

inputsA
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:A
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource:  6
(conv2d_4_biasadd_readvariableop_resource: :
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�E
2classification_head_matmul_readvariableop_resource:	�A
3classification_head_biasadd_readvariableop_resource:
identity��*classification_head/BiasAdd/ReadVariableOp�)classification_head/MatMul/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�*
paddingVALID*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�2
conv2d_1/BiasAdds
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*'
_output_shapes
:*�2
conv2d_1/Relu�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*&
_output_shapes
:p*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:m *
paddingVALID*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:m 2
conv2d_2/BiasAddr
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:m 2
conv2d_2/Relu�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*&
_output_shapes
:
6 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 *
paddingVALID*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 2
conv2d_3/BiasAddr
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*&
_output_shapes
:	3 2
conv2d_3/Relu�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2
conv2d_4/BiasAddr
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*&
_output_shapes
: 2
conv2d_4/Relu�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_1/Const�
flatten_1/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten_1/Const:output:0*
T0*
_output_shapes
:	�2
flatten_1/Reshapew
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?2
dropout_1/dropout/Const�
dropout_1/dropout/MulMulflatten_1/Reshape:output:0 dropout_1/dropout/Const:output:0*
T0*
_output_shapes
:	�2
dropout_1/dropout/Mul�
dropout_1/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2
dropout_1/dropout/Shape�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform�
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �>2"
 dropout_1/dropout/GreaterEqual/y�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2 
dropout_1/dropout/GreaterEqual�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2
dropout_1/dropout/Cast�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*
_output_shapes
:	�2
dropout_1/dropout/Mul_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/BiasAddh
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*
_output_shapes
:	�2
dense_1/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/dropout/Const�
dropout_2/dropout/MulMuldense_1/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*
_output_shapes
:	�2
dropout_2/dropout/Mul�
dropout_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2
dropout_2/dropout/Shape�
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform�
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_2/dropout/GreaterEqual/y�
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2 
dropout_2/dropout/GreaterEqual�
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2
dropout_2/dropout/Cast�
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*
_output_shapes
:	�2
dropout_2/dropout/Mul_1�
)classification_head/MatMul/ReadVariableOpReadVariableOp2classification_head_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02+
)classification_head/MatMul/ReadVariableOp�
classification_head/MatMulMatMuldropout_2/dropout/Mul_1:z:01classification_head/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/MatMul�
*classification_head/BiasAdd/ReadVariableOpReadVariableOp3classification_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*classification_head/BiasAdd/ReadVariableOp�
classification_head/BiasAddBiasAdd$classification_head/MatMul:product:02classification_head/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/BiasAdd�
classification_head/SoftmaxSoftmax$classification_head/BiasAdd:output:0*
T0*
_output_shapes

:2
classification_head/Softmax�
IdentityIdentity%classification_head/Softmax:softmax:0+^classification_head/BiasAdd/ReadVariableOp*^classification_head/MatMul/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 2X
*classification_head/BiasAdd/ReadVariableOp*classification_head/BiasAdd/ReadVariableOp2V
)classification_head/MatMul/ReadVariableOp)classification_head/MatMul/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:+�
 
_user_specified_nameinputs
�
E
)__inference_dropout_1_layer_call_fn_31216

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_293942
PartitionedCalld
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�
�
,__inference_sequential_5_layer_call_fn_29918
audio_preproc_input
unknown
	unknown_0:	�
	unknown_1
	unknown_2#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: #
	unknown_9:  

unknown_10: 

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallaudio_preproc_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_298832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
)
_output_shapes
:�����������
-
_user_specified_nameaudio_preproc_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
__inference_cond_false_218_162
cond_shape_waveform_frame
cond_equal_size
cond_identity��cond/Assert/AssertGuarda

cond/ShapeShapecond_shape_waveform_frame*
T0*
_output_shapes
:2

cond/Shape�
cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
cond/strided_slice/stack�
cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
cond/strided_slice/stack_1�
cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
cond/strided_slice/stack_2�
cond/strided_sliceStridedSlicecond/Shape:output:0!cond/strided_slice/stack:output:0#cond/strided_slice/stack_1:output:0#cond/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
cond/strided_slice�

cond/EqualEqualcond/strided_slice:output:0cond_equal_size*
T0*
_output_shapes
: *
incompatible_shape_error( 2

cond/Equal�
cond/Assert/AssertGuardIfcond/Equal:z:0cond/Equal:z:0cond_shape_waveform_frame*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *D
else_branch5R3
1__inference_cond_Assert_AssertGuard_false_250_146*
output_shapes
: *C
then_branch4R2
0__inference_cond_Assert_AssertGuard_true_249_1102
cond/Assert/AssertGuard�
 cond/Assert/AssertGuard/IdentityIdentity cond/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 2"
 cond/Assert/AssertGuard/IdentityZ

cond/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2

cond/Const^
cond/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 2
cond/Const_1^
cond/Const_2Const*
_output_shapes
: *
dtype0*
value	B : 2
cond/Const_2|
cond/IdentityIdentitycond/Const_2:output:0^cond/Assert/AssertGuard*
T0*
_output_shapes
: 2
cond/Identity"'
cond_identitycond/Identity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:'���������������������������: 22
cond/Assert/AssertGuardcond/Assert/AssertGuard:C ?
=
_output_shapes+
):'���������������������������:

_output_shapes
: 
�
�
H__inference_audio_preproc_layer_call_and_return_conditional_losses_30561

inputs#
audio_preprocessing_layer_30551.
audio_preprocessing_layer_30553:	�#
audio_preprocessing_layer_30555#
audio_preprocessing_layer_30557
identity��1audio_preprocessing_layer/StatefulPartitionedCall�
1audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallinputsaudio_preprocessing_layer_30551audio_preprocessing_layer_30553audio_preprocessing_layer_30555audio_preprocessing_layer_30557*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *1
f,R*
(__inference_restored_function_body_2021723
1audio_preprocessing_layer/StatefulPartitionedCall�
IdentityIdentity:audio_preprocessing_layer/StatefulPartitionedCall:output:02^audio_preprocessing_layer/StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : : : 2f
1audio_preprocessing_layer/StatefulPartitionedCall1audio_preprocessing_layer/StatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_29495

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constk
dropout/MulMulinputsdropout/Const:output:0*
T0*
_output_shapes
:	�2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	�2
dropout/Mul_1]
IdentityIdentitydropout/Mul_1:z:0*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�

�
,__inference_sequential_1_layer_call_fn_30638

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_294382
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:+�
 
_user_specified_nameinputs
�
�
(__inference_conv2d_2_layer_call_fn_31149

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:m *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_293382
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*&
_output_shapes
:m 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:p: : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
&
_output_shapes
:p
 
_user_specified_nameinputs
�Z
�	
G__inference_sequential_1_layer_call_and_return_conditional_losses_30998
conv2d_1_inputA
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:A
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource:  6
(conv2d_4_biasadd_readvariableop_resource: :
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�E
2classification_head_matmul_readvariableop_resource:	�A
3classification_head_biasadd_readvariableop_resource:
identity��*classification_head/BiasAdd/ReadVariableOp�)classification_head/MatMul/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dconv2d_1_input&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�*
paddingVALID*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�2
conv2d_1/BiasAdds
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*'
_output_shapes
:*�2
conv2d_1/Relu�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*&
_output_shapes
:p*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:m *
paddingVALID*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:m 2
conv2d_2/BiasAddr
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:m 2
conv2d_2/Relu�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*&
_output_shapes
:
6 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 *
paddingVALID*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 2
conv2d_3/BiasAddr
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*&
_output_shapes
:	3 2
conv2d_3/Relu�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2
conv2d_4/BiasAddr
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*&
_output_shapes
: 2
conv2d_4/Relu�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_1/Const�
flatten_1/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten_1/Const:output:0*
T0*
_output_shapes
:	�2
flatten_1/Reshapew
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?2
dropout_1/dropout/Const�
dropout_1/dropout/MulMulflatten_1/Reshape:output:0 dropout_1/dropout/Const:output:0*
T0*
_output_shapes
:	�2
dropout_1/dropout/Mul�
dropout_1/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2
dropout_1/dropout/Shape�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform�
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �>2"
 dropout_1/dropout/GreaterEqual/y�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2 
dropout_1/dropout/GreaterEqual�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2
dropout_1/dropout/Cast�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*
_output_shapes
:	�2
dropout_1/dropout/Mul_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/BiasAddh
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*
_output_shapes
:	�2
dense_1/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/dropout/Const�
dropout_2/dropout/MulMuldense_1/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*
_output_shapes
:	�2
dropout_2/dropout/Mul�
dropout_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2
dropout_2/dropout/Shape�
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform�
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_2/dropout/GreaterEqual/y�
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2 
dropout_2/dropout/GreaterEqual�
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2
dropout_2/dropout/Cast�
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*
_output_shapes
:	�2
dropout_2/dropout/Mul_1�
)classification_head/MatMul/ReadVariableOpReadVariableOp2classification_head_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02+
)classification_head/MatMul/ReadVariableOp�
classification_head/MatMulMatMuldropout_2/dropout/Mul_1:z:01classification_head/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/MatMul�
*classification_head/BiasAdd/ReadVariableOpReadVariableOp3classification_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*classification_head/BiasAdd/ReadVariableOp�
classification_head/BiasAddBiasAdd$classification_head/MatMul:product:02classification_head/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/BiasAdd�
classification_head/SoftmaxSoftmax$classification_head/BiasAdd:output:0*
T0*
_output_shapes

:2
classification_head/Softmax�
IdentityIdentity%classification_head/Softmax:softmax:0+^classification_head/BiasAdd/ReadVariableOp*^classification_head/MatMul/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 2X
*classification_head/BiasAdd/ReadVariableOp*classification_head/BiasAdd/ReadVariableOp2V
)classification_head/MatMul/ReadVariableOp)classification_head/MatMul/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
'
_output_shapes
:+�
(
_user_specified_nameconv2d_1_input
�
E
)__inference_flatten_1_layer_call_fn_31205

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_293872
PartitionedCalld
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: :N J
&
_output_shapes
: 
 
_user_specified_nameinputs
�
�
7__inference_audio_preprocessing_layer_layer_call_fn_496

inputs
unknown
	unknown_0:	�
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_4242
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: :: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_29387

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
Const_
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes
:	�2	
Reshape\
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: :N J
&
_output_shapes
: 
 
_user_specified_nameinputs
�
�
*__inference_Assert_AssertGuard_true_298_41,
(assert_assertguard_identity_greaterequal
"
assert_assertguard_placeholder!
assert_assertguard_identity_1
P
Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert/AssertGuard/NoOp�
Assert/AssertGuard/IdentityIdentity(assert_assertguard_identity_greaterequal^Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity�
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+: :'���������������������������: 

_output_shapes
: :C?
=
_output_shapes+
):'���������������������������
�
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_29528

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?2
dropout/Constk
dropout/MulMulinputsdropout/Const:output:0*
T0*
_output_shapes
:	�2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	�2
dropout/Mul_1]
IdentityIdentitydropout/Mul_1:z:0*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�p
�
!__inference__traced_restore_31497
file_prefix>
+assignvariableop_classification_head_kernel:	�9
+assignvariableop_1_classification_head_bias:B
3assignvariableop_2_audio_preprocessing_layer_window:	�<
"assignvariableop_3_conv2d_1_kernel:.
 assignvariableop_4_conv2d_1_bias:<
"assignvariableop_5_conv2d_2_kernel: .
 assignvariableop_6_conv2d_2_bias: <
"assignvariableop_7_conv2d_3_kernel:  .
 assignvariableop_8_conv2d_3_bias: <
"assignvariableop_9_conv2d_4_kernel:  /
!assignvariableop_10_conv2d_4_bias: 6
"assignvariableop_11_dense_1_kernel:
��/
 assignvariableop_12_dense_1_bias:	�'
assignvariableop_13_adam_iter:	 )
assignvariableop_14_adam_beta_1: )
assignvariableop_15_adam_beta_2: (
assignvariableop_16_adam_decay: 0
&assignvariableop_17_adam_learning_rate: #
assignvariableop_18_total: #
assignvariableop_19_count: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: H
5assignvariableop_22_adam_classification_head_kernel_m:	�A
3assignvariableop_23_adam_classification_head_bias_m:H
5assignvariableop_24_adam_classification_head_kernel_v:	�A
3assignvariableop_25_adam_classification_head_bias_v:
identity_27��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/0/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/0/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp+assignvariableop_classification_head_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp+assignvariableop_1_classification_head_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp3assignvariableop_2_audio_preprocessing_layer_windowIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv2d_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv2d_2_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_3_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp assignvariableop_8_conv2d_3_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv2d_4_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp!assignvariableop_10_conv2d_4_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_1_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_1_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_iterIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_decayIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp&assignvariableop_17_adam_learning_rateIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp5assignvariableop_22_adam_classification_head_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp3assignvariableop_23_adam_classification_head_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp5assignvariableop_24_adam_classification_head_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp3assignvariableop_25_adam_classification_head_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_259
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_26�
Identity_27IdentityIdentity_26:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_27"#
identity_27Identity_27:output:0*I
_input_shapes8
6: : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
,__inference_Assert_AssertGuard_false_664_174#
assert_assertguard_assert_equal
$
 assert_assertguard_assert_inputs!
assert_assertguard_identity_1
��Assert/AssertGuard/Assert�
Assert/AssertGuard/AssertAssertassert_assertguard_assert_equal assert_assertguard_assert_inputs*

T
2*
_output_shapes
 2
Assert/AssertGuard/Assert�
Assert/AssertGuard/IdentityIdentityassert_assertguard_assert_equal^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity�
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
: :�����������26
Assert/AssertGuard/AssertAssert/AssertGuard/Assert: 

_output_shapes
: :/+
)
_output_shapes
:�����������
�
�
,__inference_sequential_5_layer_call_fn_30382

inputs
unknown
	unknown_0:	�
	unknown_1
	unknown_2#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: #
	unknown_9:  

unknown_10: 

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_301212
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�Z
�	
G__inference_sequential_1_layer_call_and_return_conditional_losses_30017

inputsA
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:A
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource:  6
(conv2d_4_biasadd_readvariableop_resource: :
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�E
2classification_head_matmul_readvariableop_resource:	�A
3classification_head_biasadd_readvariableop_resource:
identity��*classification_head/BiasAdd/ReadVariableOp�)classification_head/MatMul/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�*
paddingVALID*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�2
conv2d_1/BiasAdds
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*'
_output_shapes
:*�2
conv2d_1/Relu�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*&
_output_shapes
:p*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:m *
paddingVALID*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:m 2
conv2d_2/BiasAddr
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:m 2
conv2d_2/Relu�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*&
_output_shapes
:
6 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 *
paddingVALID*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 2
conv2d_3/BiasAddr
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*&
_output_shapes
:	3 2
conv2d_3/Relu�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2
conv2d_4/BiasAddr
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*&
_output_shapes
: 2
conv2d_4/Relu�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_1/Const�
flatten_1/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten_1/Const:output:0*
T0*
_output_shapes
:	�2
flatten_1/Reshapew
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?2
dropout_1/dropout/Const�
dropout_1/dropout/MulMulflatten_1/Reshape:output:0 dropout_1/dropout/Const:output:0*
T0*
_output_shapes
:	�2
dropout_1/dropout/Mul�
dropout_1/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2
dropout_1/dropout/Shape�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform�
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �>2"
 dropout_1/dropout/GreaterEqual/y�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2 
dropout_1/dropout/GreaterEqual�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2
dropout_1/dropout/Cast�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*
_output_shapes
:	�2
dropout_1/dropout/Mul_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/BiasAddh
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*
_output_shapes
:	�2
dense_1/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/dropout/Const�
dropout_2/dropout/MulMuldense_1/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*
_output_shapes
:	�2
dropout_2/dropout/Mul�
dropout_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2
dropout_2/dropout/Shape�
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform�
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_2/dropout/GreaterEqual/y�
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2 
dropout_2/dropout/GreaterEqual�
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2
dropout_2/dropout/Cast�
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*
_output_shapes
:	�2
dropout_2/dropout/Mul_1�
)classification_head/MatMul/ReadVariableOpReadVariableOp2classification_head_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02+
)classification_head/MatMul/ReadVariableOp�
classification_head/MatMulMatMuldropout_2/dropout/Mul_1:z:01classification_head/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/MatMul�
*classification_head/BiasAdd/ReadVariableOpReadVariableOp3classification_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*classification_head/BiasAdd/ReadVariableOp�
classification_head/BiasAddBiasAdd$classification_head/MatMul:product:02classification_head/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/BiasAdd�
classification_head/SoftmaxSoftmax$classification_head/BiasAdd:output:0*
T0*
_output_shapes

:2
classification_head/Softmax�
IdentityIdentity%classification_head/Softmax:softmax:0+^classification_head/BiasAdd/ReadVariableOp*^classification_head/MatMul/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 2X
*classification_head/BiasAdd/ReadVariableOp*classification_head/BiasAdd/ReadVariableOp2V
)classification_head/MatMul/ReadVariableOp)classification_head/MatMul/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�
�
(__inference_conv2d_4_layer_call_fn_31189

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_293742
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*&
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
&
_output_shapes
: 
 
_user_specified_nameinputs
�
�
H__inference_audio_preproc_layer_call_and_return_conditional_losses_29254#
audio_preprocessing_layer_input#
audio_preprocessing_layer_29244.
audio_preprocessing_layer_29246:	�#
audio_preprocessing_layer_29248#
audio_preprocessing_layer_29250
identity��1audio_preprocessing_layer/StatefulPartitionedCall�
1audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallaudio_preprocessing_layer_inputaudio_preprocessing_layer_29244audio_preprocessing_layer_29246audio_preprocessing_layer_29248audio_preprocessing_layer_29250*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *1
f,R*
(__inference_restored_function_body_2021723
1audio_preprocessing_layer/StatefulPartitionedCall�
IdentityIdentity:audio_preprocessing_layer/StatefulPartitionedCall:output:02^audio_preprocessing_layer/StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : : : 2f
1audio_preprocessing_layer/StatefulPartitionedCall1audio_preprocessing_layer/StatefulPartitionedCall:j f
)
_output_shapes
:�����������
9
_user_specified_name!audio_preprocessing_layer_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_audio_preproc_layer_call_and_return_conditional_losses_29241#
audio_preprocessing_layer_input#
audio_preprocessing_layer_29231.
audio_preprocessing_layer_29233:	�#
audio_preprocessing_layer_29235#
audio_preprocessing_layer_29237
identity��1audio_preprocessing_layer/StatefulPartitionedCall�
1audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallaudio_preprocessing_layer_inputaudio_preprocessing_layer_29231audio_preprocessing_layer_29233audio_preprocessing_layer_29235audio_preprocessing_layer_29237*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *1
f,R*
(__inference_restored_function_body_2021723
1audio_preprocessing_layer/StatefulPartitionedCall�
IdentityIdentity:audio_preprocessing_layer/StatefulPartitionedCall:output:02^audio_preprocessing_layer/StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : : : 2f
1audio_preprocessing_layer/StatefulPartitionedCall1audio_preprocessing_layer/StatefulPartitionedCall:j f
)
_output_shapes
:�����������
9
_user_specified_name!audio_preprocessing_layer_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_29394

inputs

identity_1R
IdentityIdentityinputs*
T0*
_output_shapes
:	�2

Identitya

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
:	�2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�
�
,__inference_sequential_5_layer_call_fn_30193
audio_preproc_input
unknown
	unknown_0:	�
	unknown_1
	unknown_2#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: #
	unknown_9:  

unknown_10: 

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallaudio_preproc_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_301212
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
)
_output_shapes
:�����������
-
_user_specified_nameaudio_preproc_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
!__inference_signature_wrapper_391#
audio_preprocessing_layer_input
unknown
	unknown_0:	�
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallaudio_preprocessing_layer_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__wrapped_model_3822
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: :: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
)
_output_shapes
:�����������
9
_user_specified_name!audio_preprocessing_layer_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_31160

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:m *
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:m 2	
BiasAddW
ReluReluBiasAdd:output:0*
T0*&
_output_shapes
:m 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*&
_output_shapes
:m 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:p: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
:p
 
_user_specified_nameinputs
�
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_31226

inputs

identity_1R
IdentityIdentityinputs*
T0*
_output_shapes
:	�2

Identitya

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
:	�2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�{
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_30522

inputs1
-audio_preproc_audio_preprocessing_layer_30448<
-audio_preproc_audio_preprocessing_layer_30450:	�1
-audio_preproc_audio_preprocessing_layer_304521
-audio_preproc_audio_preprocessing_layer_30454N
4sequential_1_conv2d_1_conv2d_readvariableop_resource:C
5sequential_1_conv2d_1_biasadd_readvariableop_resource:N
4sequential_1_conv2d_2_conv2d_readvariableop_resource: C
5sequential_1_conv2d_2_biasadd_readvariableop_resource: N
4sequential_1_conv2d_3_conv2d_readvariableop_resource:  C
5sequential_1_conv2d_3_biasadd_readvariableop_resource: N
4sequential_1_conv2d_4_conv2d_readvariableop_resource:  C
5sequential_1_conv2d_4_biasadd_readvariableop_resource: G
3sequential_1_dense_1_matmul_readvariableop_resource:
��C
4sequential_1_dense_1_biasadd_readvariableop_resource:	�R
?sequential_1_classification_head_matmul_readvariableop_resource:	�N
@sequential_1_classification_head_biasadd_readvariableop_resource:
identity��?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall�7sequential_1/classification_head/BiasAdd/ReadVariableOp�6sequential_1/classification_head/MatMul/ReadVariableOp�,sequential_1/conv2d_1/BiasAdd/ReadVariableOp�+sequential_1/conv2d_1/Conv2D/ReadVariableOp�,sequential_1/conv2d_2/BiasAdd/ReadVariableOp�+sequential_1/conv2d_2/Conv2D/ReadVariableOp�,sequential_1/conv2d_3/BiasAdd/ReadVariableOp�+sequential_1/conv2d_3/Conv2D/ReadVariableOp�,sequential_1/conv2d_4/BiasAdd/ReadVariableOp�+sequential_1/conv2d_4/Conv2D/ReadVariableOp�+sequential_1/dense_1/BiasAdd/ReadVariableOp�*sequential_1/dense_1/MatMul/ReadVariableOp�
?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallinputs-audio_preproc_audio_preprocessing_layer_30448-audio_preproc_audio_preprocessing_layer_30450-audio_preproc_audio_preprocessing_layer_30452-audio_preproc_audio_preprocessing_layer_30454*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:+�*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *1
f,R*
(__inference_restored_function_body_202172A
?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall�
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOp�
sequential_1/conv2d_1/Conv2DConv2DHaudio_preproc/audio_preprocessing_layer/StatefulPartitionedCall:output:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�*
paddingVALID*
strides
2
sequential_1/conv2d_1/Conv2D�
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp�
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�2
sequential_1/conv2d_1/BiasAdd�
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*'
_output_shapes
:*�2
sequential_1/conv2d_1/Relu�
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_1/Relu:activations:0*&
_output_shapes
:p*
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_1/MaxPool�
+sequential_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_1/conv2d_2/Conv2D/ReadVariableOp�
sequential_1/conv2d_2/Conv2DConv2D-sequential_1/max_pooling2d_1/MaxPool:output:03sequential_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:m *
paddingVALID*
strides
2
sequential_1/conv2d_2/Conv2D�
,sequential_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_2/BiasAdd/ReadVariableOp�
sequential_1/conv2d_2/BiasAddBiasAdd%sequential_1/conv2d_2/Conv2D:output:04sequential_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:m 2
sequential_1/conv2d_2/BiasAdd�
sequential_1/conv2d_2/ReluRelu&sequential_1/conv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:m 2
sequential_1/conv2d_2/Relu�
$sequential_1/max_pooling2d_2/MaxPoolMaxPool(sequential_1/conv2d_2/Relu:activations:0*&
_output_shapes
:
6 *
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_2/MaxPool�
+sequential_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02-
+sequential_1/conv2d_3/Conv2D/ReadVariableOp�
sequential_1/conv2d_3/Conv2DConv2D-sequential_1/max_pooling2d_2/MaxPool:output:03sequential_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 *
paddingVALID*
strides
2
sequential_1/conv2d_3/Conv2D�
,sequential_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_3/BiasAdd/ReadVariableOp�
sequential_1/conv2d_3/BiasAddBiasAdd%sequential_1/conv2d_3/Conv2D:output:04sequential_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 2
sequential_1/conv2d_3/BiasAdd�
sequential_1/conv2d_3/ReluRelu&sequential_1/conv2d_3/BiasAdd:output:0*
T0*&
_output_shapes
:	3 2
sequential_1/conv2d_3/Relu�
$sequential_1/max_pooling2d_3/MaxPoolMaxPool(sequential_1/conv2d_3/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_3/MaxPool�
+sequential_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02-
+sequential_1/conv2d_4/Conv2D/ReadVariableOp�
sequential_1/conv2d_4/Conv2DConv2D-sequential_1/max_pooling2d_3/MaxPool:output:03sequential_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2
sequential_1/conv2d_4/Conv2D�
,sequential_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_4/BiasAdd/ReadVariableOp�
sequential_1/conv2d_4/BiasAddBiasAdd%sequential_1/conv2d_4/Conv2D:output:04sequential_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2
sequential_1/conv2d_4/BiasAdd�
sequential_1/conv2d_4/ReluRelu&sequential_1/conv2d_4/BiasAdd:output:0*
T0*&
_output_shapes
: 2
sequential_1/conv2d_4/Relu�
$sequential_1/max_pooling2d_4/MaxPoolMaxPool(sequential_1/conv2d_4/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_4/MaxPool�
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
sequential_1/flatten_1/Const�
sequential_1/flatten_1/ReshapeReshape-sequential_1/max_pooling2d_4/MaxPool:output:0%sequential_1/flatten_1/Const:output:0*
T0*
_output_shapes
:	�2 
sequential_1/flatten_1/Reshape�
$sequential_1/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?2&
$sequential_1/dropout_1/dropout/Const�
"sequential_1/dropout_1/dropout/MulMul'sequential_1/flatten_1/Reshape:output:0-sequential_1/dropout_1/dropout/Const:output:0*
T0*
_output_shapes
:	�2$
"sequential_1/dropout_1/dropout/Mul�
$sequential_1/dropout_1/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2&
$sequential_1/dropout_1/dropout/Shape�
;sequential_1/dropout_1/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_1/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype02=
;sequential_1/dropout_1/dropout/random_uniform/RandomUniform�
-sequential_1/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �>2/
-sequential_1/dropout_1/dropout/GreaterEqual/y�
+sequential_1/dropout_1/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_1/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_1/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2-
+sequential_1/dropout_1/dropout/GreaterEqual�
#sequential_1/dropout_1/dropout/CastCast/sequential_1/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2%
#sequential_1/dropout_1/dropout/Cast�
$sequential_1/dropout_1/dropout/Mul_1Mul&sequential_1/dropout_1/dropout/Mul:z:0'sequential_1/dropout_1/dropout/Cast:y:0*
T0*
_output_shapes
:	�2&
$sequential_1/dropout_1/dropout/Mul_1�
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp�
sequential_1/dense_1/MatMulMatMul(sequential_1/dropout_1/dropout/Mul_1:z:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
sequential_1/dense_1/MatMul�
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp�
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
sequential_1/dense_1/BiasAdd�
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	�2
sequential_1/dense_1/Relu�
$sequential_1/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2&
$sequential_1/dropout_2/dropout/Const�
"sequential_1/dropout_2/dropout/MulMul'sequential_1/dense_1/Relu:activations:0-sequential_1/dropout_2/dropout/Const:output:0*
T0*
_output_shapes
:	�2$
"sequential_1/dropout_2/dropout/Mul�
$sequential_1/dropout_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2&
$sequential_1/dropout_2/dropout/Shape�
;sequential_1/dropout_2/dropout/random_uniform/RandomUniformRandomUniform-sequential_1/dropout_2/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype02=
;sequential_1/dropout_2/dropout/random_uniform/RandomUniform�
-sequential_1/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_1/dropout_2/dropout/GreaterEqual/y�
+sequential_1/dropout_2/dropout/GreaterEqualGreaterEqualDsequential_1/dropout_2/dropout/random_uniform/RandomUniform:output:06sequential_1/dropout_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2-
+sequential_1/dropout_2/dropout/GreaterEqual�
#sequential_1/dropout_2/dropout/CastCast/sequential_1/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2%
#sequential_1/dropout_2/dropout/Cast�
$sequential_1/dropout_2/dropout/Mul_1Mul&sequential_1/dropout_2/dropout/Mul:z:0'sequential_1/dropout_2/dropout/Cast:y:0*
T0*
_output_shapes
:	�2&
$sequential_1/dropout_2/dropout/Mul_1�
6sequential_1/classification_head/MatMul/ReadVariableOpReadVariableOp?sequential_1_classification_head_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype028
6sequential_1/classification_head/MatMul/ReadVariableOp�
'sequential_1/classification_head/MatMulMatMul(sequential_1/dropout_2/dropout/Mul_1:z:0>sequential_1/classification_head/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2)
'sequential_1/classification_head/MatMul�
7sequential_1/classification_head/BiasAdd/ReadVariableOpReadVariableOp@sequential_1_classification_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype029
7sequential_1/classification_head/BiasAdd/ReadVariableOp�
(sequential_1/classification_head/BiasAddBiasAdd1sequential_1/classification_head/MatMul:product:0?sequential_1/classification_head/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2*
(sequential_1/classification_head/BiasAdd�
(sequential_1/classification_head/SoftmaxSoftmax1sequential_1/classification_head/BiasAdd:output:0*
T0*
_output_shapes

:2*
(sequential_1/classification_head/Softmax�
IdentityIdentity2sequential_1/classification_head/Softmax:softmax:0@^audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall8^sequential_1/classification_head/BiasAdd/ReadVariableOp7^sequential_1/classification_head/MatMul/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_1/conv2d_2/BiasAdd/ReadVariableOp,^sequential_1/conv2d_2/Conv2D/ReadVariableOp-^sequential_1/conv2d_3/BiasAdd/ReadVariableOp,^sequential_1/conv2d_3/Conv2D/ReadVariableOp-^sequential_1/conv2d_4/BiasAdd/ReadVariableOp,^sequential_1/conv2d_4/Conv2D/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : : : : : 2�
?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall2r
7sequential_1/classification_head/BiasAdd/ReadVariableOp7sequential_1/classification_head/BiasAdd/ReadVariableOp2p
6sequential_1/classification_head/MatMul/ReadVariableOp6sequential_1/classification_head/MatMul/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_2/BiasAdd/ReadVariableOp,sequential_1/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_2/Conv2D/ReadVariableOp+sequential_1/conv2d_2/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_3/BiasAdd/ReadVariableOp,sequential_1/conv2d_3/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_3/Conv2D/ReadVariableOp+sequential_1/conv2d_3/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_4/BiasAdd/ReadVariableOp,sequential_1/conv2d_4/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_4/Conv2D/ReadVariableOp+sequential_1/conv2d_4/Conv2D/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
y
*__inference_tf_webaudio_power_spectrum_233
waveform_frame

window
identity��Assert/AssertGuard�condn
Rank/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:�*
dtype02
Rank/ReadVariableOpN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
Equalr
Assert/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:�*
dtype02
Assert/ReadVariableOp�
Assert/AssertGuardIf	Equal:z:0	Equal:z:0window*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*>
else_branch/R-
+__inference_Assert_AssertGuard_false_198_18*
output_shapes
: *>
then_branch/R-
+__inference_Assert_AssertGuard_true_197_1862
Assert/AssertGuard�
Assert/AssertGuard/IdentityIdentityAssert/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identityn
Size/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:�*
dtype02
Size/ReadVariableOpO
SizeConst*
_output_shapes
: *
dtype0*
value
B :�2
SizeR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1X
	Equal_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
	Equal_1/y�
Equal_1EqualRank_1:output:0Equal_1/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_1�
condIfEqual_1:z:0waveform_frameSize:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
__inference_cond_false_218_162*
output_shapes
: *0
then_branch!R
__inference_cond_true_217_2082
condZ
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes
: 2
cond/Identityl
mul/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:�*
dtype02
mul/ReadVariableOp}
mulMulwaveform_framemul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������2
mull
CastCastmul:z:0*

DstT0*

SrcT0*5
_output_shapes#
!:�������������������2
CastR
FFTFFTCast:y:0*5
_output_shapes#
!:�������������������2
FFT]
Abs
ComplexAbsFFT:output:0*5
_output_shapes#
!:�������������������2
AbsZ
LogLogAbs:y:0*
T0*5
_output_shapes#
!:�������������������2
Log�
IdentityIdentityLog:y:0^Assert/AssertGuard^cond*
T0*5
_output_shapes#
!:�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:'���������������������������:2(
Assert/AssertGuardAssert/AssertGuard2
condcond:m i
=
_output_shapes+
):'���������������������������
(
_user_specified_namewaveform_frame:&"
 
_user_specified_namewindow
�
�
+__inference_Assert_AssertGuard_false_415_92#
assert_assertguard_assert_equal
$
 assert_assertguard_assert_inputs!
assert_assertguard_identity_1
��Assert/AssertGuard/Assert�
Assert/AssertGuard/AssertAssertassert_assertguard_assert_equal assert_assertguard_assert_inputs*

T
2*
_output_shapes
 2
Assert/AssertGuard/Assert�
Assert/AssertGuard/IdentityIdentityassert_assertguard_assert_equal^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity�
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
: :�����������26
Assert/AssertGuard/AssertAssert/AssertGuard/Assert: 

_output_shapes
: :/+
)
_output_shapes
:�����������
�
�
__inference__wrapped_model_382#
audio_preprocessing_layer_input/
+audio_preproc_audio_preprocessing_layer_355:
+audio_preproc_audio_preprocessing_layer_357:	�/
+audio_preproc_audio_preprocessing_layer_359/
+audio_preproc_audio_preprocessing_layer_361
identity��?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall�
?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallaudio_preprocessing_layer_input+audio_preproc_audio_preprocessing_layer_355+audio_preproc_audio_preprocessing_layer_357+audio_preproc_audio_preprocessing_layer_359+audio_preproc_audio_preprocessing_layer_361*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *
fR
__inference_call_3642A
?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall�
IdentityIdentityHaudio_preproc/audio_preprocessing_layer/StatefulPartitionedCall:output:0@^audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: :: : 2�
?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall:j f
)
_output_shapes
:�����������
9
_user_specified_name!audio_preprocessing_layer_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_31238

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?2
dropout/Constk
dropout/MulMulinputsdropout/Const:output:0*
T0*
_output_shapes
:	�2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	�2
dropout/Mul_1]
IdentityIdentitydropout/Mul_1:z:0*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�

�
,__inference_sequential_1_layer_call_fn_30609
conv2d_1_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_294382
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:+�
(
_user_specified_nameconv2d_1_input
�G
�	
G__inference_sequential_1_layer_call_and_return_conditional_losses_30808

inputsA
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:A
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource:  6
(conv2d_4_biasadd_readvariableop_resource: :
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�E
2classification_head_matmul_readvariableop_resource:	�A
3classification_head_biasadd_readvariableop_resource:
identity��*classification_head/BiasAdd/ReadVariableOp�)classification_head/MatMul/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�*
paddingVALID*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�2
conv2d_1/BiasAdds
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*'
_output_shapes
:*�2
conv2d_1/Relu�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*&
_output_shapes
:p*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:m *
paddingVALID*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:m 2
conv2d_2/BiasAddr
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:m 2
conv2d_2/Relu�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*&
_output_shapes
:
6 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 *
paddingVALID*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 2
conv2d_3/BiasAddr
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*&
_output_shapes
:	3 2
conv2d_3/Relu�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2
conv2d_4/BiasAddr
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*&
_output_shapes
: 2
conv2d_4/Relu�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_1/Const�
flatten_1/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten_1/Const:output:0*
T0*
_output_shapes
:	�2
flatten_1/Reshapez
dropout_1/IdentityIdentityflatten_1/Reshape:output:0*
T0*
_output_shapes
:	�2
dropout_1/Identity�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout_1/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/BiasAddh
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*
_output_shapes
:	�2
dense_1/Reluz
dropout_2/IdentityIdentitydense_1/Relu:activations:0*
T0*
_output_shapes
:	�2
dropout_2/Identity�
)classification_head/MatMul/ReadVariableOpReadVariableOp2classification_head_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02+
)classification_head/MatMul/ReadVariableOp�
classification_head/MatMulMatMuldropout_2/Identity:output:01classification_head/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/MatMul�
*classification_head/BiasAdd/ReadVariableOpReadVariableOp3classification_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*classification_head/BiasAdd/ReadVariableOp�
classification_head/BiasAddBiasAdd$classification_head/MatMul:product:02classification_head/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/BiasAdd�
classification_head/SoftmaxSoftmax$classification_head/BiasAdd:output:0*
T0*
_output_shapes

:2
classification_head/Softmax�
IdentityIdentity%classification_head/Softmax:softmax:0+^classification_head/BiasAdd/ReadVariableOp*^classification_head/MatMul/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 2X
*classification_head/BiasAdd/ReadVariableOp*classification_head/BiasAdd/ReadVariableOp2V
)classification_head/MatMul/ReadVariableOp)classification_head/MatMul/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:+�
 
_user_specified_nameinputs
�
_
&__inference_z_normalize_spectrogram_67
spectrogram
identity��Assert/AssertGuardN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
Rankb
GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B :2
GreaterEqual/yu
GreaterEqualGreaterEqualRank:output:0GreaterEqual/y:output:0*
T0*
_output_shapes
: 2
GreaterEqual�
Assert/AssertGuardIfGreaterEqual:z:0GreaterEqual:z:0spectrogram*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *>
else_branch/R-
+__inference_Assert_AssertGuard_false_299_47*
output_shapes
: *=
then_branch.R,
*__inference_Assert_AssertGuard_true_298_412
Assert/AssertGuard�
Assert/AssertGuard/IdentityIdentityAssert/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity�
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"��������2 
moments/mean/reduction_indices�
moments/meanMeanspectrogram'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(2
moments/mean�
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:���������2
moments/StopGradient�
moments/SquaredDifferenceSquaredDifferencespectrogrammoments/StopGradient:output:0*
T0*=
_output_shapes+
):'���������������������������2
moments/SquaredDifference�
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"��������2$
"moments/variance/reduction_indices�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(2
moments/varianceS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��82
Const}
subSubspectrogrammoments/mean:output:0*
T0*=
_output_shapes+
):'���������������������������2
sube
SqrtSqrtmoments/variance:output:0*
T0*+
_output_shapes
:���������2
Sqrtc
addAddV2Sqrt:y:0Const:output:0*
T0*+
_output_shapes
:���������2
addw
truedivRealDivsub:z:0add:z:0*
T0*=
_output_shapes+
):'���������������������������2	
truediv�
IdentityIdentitytruediv:z:0^Assert/AssertGuard*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������2(
Assert/AssertGuardAssert/AssertGuard:j f
=
_output_shapes+
):'���������������������������
%
_user_specified_namespectrogram
�
�
H__inference_audio_preproc_layer_call_and_return_conditional_losses_29204

inputs#
audio_preprocessing_layer_29194.
audio_preprocessing_layer_29196:	�#
audio_preprocessing_layer_29198#
audio_preprocessing_layer_29200
identity��1audio_preprocessing_layer/StatefulPartitionedCall�
1audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallinputsaudio_preprocessing_layer_29194audio_preprocessing_layer_29196audio_preprocessing_layer_29198audio_preprocessing_layer_29200*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *1
f,R*
(__inference_restored_function_body_2021723
1audio_preprocessing_layer/StatefulPartitionedCall�
IdentityIdentity:audio_preprocessing_layer/StatefulPartitionedCall:output:02^audio_preprocessing_layer/StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : : : 2f
1audio_preprocessing_layer/StatefulPartitionedCall1audio_preprocessing_layer/StatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
#__inference_signature_wrapper_30308
audio_preproc_input
unknown
	unknown_0:	�
	unknown_1
	unknown_2#
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: #
	unknown_7:  
	unknown_8: #
	unknown_9:  

unknown_10: 

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallaudio_preproc_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_291482
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
)
_output_shapes
:�����������
-
_user_specified_nameaudio_preproc_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_29356

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 *
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 2	
BiasAddW
ReluReluBiasAdd:output:0*
T0*&
_output_shapes
:	3 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*&
_output_shapes
:	3 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:
6 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
:
6 
 
_user_specified_nameinputs
�
�
*__inference_Assert_AssertGuard_false_65_24#
assert_assertguard_assert_equal
$
 assert_assertguard_assert_inputs!
assert_assertguard_identity_1
��Assert/AssertGuard/Assert�
Assert/AssertGuard/AssertAssertassert_assertguard_assert_equal assert_assertguard_assert_inputs*

T
2*
_output_shapes
 2
Assert/AssertGuard/Assert�
Assert/AssertGuard/IdentityIdentityassert_assertguard_assert_equal^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity�
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
: :�����������26
Assert/AssertGuard/AssertAssert/AssertGuard/Assert: 

_output_shapes
: :/+
)
_output_shapes
:�����������
�

�
,__inference_sequential_1_layer_call_fn_30754

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_300172
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:#�������������������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�:
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_29649

inputs(
conv2d_1_29611:
conv2d_1_29613:(
conv2d_2_29617: 
conv2d_2_29619: (
conv2d_3_29623:  
conv2d_3_29625: (
conv2d_4_29629:  
conv2d_4_29631: !
dense_1_29637:
��
dense_1_29639:	�,
classification_head_29643:	�'
classification_head_29645:
identity��+classification_head/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�!dropout_2/StatefulPartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_29611conv2d_1_29613*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:*�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_293202"
 conv2d_1/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:p* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_292602!
max_pooling2d_1/PartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_29617conv2d_2_29619*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:m *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_293382"
 conv2d_2/StatefulPartitionedCall�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:
6 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_292722!
max_pooling2d_2/PartitionedCall�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_29623conv2d_3_29625*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:	3 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_293562"
 conv2d_3/StatefulPartitionedCall�
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_292842!
max_pooling2d_3/PartitionedCall�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_29629conv2d_4_29631*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_293742"
 conv2d_4/StatefulPartitionedCall�
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_292962!
max_pooling2d_4/PartitionedCall�
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_293872
flatten_1/PartitionedCall�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_295282#
!dropout_1/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_29637dense_1_29639*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_294072!
dense_1/StatefulPartitionedCall�
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_294952#
!dropout_2/StatefulPartitionedCall�
+classification_head/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0classification_head_29643classification_head_29645*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_classification_head_layer_call_and_return_conditional_losses_294312-
+classification_head/StatefulPartitionedCall�
IdentityIdentity4classification_head/StatefulPartitionedCall:output:0,^classification_head/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 2Z
+classification_head/StatefulPartitionedCall+classification_head/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:O K
'
_output_shapes
:+�
 
_user_specified_nameinputs
�

�
,__inference_sequential_1_layer_call_fn_30725

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_298562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:#�������������������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�y
�
 __inference__wrapped_model_29148
audio_preproc_input>
:sequential_5_audio_preproc_audio_preprocessing_layer_29088I
:sequential_5_audio_preproc_audio_preprocessing_layer_29090:	�>
:sequential_5_audio_preproc_audio_preprocessing_layer_29092>
:sequential_5_audio_preproc_audio_preprocessing_layer_29094[
Asequential_5_sequential_1_conv2d_1_conv2d_readvariableop_resource:P
Bsequential_5_sequential_1_conv2d_1_biasadd_readvariableop_resource:[
Asequential_5_sequential_1_conv2d_2_conv2d_readvariableop_resource: P
Bsequential_5_sequential_1_conv2d_2_biasadd_readvariableop_resource: [
Asequential_5_sequential_1_conv2d_3_conv2d_readvariableop_resource:  P
Bsequential_5_sequential_1_conv2d_3_biasadd_readvariableop_resource: [
Asequential_5_sequential_1_conv2d_4_conv2d_readvariableop_resource:  P
Bsequential_5_sequential_1_conv2d_4_biasadd_readvariableop_resource: T
@sequential_5_sequential_1_dense_1_matmul_readvariableop_resource:
��P
Asequential_5_sequential_1_dense_1_biasadd_readvariableop_resource:	�_
Lsequential_5_sequential_1_classification_head_matmul_readvariableop_resource:	�[
Msequential_5_sequential_1_classification_head_biasadd_readvariableop_resource:
identity��Lsequential_5/audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall�Dsequential_5/sequential_1/classification_head/BiasAdd/ReadVariableOp�Csequential_5/sequential_1/classification_head/MatMul/ReadVariableOp�9sequential_5/sequential_1/conv2d_1/BiasAdd/ReadVariableOp�8sequential_5/sequential_1/conv2d_1/Conv2D/ReadVariableOp�9sequential_5/sequential_1/conv2d_2/BiasAdd/ReadVariableOp�8sequential_5/sequential_1/conv2d_2/Conv2D/ReadVariableOp�9sequential_5/sequential_1/conv2d_3/BiasAdd/ReadVariableOp�8sequential_5/sequential_1/conv2d_3/Conv2D/ReadVariableOp�9sequential_5/sequential_1/conv2d_4/BiasAdd/ReadVariableOp�8sequential_5/sequential_1/conv2d_4/Conv2D/ReadVariableOp�8sequential_5/sequential_1/dense_1/BiasAdd/ReadVariableOp�7sequential_5/sequential_1/dense_1/MatMul/ReadVariableOp�
Lsequential_5/audio_preproc/audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallaudio_preproc_input:sequential_5_audio_preproc_audio_preprocessing_layer_29088:sequential_5_audio_preproc_audio_preprocessing_layer_29090:sequential_5_audio_preproc_audio_preprocessing_layer_29092:sequential_5_audio_preproc_audio_preprocessing_layer_29094*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:+�*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *1
f,R*
(__inference_restored_function_body_202172N
Lsequential_5/audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall�
8sequential_5/sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOpAsequential_5_sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02:
8sequential_5/sequential_1/conv2d_1/Conv2D/ReadVariableOp�
)sequential_5/sequential_1/conv2d_1/Conv2DConv2DUsequential_5/audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall:output:0@sequential_5/sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�*
paddingVALID*
strides
2+
)sequential_5/sequential_1/conv2d_1/Conv2D�
9sequential_5/sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpBsequential_5_sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02;
9sequential_5/sequential_1/conv2d_1/BiasAdd/ReadVariableOp�
*sequential_5/sequential_1/conv2d_1/BiasAddBiasAdd2sequential_5/sequential_1/conv2d_1/Conv2D:output:0Asequential_5/sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�2,
*sequential_5/sequential_1/conv2d_1/BiasAdd�
'sequential_5/sequential_1/conv2d_1/ReluRelu3sequential_5/sequential_1/conv2d_1/BiasAdd:output:0*
T0*'
_output_shapes
:*�2)
'sequential_5/sequential_1/conv2d_1/Relu�
1sequential_5/sequential_1/max_pooling2d_1/MaxPoolMaxPool5sequential_5/sequential_1/conv2d_1/Relu:activations:0*&
_output_shapes
:p*
ksize
*
paddingVALID*
strides
23
1sequential_5/sequential_1/max_pooling2d_1/MaxPool�
8sequential_5/sequential_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOpAsequential_5_sequential_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02:
8sequential_5/sequential_1/conv2d_2/Conv2D/ReadVariableOp�
)sequential_5/sequential_1/conv2d_2/Conv2DConv2D:sequential_5/sequential_1/max_pooling2d_1/MaxPool:output:0@sequential_5/sequential_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:m *
paddingVALID*
strides
2+
)sequential_5/sequential_1/conv2d_2/Conv2D�
9sequential_5/sequential_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpBsequential_5_sequential_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02;
9sequential_5/sequential_1/conv2d_2/BiasAdd/ReadVariableOp�
*sequential_5/sequential_1/conv2d_2/BiasAddBiasAdd2sequential_5/sequential_1/conv2d_2/Conv2D:output:0Asequential_5/sequential_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:m 2,
*sequential_5/sequential_1/conv2d_2/BiasAdd�
'sequential_5/sequential_1/conv2d_2/ReluRelu3sequential_5/sequential_1/conv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:m 2)
'sequential_5/sequential_1/conv2d_2/Relu�
1sequential_5/sequential_1/max_pooling2d_2/MaxPoolMaxPool5sequential_5/sequential_1/conv2d_2/Relu:activations:0*&
_output_shapes
:
6 *
ksize
*
paddingVALID*
strides
23
1sequential_5/sequential_1/max_pooling2d_2/MaxPool�
8sequential_5/sequential_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOpAsequential_5_sequential_1_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02:
8sequential_5/sequential_1/conv2d_3/Conv2D/ReadVariableOp�
)sequential_5/sequential_1/conv2d_3/Conv2DConv2D:sequential_5/sequential_1/max_pooling2d_2/MaxPool:output:0@sequential_5/sequential_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 *
paddingVALID*
strides
2+
)sequential_5/sequential_1/conv2d_3/Conv2D�
9sequential_5/sequential_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpBsequential_5_sequential_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02;
9sequential_5/sequential_1/conv2d_3/BiasAdd/ReadVariableOp�
*sequential_5/sequential_1/conv2d_3/BiasAddBiasAdd2sequential_5/sequential_1/conv2d_3/Conv2D:output:0Asequential_5/sequential_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 2,
*sequential_5/sequential_1/conv2d_3/BiasAdd�
'sequential_5/sequential_1/conv2d_3/ReluRelu3sequential_5/sequential_1/conv2d_3/BiasAdd:output:0*
T0*&
_output_shapes
:	3 2)
'sequential_5/sequential_1/conv2d_3/Relu�
1sequential_5/sequential_1/max_pooling2d_3/MaxPoolMaxPool5sequential_5/sequential_1/conv2d_3/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
23
1sequential_5/sequential_1/max_pooling2d_3/MaxPool�
8sequential_5/sequential_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOpAsequential_5_sequential_1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02:
8sequential_5/sequential_1/conv2d_4/Conv2D/ReadVariableOp�
)sequential_5/sequential_1/conv2d_4/Conv2DConv2D:sequential_5/sequential_1/max_pooling2d_3/MaxPool:output:0@sequential_5/sequential_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2+
)sequential_5/sequential_1/conv2d_4/Conv2D�
9sequential_5/sequential_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOpBsequential_5_sequential_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02;
9sequential_5/sequential_1/conv2d_4/BiasAdd/ReadVariableOp�
*sequential_5/sequential_1/conv2d_4/BiasAddBiasAdd2sequential_5/sequential_1/conv2d_4/Conv2D:output:0Asequential_5/sequential_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2,
*sequential_5/sequential_1/conv2d_4/BiasAdd�
'sequential_5/sequential_1/conv2d_4/ReluRelu3sequential_5/sequential_1/conv2d_4/BiasAdd:output:0*
T0*&
_output_shapes
: 2)
'sequential_5/sequential_1/conv2d_4/Relu�
1sequential_5/sequential_1/max_pooling2d_4/MaxPoolMaxPool5sequential_5/sequential_1/conv2d_4/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
23
1sequential_5/sequential_1/max_pooling2d_4/MaxPool�
)sequential_5/sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2+
)sequential_5/sequential_1/flatten_1/Const�
+sequential_5/sequential_1/flatten_1/ReshapeReshape:sequential_5/sequential_1/max_pooling2d_4/MaxPool:output:02sequential_5/sequential_1/flatten_1/Const:output:0*
T0*
_output_shapes
:	�2-
+sequential_5/sequential_1/flatten_1/Reshape�
,sequential_5/sequential_1/dropout_1/IdentityIdentity4sequential_5/sequential_1/flatten_1/Reshape:output:0*
T0*
_output_shapes
:	�2.
,sequential_5/sequential_1/dropout_1/Identity�
7sequential_5/sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp@sequential_5_sequential_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype029
7sequential_5/sequential_1/dense_1/MatMul/ReadVariableOp�
(sequential_5/sequential_1/dense_1/MatMulMatMul5sequential_5/sequential_1/dropout_1/Identity:output:0?sequential_5/sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2*
(sequential_5/sequential_1/dense_1/MatMul�
8sequential_5/sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpAsequential_5_sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02:
8sequential_5/sequential_1/dense_1/BiasAdd/ReadVariableOp�
)sequential_5/sequential_1/dense_1/BiasAddBiasAdd2sequential_5/sequential_1/dense_1/MatMul:product:0@sequential_5/sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2+
)sequential_5/sequential_1/dense_1/BiasAdd�
&sequential_5/sequential_1/dense_1/ReluRelu2sequential_5/sequential_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	�2(
&sequential_5/sequential_1/dense_1/Relu�
,sequential_5/sequential_1/dropout_2/IdentityIdentity4sequential_5/sequential_1/dense_1/Relu:activations:0*
T0*
_output_shapes
:	�2.
,sequential_5/sequential_1/dropout_2/Identity�
Csequential_5/sequential_1/classification_head/MatMul/ReadVariableOpReadVariableOpLsequential_5_sequential_1_classification_head_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02E
Csequential_5/sequential_1/classification_head/MatMul/ReadVariableOp�
4sequential_5/sequential_1/classification_head/MatMulMatMul5sequential_5/sequential_1/dropout_2/Identity:output:0Ksequential_5/sequential_1/classification_head/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:26
4sequential_5/sequential_1/classification_head/MatMul�
Dsequential_5/sequential_1/classification_head/BiasAdd/ReadVariableOpReadVariableOpMsequential_5_sequential_1_classification_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02F
Dsequential_5/sequential_1/classification_head/BiasAdd/ReadVariableOp�
5sequential_5/sequential_1/classification_head/BiasAddBiasAdd>sequential_5/sequential_1/classification_head/MatMul:product:0Lsequential_5/sequential_1/classification_head/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:27
5sequential_5/sequential_1/classification_head/BiasAdd�
5sequential_5/sequential_1/classification_head/SoftmaxSoftmax>sequential_5/sequential_1/classification_head/BiasAdd:output:0*
T0*
_output_shapes

:27
5sequential_5/sequential_1/classification_head/Softmax�
IdentityIdentity?sequential_5/sequential_1/classification_head/Softmax:softmax:0M^sequential_5/audio_preproc/audio_preprocessing_layer/StatefulPartitionedCallE^sequential_5/sequential_1/classification_head/BiasAdd/ReadVariableOpD^sequential_5/sequential_1/classification_head/MatMul/ReadVariableOp:^sequential_5/sequential_1/conv2d_1/BiasAdd/ReadVariableOp9^sequential_5/sequential_1/conv2d_1/Conv2D/ReadVariableOp:^sequential_5/sequential_1/conv2d_2/BiasAdd/ReadVariableOp9^sequential_5/sequential_1/conv2d_2/Conv2D/ReadVariableOp:^sequential_5/sequential_1/conv2d_3/BiasAdd/ReadVariableOp9^sequential_5/sequential_1/conv2d_3/Conv2D/ReadVariableOp:^sequential_5/sequential_1/conv2d_4/BiasAdd/ReadVariableOp9^sequential_5/sequential_1/conv2d_4/Conv2D/ReadVariableOp9^sequential_5/sequential_1/dense_1/BiasAdd/ReadVariableOp8^sequential_5/sequential_1/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : : : : : 2�
Lsequential_5/audio_preproc/audio_preprocessing_layer/StatefulPartitionedCallLsequential_5/audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall2�
Dsequential_5/sequential_1/classification_head/BiasAdd/ReadVariableOpDsequential_5/sequential_1/classification_head/BiasAdd/ReadVariableOp2�
Csequential_5/sequential_1/classification_head/MatMul/ReadVariableOpCsequential_5/sequential_1/classification_head/MatMul/ReadVariableOp2v
9sequential_5/sequential_1/conv2d_1/BiasAdd/ReadVariableOp9sequential_5/sequential_1/conv2d_1/BiasAdd/ReadVariableOp2t
8sequential_5/sequential_1/conv2d_1/Conv2D/ReadVariableOp8sequential_5/sequential_1/conv2d_1/Conv2D/ReadVariableOp2v
9sequential_5/sequential_1/conv2d_2/BiasAdd/ReadVariableOp9sequential_5/sequential_1/conv2d_2/BiasAdd/ReadVariableOp2t
8sequential_5/sequential_1/conv2d_2/Conv2D/ReadVariableOp8sequential_5/sequential_1/conv2d_2/Conv2D/ReadVariableOp2v
9sequential_5/sequential_1/conv2d_3/BiasAdd/ReadVariableOp9sequential_5/sequential_1/conv2d_3/BiasAdd/ReadVariableOp2t
8sequential_5/sequential_1/conv2d_3/Conv2D/ReadVariableOp8sequential_5/sequential_1/conv2d_3/Conv2D/ReadVariableOp2v
9sequential_5/sequential_1/conv2d_4/BiasAdd/ReadVariableOp9sequential_5/sequential_1/conv2d_4/BiasAdd/ReadVariableOp2t
8sequential_5/sequential_1/conv2d_4/Conv2D/ReadVariableOp8sequential_5/sequential_1/conv2d_4/Conv2D/ReadVariableOp2t
8sequential_5/sequential_1/dense_1/BiasAdd/ReadVariableOp8sequential_5/sequential_1/dense_1/BiasAdd/ReadVariableOp2r
7sequential_5/sequential_1/dense_1/MatMul/ReadVariableOp7sequential_5/sequential_1/dense_1/MatMul/ReadVariableOp:^ Z
)
_output_shapes
:�����������
-
_user_specified_nameaudio_preproc_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
-__inference_audio_preproc_layer_call_fn_30548

inputs
unknown
	unknown_0:	�
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_audio_preproc_layer_call_and_return_conditional_losses_292042
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
+__inference_Assert_AssertGuard_true_663_104%
!assert_assertguard_identity_equal
"
assert_assertguard_placeholder!
assert_assertguard_identity_1
P
Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert/AssertGuard/NoOp�
Assert/AssertGuard/IdentityIdentity!assert_assertguard_identity_equal^Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity�
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
: :�����������: 

_output_shapes
: :/+
)
_output_shapes
:�����������
�

�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_31200

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2	
BiasAddW
ReluReluBiasAdd:output:0*
T0*&
_output_shapes
: 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*&
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
: 
 
_user_specified_nameinputs
�	
�
B__inference_dense_1_layer_call_and_return_conditional_losses_29407

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2	
BiasAddP
ReluReluBiasAdd:output:0*
T0*
_output_shapes
:	�2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�H
�	
G__inference_sequential_1_layer_call_and_return_conditional_losses_30930
conv2d_1_inputA
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:A
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource:  6
(conv2d_4_biasadd_readvariableop_resource: :
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�E
2classification_head_matmul_readvariableop_resource:	�A
3classification_head_biasadd_readvariableop_resource:
identity��*classification_head/BiasAdd/ReadVariableOp�)classification_head/MatMul/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dconv2d_1_input&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�*
paddingVALID*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�2
conv2d_1/BiasAdds
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*'
_output_shapes
:*�2
conv2d_1/Relu�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*&
_output_shapes
:p*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:m *
paddingVALID*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:m 2
conv2d_2/BiasAddr
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:m 2
conv2d_2/Relu�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*&
_output_shapes
:
6 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 *
paddingVALID*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 2
conv2d_3/BiasAddr
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*&
_output_shapes
:	3 2
conv2d_3/Relu�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2
conv2d_4/BiasAddr
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*&
_output_shapes
: 2
conv2d_4/Relu�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_1/Const�
flatten_1/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten_1/Const:output:0*
T0*
_output_shapes
:	�2
flatten_1/Reshapez
dropout_1/IdentityIdentityflatten_1/Reshape:output:0*
T0*
_output_shapes
:	�2
dropout_1/Identity�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout_1/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/BiasAddh
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*
_output_shapes
:	�2
dense_1/Reluz
dropout_2/IdentityIdentitydense_1/Relu:activations:0*
T0*
_output_shapes
:	�2
dropout_2/Identity�
)classification_head/MatMul/ReadVariableOpReadVariableOp2classification_head_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02+
)classification_head/MatMul/ReadVariableOp�
classification_head/MatMulMatMuldropout_2/Identity:output:01classification_head/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/MatMul�
*classification_head/BiasAdd/ReadVariableOpReadVariableOp3classification_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*classification_head/BiasAdd/ReadVariableOp�
classification_head/BiasAddBiasAdd$classification_head/MatMul:product:02classification_head/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/BiasAdd�
classification_head/SoftmaxSoftmax$classification_head/BiasAdd:output:0*
T0*
_output_shapes

:2
classification_head/Softmax�
IdentityIdentity%classification_head/Softmax:softmax:0+^classification_head/BiasAdd/ReadVariableOp*^classification_head/MatMul/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 2X
*classification_head/BiasAdd/ReadVariableOp*classification_head/BiasAdd/ReadVariableOp2V
)classification_head/MatMul/ReadVariableOp)classification_head/MatMul/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
'
_output_shapes
:+�
(
_user_specified_nameconv2d_1_input
�
�
(__inference_restored_function_body_20217

inputs
unknown
	unknown_0:	�
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_5292
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
�
-__inference_audio_preproc_layer_call_fn_29228#
audio_preprocessing_layer_input
unknown
	unknown_0:	�
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallaudio_preprocessing_layer_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_audio_preproc_layer_call_and_return_conditional_losses_292042
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
)
_output_shapes
:�����������
9
_user_specified_name!audio_preprocessing_layer_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
K
/__inference_max_pooling2d_2_layer_call_fn_29278

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_292722
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_30269
audio_preproc_input
audio_preproc_30234"
audio_preproc_30236:	�
audio_preproc_30238
audio_preproc_30240,
sequential_1_30243: 
sequential_1_30245:,
sequential_1_30247:  
sequential_1_30249: ,
sequential_1_30251:   
sequential_1_30253: ,
sequential_1_30255:   
sequential_1_30257: &
sequential_1_30259:
��!
sequential_1_30261:	�%
sequential_1_30263:	� 
sequential_1_30265:
identity��%audio_preproc/StatefulPartitionedCall�$sequential_1/StatefulPartitionedCall�
%audio_preproc/StatefulPartitionedCallStatefulPartitionedCallaudio_preproc_inputaudio_preproc_30234audio_preproc_30236audio_preproc_30238audio_preproc_30240*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_audio_preproc_layer_call_and_return_conditional_losses_292042'
%audio_preproc/StatefulPartitionedCall�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall.audio_preproc/StatefulPartitionedCall:output:0sequential_1_30243sequential_1_30245sequential_1_30247sequential_1_30249sequential_1_30251sequential_1_30253sequential_1_30255sequential_1_30257sequential_1_30259sequential_1_30261sequential_1_30263sequential_1_30265*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_300172&
$sequential_1/StatefulPartitionedCall�
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0&^audio_preproc/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : : : : : 2N
%audio_preproc/StatefulPartitionedCall%audio_preproc/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:^ Z
)
_output_shapes
:�����������
-
_user_specified_nameaudio_preproc_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�7
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_29438

inputs(
conv2d_1_29321:
conv2d_1_29323:(
conv2d_2_29339: 
conv2d_2_29341: (
conv2d_3_29357:  
conv2d_3_29359: (
conv2d_4_29375:  
conv2d_4_29377: !
dense_1_29408:
��
dense_1_29410:	�,
classification_head_29432:	�'
classification_head_29434:
identity��+classification_head/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_29321conv2d_1_29323*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:*�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_293202"
 conv2d_1/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:p* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_292602!
max_pooling2d_1/PartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_29339conv2d_2_29341*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:m *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_293382"
 conv2d_2/StatefulPartitionedCall�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:
6 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_292722!
max_pooling2d_2/PartitionedCall�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_29357conv2d_3_29359*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:	3 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_293562"
 conv2d_3/StatefulPartitionedCall�
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_292842!
max_pooling2d_3/PartitionedCall�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_29375conv2d_4_29377*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_293742"
 conv2d_4/StatefulPartitionedCall�
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_292962!
max_pooling2d_4/PartitionedCall�
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_293872
flatten_1/PartitionedCall�
dropout_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_293942
dropout_1/PartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_29408dense_1_29410*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_294072!
dense_1/StatefulPartitionedCall�
dropout_2/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_294182
dropout_2/PartitionedCall�
+classification_head/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0classification_head_29432classification_head_29434*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_classification_head_layer_call_and_return_conditional_losses_294312-
+classification_head/StatefulPartitionedCall�
IdentityIdentity4classification_head/StatefulPartitionedCall:output:0,^classification_head/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 2Z
+classification_head/StatefulPartitionedCall+classification_head/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:O K
'
_output_shapes
:+�
 
_user_specified_nameinputs
�
b
)__inference_dropout_1_layer_call_fn_31221

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_295282
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�	
�
+__inference_Assert_AssertGuard_false_198_18#
assert_assertguard_assert_equal
5
1assert_assertguard_assert_readvariableop_resource!
assert_assertguard_identity_1
��Assert/AssertGuard/Assert�
(Assert/AssertGuard/Assert/ReadVariableOpReadVariableOp1assert_assertguard_assert_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(Assert/AssertGuard/Assert/ReadVariableOp�
Assert/AssertGuard/AssertAssertassert_assertguard_assert_equal0Assert/AssertGuard/Assert/ReadVariableOp:value:0*

T
2*
_output_shapes
 2
Assert/AssertGuard/Assert�
Assert/AssertGuard/IdentityIdentityassert_assertguard_assert_equal^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity�
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :26
Assert/AssertGuard/AssertAssert/AssertGuard/Assert: 

_output_shapes
: 
�
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_31273

inputs

identity_1R
IdentityIdentityinputs*
T0*
_output_shapes
:	�2

Identitya

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
:	�2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�
b
)__inference_dropout_2_layer_call_fn_31268

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_294952
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_29296

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_529

inputs
	equal_1_x
unknown:	�
	unknown_0
	unknown_1
identity��Assert/AssertGuard�Assert_1/Assert�StatefulPartitionedCall�StatefulPartitionedCall_1N
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
Equal�
Assert/AssertGuardIf	Equal:z:0	Equal:z:0inputs*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *?
else_branch0R.
,__inference_Assert_AssertGuard_false_664_174*
output_shapes
: *>
then_branch/R-
+__inference_Assert_AssertGuard_true_663_1042
Assert/AssertGuard�
Assert/AssertGuard/IdentityIdentityAssert/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/IdentityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
Equal_1Equal	equal_1_xstrided_slice:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_1H
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1�
Assert_1/AssertAssertEqual_1:z:0Shape_1:output:0^Assert/AssertGuard*

T
2*
_output_shapes
 2
Assert_1/Assert�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *0
f+R)
'__inference_tf_webaudio_spectrogram_3162
StatefulPartitionedCall�
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0^Assert_1/Assert*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_z_normalize_spectrogram_672
StatefulPartitionedCall_1k
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ExpandDims/dim�

ExpandDims
ExpandDims"StatefulPartitionedCall_1:output:0ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+���������������������������2

ExpandDims�
IdentityIdentityExpandDims:output:0^Assert/AssertGuard^Assert_1/Assert^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: :: : 2(
Assert/AssertGuardAssert/AssertGuard2"
Assert_1/AssertAssert_1/Assert22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_Assert_AssertGuard_true_64_168%
!assert_assertguard_identity_equal
"
assert_assertguard_placeholder!
assert_assertguard_identity_1
P
Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert/AssertGuard/NoOp�
Assert/AssertGuard/IdentityIdentity!assert_assertguard_identity_equal^Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity�
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
: :�����������: 

_output_shapes
: :/+
)
_output_shapes
:�����������
�	
�
0__inference_cond_Assert_AssertGuard_false_225_73-
)cond_assert_assertguard_assert_cond_equal
1
-cond_assert_assertguard_assert_waveform_frame&
"cond_assert_assertguard_identity_1
��cond/Assert/AssertGuard/Assert�
cond/Assert/AssertGuard/AssertAssert)cond_assert_assertguard_assert_cond_equal-cond_assert_assertguard_assert_waveform_frame*

T
2*
_output_shapes
 2 
cond/Assert/AssertGuard/Assert�
 cond/Assert/AssertGuard/IdentityIdentity)cond_assert_assertguard_assert_cond_equal^cond/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2"
 cond/Assert/AssertGuard/Identity�
"cond/Assert/AssertGuard/Identity_1Identity)cond/Assert/AssertGuard/Identity:output:0^cond/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2$
"cond/Assert/AssertGuard/Identity_1"Q
"cond_assert_assertguard_identity_1+cond/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+: :'���������������������������2@
cond/Assert/AssertGuard/Assertcond/Assert/AssertGuard/Assert: 

_output_shapes
: :C?
=
_output_shapes+
):'���������������������������
�
�
0__inference_cond_Assert_AssertGuard_true_224_198/
+cond_assert_assertguard_identity_cond_equal
'
#cond_assert_assertguard_placeholder&
"cond_assert_assertguard_identity_1
Z
cond/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
cond/Assert/AssertGuard/NoOp�
 cond/Assert/AssertGuard/IdentityIdentity+cond_assert_assertguard_identity_cond_equal^cond/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2"
 cond/Assert/AssertGuard/Identity�
"cond/Assert/AssertGuard/Identity_1Identity)cond/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2$
"cond/Assert/AssertGuard/Identity_1"Q
"cond_assert_assertguard_identity_1+cond/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+: :'���������������������������: 

_output_shapes
: :C?
=
_output_shapes+
):'���������������������������
�Z
�	
G__inference_sequential_1_layer_call_and_return_conditional_losses_31120

inputsA
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:A
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource:  6
(conv2d_4_biasadd_readvariableop_resource: :
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�E
2classification_head_matmul_readvariableop_resource:	�A
3classification_head_biasadd_readvariableop_resource:
identity��*classification_head/BiasAdd/ReadVariableOp�)classification_head/MatMul/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�*
paddingVALID*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�2
conv2d_1/BiasAdds
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*'
_output_shapes
:*�2
conv2d_1/Relu�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*&
_output_shapes
:p*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:m *
paddingVALID*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:m 2
conv2d_2/BiasAddr
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:m 2
conv2d_2/Relu�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*&
_output_shapes
:
6 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 *
paddingVALID*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 2
conv2d_3/BiasAddr
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*&
_output_shapes
:	3 2
conv2d_3/Relu�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2
conv2d_4/BiasAddr
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*&
_output_shapes
: 2
conv2d_4/Relu�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_1/Const�
flatten_1/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten_1/Const:output:0*
T0*
_output_shapes
:	�2
flatten_1/Reshapew
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?2
dropout_1/dropout/Const�
dropout_1/dropout/MulMulflatten_1/Reshape:output:0 dropout_1/dropout/Const:output:0*
T0*
_output_shapes
:	�2
dropout_1/dropout/Mul�
dropout_1/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2
dropout_1/dropout/Shape�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform�
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �>2"
 dropout_1/dropout/GreaterEqual/y�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2 
dropout_1/dropout/GreaterEqual�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2
dropout_1/dropout/Cast�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*
_output_shapes
:	�2
dropout_1/dropout/Mul_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/BiasAddh
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*
_output_shapes
:	�2
dense_1/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/dropout/Const�
dropout_2/dropout/MulMuldense_1/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*
_output_shapes
:	�2
dropout_2/dropout/Mul�
dropout_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �  2
dropout_2/dropout/Shape�
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform�
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_2/dropout/GreaterEqual/y�
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�2 
dropout_2/dropout/GreaterEqual�
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	�2
dropout_2/dropout/Cast�
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*
_output_shapes
:	�2
dropout_2/dropout/Mul_1�
)classification_head/MatMul/ReadVariableOpReadVariableOp2classification_head_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02+
)classification_head/MatMul/ReadVariableOp�
classification_head/MatMulMatMuldropout_2/dropout/Mul_1:z:01classification_head/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/MatMul�
*classification_head/BiasAdd/ReadVariableOpReadVariableOp3classification_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*classification_head/BiasAdd/ReadVariableOp�
classification_head/BiasAddBiasAdd$classification_head/MatMul:product:02classification_head/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/BiasAdd�
classification_head/SoftmaxSoftmax$classification_head/BiasAdd:output:0*
T0*
_output_shapes

:2
classification_head/Softmax�
IdentityIdentity%classification_head/Softmax:softmax:0+^classification_head/BiasAdd/ReadVariableOp*^classification_head/MatMul/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 2X
*classification_head/BiasAdd/ReadVariableOp*classification_head/BiasAdd/ReadVariableOp2V
)classification_head/MatMul/ReadVariableOp)classification_head/MatMul/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�H
�	
G__inference_sequential_1_layer_call_and_return_conditional_losses_31052

inputsA
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:A
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource:  6
(conv2d_4_biasadd_readvariableop_resource: :
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�E
2classification_head_matmul_readvariableop_resource:	�A
3classification_head_biasadd_readvariableop_resource:
identity��*classification_head/BiasAdd/ReadVariableOp�)classification_head/MatMul/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�*
paddingVALID*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�2
conv2d_1/BiasAdds
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*'
_output_shapes
:*�2
conv2d_1/Relu�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*&
_output_shapes
:p*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:m *
paddingVALID*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:m 2
conv2d_2/BiasAddr
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:m 2
conv2d_2/Relu�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*&
_output_shapes
:
6 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 *
paddingVALID*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:	3 2
conv2d_3/BiasAddr
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*&
_output_shapes
:	3 2
conv2d_3/Relu�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2
conv2d_4/BiasAddr
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*&
_output_shapes
: 2
conv2d_4/Relu�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
flatten_1/Const�
flatten_1/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten_1/Const:output:0*
T0*
_output_shapes
:	�2
flatten_1/Reshapez
dropout_1/IdentityIdentityflatten_1/Reshape:output:0*
T0*
_output_shapes
:	�2
dropout_1/Identity�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout_1/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
dense_1/BiasAddh
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*
_output_shapes
:	�2
dense_1/Reluz
dropout_2/IdentityIdentitydense_1/Relu:activations:0*
T0*
_output_shapes
:	�2
dropout_2/Identity�
)classification_head/MatMul/ReadVariableOpReadVariableOp2classification_head_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02+
)classification_head/MatMul/ReadVariableOp�
classification_head/MatMulMatMuldropout_2/Identity:output:01classification_head/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/MatMul�
*classification_head/BiasAdd/ReadVariableOpReadVariableOp3classification_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*classification_head/BiasAdd/ReadVariableOp�
classification_head/BiasAddBiasAdd$classification_head/MatMul:product:02classification_head/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
classification_head/BiasAdd�
classification_head/SoftmaxSoftmax$classification_head/BiasAdd:output:0*
T0*
_output_shapes

:2
classification_head/Softmax�
IdentityIdentity%classification_head/Softmax:softmax:0+^classification_head/BiasAdd/ReadVariableOp*^classification_head/MatMul/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 2X
*classification_head/BiasAdd/ReadVariableOp*classification_head/BiasAdd/ReadVariableOp2V
)classification_head/MatMul/ReadVariableOp)classification_head/MatMul/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�
�
3__inference_classification_head_layer_call_fn_31294

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_classification_head_layer_call_and_return_conditional_losses_294312
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	�: : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�\
�
'__inference_tf_webaudio_spectrogram_316
waveform

window
frame_shift
frequency_truncation
identity��Assert/AssertGuard�Assert_1/AssertGuard�Assert_2/Assert�Assert_3/Assert�Assert_4/Assert�Assert_5/Assert�StatefulPartitionedCallN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
Equal�
Assert/AssertGuardIf	Equal:z:0	Equal:z:0waveform*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *>
else_branch/R-
+__inference_Assert_AssertGuard_false_96_180*
output_shapes
: *=
then_branch.R,
*__inference_Assert_AssertGuard_true_95_1162
Assert/AssertGuard�
Assert/AssertGuard/IdentityIdentityAssert/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identityr
Rank_1/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:�*
dtype02
Rank_1/ReadVariableOpR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1X
	Equal_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
	Equal_1/y�
Equal_1EqualRank_1:output:0Equal_1/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_1v
Assert_1/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:�*
dtype02
Assert_1/ReadVariableOp�
Assert_1/AssertGuardIfEqual_1:z:0Equal_1:z:0window*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*@
else_branch1R/
-__inference_Assert_1_AssertGuard_false_115_86*
output_shapes
: *@
then_branch1R/
-__inference_Assert_1_AssertGuard_true_114_1922
Assert_1/AssertGuard�
Assert_1/AssertGuard/IdentityIdentityAssert_1/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert_1/AssertGuard/IdentityF
ShapeShapewaveform*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicen
Size/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:�*
dtype02
Size/ReadVariableOpO
SizeConst*
_output_shapes
: *
dtype0*
value
B :�2
SizeZ

floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :2

floordiv/ye
floordivFloorDivSize:output:0floordiv/y:output:0*
T0*
_output_shapes
: 2

floordivw
Equal_2Equalframe_shiftfloordiv:z:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_2�
Assert_2/AssertAssertEqual_2:z:0frame_shiftSize:output:0^Assert/AssertGuard*
T
2*
_output_shapes
 2
Assert_2/AssertC
Size_1Sizewaveform*
T0*
_output_shapes
: 2
Size_1n

floordiv_1FloorDivSize_1:output:0strided_slice:output:0*
T0*
_output_shapes
: 2

floordiv_1b

floordiv_2FloorDivfloordiv_1:z:0frame_shift*
T0*
_output_shapes
: 2

floordiv_2O
mulMulframe_shiftfloordiv_2:z:0*
T0*
_output_shapes
: 2
mulk
Slice/beginConst*
_output_shapes
:*
dtype0*
valueB"        2
Slice/beging
Slice/size/0Const*
_output_shapes
: *
dtype0*
valueB :
���������2
Slice/size/0n

Slice/sizePackSlice/size/0:output:0mul:z:0*
N*
T0*
_output_shapes
:2

Slice/size�
SliceSlicewaveformSlice/begin:output:0Slice/size:output:0*
Index0*
T0*0
_output_shapes
:������������������2
Slicec
	zeros/mulMulstrided_slice:output:0frame_shift*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessw
zeros/packedPackstrided_slice:output:0frame_shift*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const~
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*0
_output_shapes
:������������������2
zeros\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis�
concatConcatV2zeros:output:0Slice:output:0concat/axis:output:0*
N*
T0*0
_output_shapes
:������������������2
concat�
Reshape/shapePackstrided_slice:output:0floordiv_2:z:0frame_shift*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeSlice:output:0Reshape/shape:output:0*
T0*=
_output_shapes+
):'���������������������������2	
ReshapeP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yT
addAddV2floordiv_2:z:0add/y:output:0*
T0*
_output_shapes
: 2
add�
Reshape_1/shapePackstrided_slice:output:0add:z:0frame_shift*
N*
T0*
_output_shapes
:2
Reshape_1/shape�
	Reshape_1Reshapeconcat:output:0Reshape_1/shape:output:0*
T0*=
_output_shapes+
):'���������������������������2
	Reshape_1s
Slice_1/beginConst*
_output_shapes
:*
dtype0*!
valueB"            2
Slice_1/begink
Slice_1/size/0Const*
_output_shapes
: *
dtype0*
valueB :
���������2
Slice_1/size/0�
Slice_1/sizePackSlice_1/size/0:output:0floordiv_2:z:0frame_shift*
N*
T0*
_output_shapes
:2
Slice_1/size�
Slice_1SliceReshape_1:output:0Slice_1/begin:output:0Slice_1/size:output:0*
Index0*
T0*=
_output_shapes+
):'���������������������������2	
Slice_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis�
concat_1ConcatV2Slice_1:output:0Reshape:output:0concat_1/axis:output:0*
N*
T0*=
_output_shapes+
):'���������������������������2

concat_1S
Shape_1Shapeconcat_1:output:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
Equal_3Equalstrided_slice_1:output:0strided_slice:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_3S
Shape_2Shapeconcat_1:output:0*
T0*
_output_shapes
:2	
Shape_2�
Assert_3/AssertAssertEqual_3:z:0Shape_2:output:0strided_slice:output:0^Assert_2/Assert*
T
2*
_output_shapes
 2
Assert_3/AssertS
Shape_3Shapeconcat_1:output:0*
T0*
_output_shapes
:2	
Shape_3x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSliceShape_3:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2�
Equal_4Equalstrided_slice_2:output:0floordiv_2:z:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_4S
Shape_4Shapeconcat_1:output:0*
T0*
_output_shapes
:2	
Shape_4�
Assert_4/AssertAssertEqual_4:z:0Shape_4:output:0floordiv_2:z:0^Assert_3/Assert*
T
2*
_output_shapes
 2
Assert_4/AssertS
Shape_5Shapeconcat_1:output:0*
T0*
_output_shapes
:2	
Shape_5x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSliceShape_5:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3�
Equal_5Equalstrided_slice_3:output:0Size:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_5S
Shape_6Shapeconcat_1:output:0*
T0*
_output_shapes
:2	
Shape_6�
Assert_5/AssertAssertEqual_5:z:0Shape_6:output:0Size:output:0^Assert_4/Assert*
T
2*
_output_shapes
 2
Assert_5/Assert�
StatefulPartitionedCallStatefulPartitionedCallconcat_1:output:0window*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *3
f.R,
*__inference_tf_webaudio_power_spectrum_2332
StatefulPartitionedCalls
Slice_2/beginConst*
_output_shapes
:*
dtype0*!
valueB"            2
Slice_2/begink
Slice_2/size/0Const*
_output_shapes
: *
dtype0*
valueB :
���������2
Slice_2/size/0�
Slice_2/sizePackSlice_2/size/0:output:0floordiv_2:z:0frequency_truncation*
N*
T0*
_output_shapes
:2
Slice_2/size�
Slice_2Slice StatefulPartitionedCall:output:0Slice_2/begin:output:0Slice_2/size:output:0*
Index0*
T0*=
_output_shapes+
):'���������������������������2	
Slice_2�
IdentityIdentitySlice_2:output:0^Assert/AssertGuard^Assert_1/AssertGuard^Assert_2/Assert^Assert_3/Assert^Assert_4/Assert^Assert_5/Assert^StatefulPartitionedCall*
T0*=
_output_shapes+
):'���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:: : 2(
Assert/AssertGuardAssert/AssertGuard2,
Assert_1/AssertGuardAssert_1/AssertGuard2"
Assert_2/AssertAssert_2/Assert2"
Assert_3/AssertAssert_3/Assert2"
Assert_4/AssertAssert_4/Assert2"
Assert_5/AssertAssert_5/Assert22
StatefulPartitionedCallStatefulPartitionedCall:S O
)
_output_shapes
:�����������
"
_user_specified_name
waveform:&"
 
_user_specified_namewindow:C?

_output_shapes
: 
%
_user_specified_nameframe_shift:LH

_output_shapes
: 
.
_user_specified_namefrequency_truncation
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_30231
audio_preproc_input
audio_preproc_30196"
audio_preproc_30198:	�
audio_preproc_30200
audio_preproc_30202,
sequential_1_30205: 
sequential_1_30207:,
sequential_1_30209:  
sequential_1_30211: ,
sequential_1_30213:   
sequential_1_30215: ,
sequential_1_30217:   
sequential_1_30219: &
sequential_1_30221:
��!
sequential_1_30223:	�%
sequential_1_30225:	� 
sequential_1_30227:
identity��%audio_preproc/StatefulPartitionedCall�$sequential_1/StatefulPartitionedCall�
%audio_preproc/StatefulPartitionedCallStatefulPartitionedCallaudio_preproc_inputaudio_preproc_30196audio_preproc_30198audio_preproc_30200audio_preproc_30202*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_audio_preproc_layer_call_and_return_conditional_losses_291652'
%audio_preproc/StatefulPartitionedCall�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall.audio_preproc/StatefulPartitionedCall:output:0sequential_1_30205sequential_1_30207sequential_1_30209sequential_1_30211sequential_1_30213sequential_1_30215sequential_1_30217sequential_1_30219sequential_1_30221sequential_1_30223sequential_1_30225sequential_1_30227*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_298562&
$sequential_1/StatefulPartitionedCall�
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0&^audio_preproc/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : : : : : 2N
%audio_preproc/StatefulPartitionedCall%audio_preproc/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:^ Z
)
_output_shapes
:�����������
-
_user_specified_nameaudio_preproc_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
(__inference_conv2d_3_layer_call_fn_31169

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:	3 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_293562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*&
_output_shapes
:	3 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:
6 : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
&
_output_shapes
:
6 
 
_user_specified_nameinputs
�	
�
1__inference_cond_Assert_AssertGuard_false_250_146-
)cond_assert_assertguard_assert_cond_equal
1
-cond_assert_assertguard_assert_waveform_frame&
"cond_assert_assertguard_identity_1
��cond/Assert/AssertGuard/Assert�
cond/Assert/AssertGuard/AssertAssert)cond_assert_assertguard_assert_cond_equal-cond_assert_assertguard_assert_waveform_frame*

T
2*
_output_shapes
 2 
cond/Assert/AssertGuard/Assert�
 cond/Assert/AssertGuard/IdentityIdentity)cond_assert_assertguard_assert_cond_equal^cond/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2"
 cond/Assert/AssertGuard/Identity�
"cond/Assert/AssertGuard/Identity_1Identity)cond/Assert/AssertGuard/Identity:output:0^cond/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2$
"cond/Assert/AssertGuard/Identity_1"Q
"cond_assert_assertguard_identity_1+cond/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+: :'���������������������������2@
cond/Assert/AssertGuard/Assertcond/Assert/AssertGuard/Assert: 

_output_shapes
: :C?
=
_output_shapes+
):'���������������������������
�	
�
-__inference_audio_preproc_layer_call_fn_29176#
audio_preprocessing_layer_input
unknown
	unknown_0:	�
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallaudio_preprocessing_layer_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_audio_preproc_layer_call_and_return_conditional_losses_291652
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
)
_output_shapes
:�����������
9
_user_specified_name!audio_preprocessing_layer_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_audio_preproc_layer_call_and_return_conditional_losses_29165

inputs#
audio_preprocessing_layer_29155.
audio_preprocessing_layer_29157:	�#
audio_preprocessing_layer_29159#
audio_preprocessing_layer_29161
identity��1audio_preprocessing_layer/StatefulPartitionedCall�
1audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallinputsaudio_preprocessing_layer_29155audio_preprocessing_layer_29157audio_preprocessing_layer_29159audio_preprocessing_layer_29161*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *1
f,R*
(__inference_restored_function_body_2021723
1audio_preprocessing_layer/StatefulPartitionedCall�
IdentityIdentity:audio_preprocessing_layer/StatefulPartitionedCall:output:02^audio_preprocessing_layer/StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : : : 2f
1audio_preprocessing_layer/StatefulPartitionedCall1audio_preprocessing_layer/StatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
,__inference_sequential_1_layer_call_fn_30667

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_296492
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:+�
 
_user_specified_nameinputs
�
�
*__inference_Assert_AssertGuard_true_414_79%
!assert_assertguard_identity_equal
"
assert_assertguard_placeholder!
assert_assertguard_identity_1
P
Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert/AssertGuard/NoOp�
Assert/AssertGuard/IdentityIdentity!assert_assertguard_identity_equal^Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity�
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
: :�����������: 

_output_shapes
: :/+
)
_output_shapes
:�����������
�

�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_29374

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2	
BiasAddW
ReluReluBiasAdd:output:0*
T0*&
_output_shapes
: 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*&
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
: 
 
_user_specified_nameinputs
�
E
)__inference_dropout_2_layer_call_fn_31263

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_294182
PartitionedCalld
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�
�
-__inference_Assert_1_AssertGuard_true_114_192)
%assert_1_assertguard_identity_equal_1
$
 assert_1_assertguard_placeholder#
assert_1_assertguard_identity_1
T
Assert_1/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert_1/AssertGuard/NoOp�
Assert_1/AssertGuard/IdentityIdentity%assert_1_assertguard_identity_equal_1^Assert_1/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert_1/AssertGuard/Identity�
Assert_1/AssertGuard/Identity_1Identity&Assert_1/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2!
Assert_1/AssertGuard/Identity_1"K
assert_1_assertguard_identity_1(Assert_1/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :: 

_output_shapes
: 
�

�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_31140

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:*�2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:*�2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*'
_output_shapes
:*�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:+�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:O K
'
_output_shapes
:+�
 
_user_specified_nameinputs
�
�
'__inference_dense_1_layer_call_fn_31247

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_294072
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	�: : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_30121

inputs
audio_preproc_30086"
audio_preproc_30088:	�
audio_preproc_30090
audio_preproc_30092,
sequential_1_30095: 
sequential_1_30097:,
sequential_1_30099:  
sequential_1_30101: ,
sequential_1_30103:   
sequential_1_30105: ,
sequential_1_30107:   
sequential_1_30109: &
sequential_1_30111:
��!
sequential_1_30113:	�%
sequential_1_30115:	� 
sequential_1_30117:
identity��%audio_preproc/StatefulPartitionedCall�$sequential_1/StatefulPartitionedCall�
%audio_preproc/StatefulPartitionedCallStatefulPartitionedCallinputsaudio_preproc_30086audio_preproc_30088audio_preproc_30090audio_preproc_30092*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_audio_preproc_layer_call_and_return_conditional_losses_292042'
%audio_preproc/StatefulPartitionedCall�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall.audio_preproc/StatefulPartitionedCall:output:0sequential_1_30095sequential_1_30097sequential_1_30099sequential_1_30101sequential_1_30103sequential_1_30105sequential_1_30107sequential_1_30109sequential_1_30111sequential_1_30113sequential_1_30115sequential_1_30117*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_300172&
$sequential_1/StatefulPartitionedCall�
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0&^audio_preproc/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : : : : : 2N
%audio_preproc/StatefulPartitionedCall%audio_preproc/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
,__inference_sequential_1_layer_call_fn_30696
conv2d_1_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_296492
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:+�: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:+�
(
_user_specified_nameconv2d_1_input
�
�
(__inference_conv2d_1_layer_call_fn_31129

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:*�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_293202
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:*�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:+�: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:+�
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_29260

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_31211

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  2
Const_
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes
:	�2	
Reshape\
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: :N J
&
_output_shapes
: 
 
_user_specified_nameinputs
�
�
+__inference_Assert_AssertGuard_false_299_47*
&assert_assertguard_assert_greaterequal
)
%assert_assertguard_assert_spectrogram!
assert_assertguard_identity_1
��Assert/AssertGuard/Assert�
Assert/AssertGuard/AssertAssert&assert_assertguard_assert_greaterequal%assert_assertguard_assert_spectrogram*

T
2*
_output_shapes
 2
Assert/AssertGuard/Assert�
Assert/AssertGuard/IdentityIdentity&assert_assertguard_assert_greaterequal^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity�
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+: :'���������������������������26
Assert/AssertGuard/AssertAssert/AssertGuard/Assert: 

_output_shapes
: :C?
=
_output_shapes+
):'���������������������������
�
K
/__inference_max_pooling2d_3_layer_call_fn_29290

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_292842
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
0__inference_cond_Assert_AssertGuard_true_249_110/
+cond_assert_assertguard_identity_cond_equal
'
#cond_assert_assertguard_placeholder&
"cond_assert_assertguard_identity_1
Z
cond/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
cond/Assert/AssertGuard/NoOp�
 cond/Assert/AssertGuard/IdentityIdentity+cond_assert_assertguard_identity_cond_equal^cond/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2"
 cond/Assert/AssertGuard/Identity�
"cond/Assert/AssertGuard/Identity_1Identity)cond/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2$
"cond/Assert/AssertGuard/Identity_1"Q
"cond_assert_assertguard_identity_1+cond/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+: :'���������������������������: 

_output_shapes
: :C?
=
_output_shapes+
):'���������������������������
�;
�

__inference__traced_save_31409
file_prefix9
5savev2_classification_head_kernel_read_readvariableop7
3savev2_classification_head_bias_read_readvariableop?
;savev2_audio_preprocessing_layer_window_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop@
<savev2_adam_classification_head_kernel_m_read_readvariableop>
:savev2_adam_classification_head_bias_m_read_readvariableop@
<savev2_adam_classification_head_kernel_v_read_readvariableop>
:savev2_adam_classification_head_bias_v_read_readvariableop
savev2_const_3

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/0/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/0/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:05savev2_classification_head_kernel_read_readvariableop3savev2_classification_head_bias_read_readvariableop;savev2_audio_preprocessing_layer_window_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop<savev2_adam_classification_head_kernel_m_read_readvariableop:savev2_adam_classification_head_bias_m_read_readvariableop<savev2_adam_classification_head_kernel_v_read_readvariableop:savev2_adam_classification_head_bias_v_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 *)
dtypes
2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�::�::: : :  : :  : :
��:�: : : : : : : : : :	�::	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�: 

_output_shapes
::!

_output_shapes	
:�:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 	

_output_shapes
: :,
(
&
_output_shapes
:  : 

_output_shapes
: :&"
 
_output_shapes
:
��:!

_output_shapes	
:�:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�: 

_output_shapes
::%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: "�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
U
audio_preproc_input>
%serving_default_audio_preproc_input:0�����������7
sequential_1'
StatefulPartitionedCall:0tensorflow/serving/predict:��
�8
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
regularization_losses
trainable_variables
	variables
	keras_api

signatures
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses"�6
_tf_keras_sequential�6{"name": "sequential_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 44032]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "audio_preproc_input"}}, {"class_name": "Sequential", "config": {"name": "audio_preproc", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 44032]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "audio_preprocessing_layer_input"}}, {"class_name": "AudioPreprocessingLayer", "config": {"layer was saved without config": true}}]}}, {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 43, 232, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 43, 232, 1]}, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [2, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": false, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": false, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": false, "dtype": "float32", "units": 2000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": false, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "classification_head", "trainable": true, "dtype": "float32", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}]}, "shared_object_id": 30, "build_input_shape": {"class_name": "TensorShape", "items": [null, 44032]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 44032]}, "float32", "audio_preproc_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}}
�	
layer_with_weights-0
layer-0
	
signatures
#
_self_saveable_object_factories
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_sequential�{"name": "audio_preproc", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "audio_preproc", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 44032]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "audio_preprocessing_layer_input"}}, {"class_name": "AudioPreprocessingLayer", "config": {"layer was saved without config": true}}]}, "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [null, 44032]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 44032]}, "float32", "audio_preprocessing_layer_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}}
�l
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	optimizer
regularization_losses
trainable_variables
	variables
 	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�h
_tf_keras_sequential�h{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 43, 232, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 43, 232, 1]}, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [2, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": false, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": false, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": false, "dtype": "float32", "units": 2000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": false, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "classification_head", "trainable": true, "dtype": "float32", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 43, 232, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [1, 43, 232, 1]}, "float32", "conv2d_1_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 43, 232, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}, "shared_object_id": 3}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 43, 232, 1]}, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [2, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 7}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 11}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 15}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "shared_object_id": 19}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": false, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 20}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": false, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 21}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": false, "dtype": "float32", "units": 2000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": false, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 25}, {"class_name": "Dense", "config": {"name": "classification_head", "trainable": true, "dtype": "float32", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 28}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 32}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
~
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
!11
"12"
trackable_list_wrapper
�
.metrics
regularization_losses
/layer_metrics
trainable_variables
0layer_regularization_losses
	variables
1non_trainable_variables

2layers
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
�

#window
#_window
#3_self_saveable_object_factories
4regularization_losses
5trainable_variables
6	variables
7	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "audio_preprocessing_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AudioPreprocessingLayer", "config": {"layer was saved without config": true}}
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
#0"
trackable_list_wrapper
�
8metrics
regularization_losses
9layer_metrics
trainable_variables
:layer_regularization_losses
	variables
;non_trainable_variables

<layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

$kernel
%bias
=regularization_losses
>trainable_variables
?	variables
@	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�

_tf_keras_layer�
{"name": "conv2d_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 43, 232, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 43, 232, 1]}, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [2, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 43, 232, 1]}}
�
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "max_pooling2d_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 33}}
�

&kernel
'bias
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"name": "conv2d_2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 21, 112, 8]}}
�
Iregularization_losses
Jtrainable_variables
K	variables
L	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "max_pooling2d_2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 35}}
�

(kernel
)bias
Mregularization_losses
Ntrainable_variables
O	variables
P	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"name": "conv2d_3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 54, 32]}}
�
Qregularization_losses
Rtrainable_variables
S	variables
T	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "max_pooling2d_3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 37}}
�

*kernel
+bias
Uregularization_losses
Vtrainable_variables
W	variables
X	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"name": "conv2d_4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 25, 32]}}
�
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "max_pooling2d_4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 2]}, "data_format": "channels_last"}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 39}}
�
]regularization_losses
^trainable_variables
_	variables
`	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "flatten_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_1", "trainable": false, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 40}}
�
aregularization_losses
btrainable_variables
c	variables
d	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dropout_1", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": false, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "shared_object_id": 21}
�	

,kernel
-bias
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": false, "dtype": "float32", "units": 2000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 704}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 704]}}
�
iregularization_losses
jtrainable_variables
k	variables
l	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dropout_2", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_2", "trainable": false, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 25}
�

!kernel
"bias
mregularization_losses
ntrainable_variables
o	variables
p	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "classification_head", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "classification_head", "trainable": true, "dtype": "float32", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2000}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2000]}}
{
qiter

rbeta_1

sbeta_2
	tdecay
ulearning_rate!m�"m�!v�"v�"
	optimizer
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
v
$0
%1
&2
'3
(4
)5
*6
+7
,8
-9
!10
"11"
trackable_list_wrapper
�
vmetrics
regularization_losses
wlayer_metrics
trainable_variables
xlayer_regularization_losses
	variables
ynon_trainable_variables

zlayers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-:+	�2classification_head/kernel
&:$2classification_head/bias
-:+�2 audio_preprocessing_layer/window
):'2conv2d_1/kernel
:2conv2d_1/bias
):' 2conv2d_2/kernel
: 2conv2d_2/bias
):'  2conv2d_3/kernel
: 2conv2d_3/bias
):'  2conv2d_4/kernel
: 2conv2d_4/bias
": 
��2dense_1/kernel
:�2dense_1/bias
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
n
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
#0"
trackable_list_wrapper
�
{metrics
4regularization_losses
|layer_metrics
}layer_regularization_losses
5trainable_variables
6	variables
~non_trainable_variables

layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
#0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
�
�metrics
=regularization_losses
�layer_metrics
 �layer_regularization_losses
>trainable_variables
?	variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
Aregularization_losses
�layer_metrics
 �layer_regularization_losses
Btrainable_variables
C	variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
�
�metrics
Eregularization_losses
�layer_metrics
 �layer_regularization_losses
Ftrainable_variables
G	variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
Iregularization_losses
�layer_metrics
 �layer_regularization_losses
Jtrainable_variables
K	variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
�
�metrics
Mregularization_losses
�layer_metrics
 �layer_regularization_losses
Ntrainable_variables
O	variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
Qregularization_losses
�layer_metrics
 �layer_regularization_losses
Rtrainable_variables
S	variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
�
�metrics
Uregularization_losses
�layer_metrics
 �layer_regularization_losses
Vtrainable_variables
W	variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
Yregularization_losses
�layer_metrics
 �layer_regularization_losses
Ztrainable_variables
[	variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
]regularization_losses
�layer_metrics
 �layer_regularization_losses
^trainable_variables
_	variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
aregularization_losses
�layer_metrics
 �layer_regularization_losses
btrainable_variables
c	variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
�
�metrics
eregularization_losses
�layer_metrics
 �layer_regularization_losses
ftrainable_variables
g	variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
iregularization_losses
�layer_metrics
 �layer_regularization_losses
jtrainable_variables
k	variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
�
�metrics
mregularization_losses
�layer_metrics
 �layer_regularization_losses
ntrainable_variables
o	variables
�non_trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
f
$0
%1
&2
'3
(4
)5
*6
+7
,8
-9"
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�

�total

�count
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 43}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "acc", "dtype": "float32", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 32}
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
2:0	�2!Adam/classification_head/kernel/m
+:)2Adam/classification_head/bias/m
2:0	�2!Adam/classification_head/kernel/v
+:)2Adam/classification_head/bias/v
�2�
,__inference_sequential_5_layer_call_fn_29918
,__inference_sequential_5_layer_call_fn_30345
,__inference_sequential_5_layer_call_fn_30382
,__inference_sequential_5_layer_call_fn_30193�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
 __inference__wrapped_model_29148�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *4�1
/�,
audio_preproc_input�����������
�2�
G__inference_sequential_5_layer_call_and_return_conditional_losses_30445
G__inference_sequential_5_layer_call_and_return_conditional_losses_30522
G__inference_sequential_5_layer_call_and_return_conditional_losses_30231
G__inference_sequential_5_layer_call_and_return_conditional_losses_30269�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_audio_preproc_layer_call_fn_29176
-__inference_audio_preproc_layer_call_fn_30535
-__inference_audio_preproc_layer_call_fn_30548
-__inference_audio_preproc_layer_call_fn_29228�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_audio_preproc_layer_call_and_return_conditional_losses_30561
H__inference_audio_preproc_layer_call_and_return_conditional_losses_30574
H__inference_audio_preproc_layer_call_and_return_conditional_losses_29241
H__inference_audio_preproc_layer_call_and_return_conditional_losses_29254�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_sequential_1_layer_call_fn_30609
,__inference_sequential_1_layer_call_fn_30638
,__inference_sequential_1_layer_call_fn_30667
,__inference_sequential_1_layer_call_fn_30696
,__inference_sequential_1_layer_call_fn_30725
,__inference_sequential_1_layer_call_fn_30754�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_sequential_1_layer_call_and_return_conditional_losses_30808
G__inference_sequential_1_layer_call_and_return_conditional_losses_30876
G__inference_sequential_1_layer_call_and_return_conditional_losses_30930
G__inference_sequential_1_layer_call_and_return_conditional_losses_30998
G__inference_sequential_1_layer_call_and_return_conditional_losses_31052
G__inference_sequential_1_layer_call_and_return_conditional_losses_31120�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
#__inference_signature_wrapper_30308audio_preproc_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
7__inference_audio_preprocessing_layer_layer_call_fn_496�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_529�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
HBF
!__inference_signature_wrapper_391audio_preprocessing_layer_input
�2�
(__inference_conv2d_1_layer_call_fn_31129�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_31140�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_max_pooling2d_1_layer_call_fn_29266�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_29260�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
(__inference_conv2d_2_layer_call_fn_31149�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_31160�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_max_pooling2d_2_layer_call_fn_29278�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_29272�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
(__inference_conv2d_3_layer_call_fn_31169�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_31180�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_max_pooling2d_3_layer_call_fn_29290�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_29284�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
(__inference_conv2d_4_layer_call_fn_31189�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_31200�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_max_pooling2d_4_layer_call_fn_29302�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_29296�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
)__inference_flatten_1_layer_call_fn_31205�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_flatten_1_layer_call_and_return_conditional_losses_31211�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dropout_1_layer_call_fn_31216
)__inference_dropout_1_layer_call_fn_31221�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_dropout_1_layer_call_and_return_conditional_losses_31226
D__inference_dropout_1_layer_call_and_return_conditional_losses_31238�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_dense_1_layer_call_fn_31247�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_1_layer_call_and_return_conditional_losses_31258�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dropout_2_layer_call_fn_31263
)__inference_dropout_2_layer_call_fn_31268�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_dropout_2_layer_call_and_return_conditional_losses_31273
D__inference_dropout_2_layer_call_and_return_conditional_losses_31285�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
3__inference_classification_head_layer_call_fn_31294�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
N__inference_classification_head_layer_call_and_return_conditional_losses_31305�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
	J
Const
J	
Const_1
J	
Const_2�
 __inference__wrapped_model_29148��#��$%&'()*+,-!">�;
4�1
/�,
audio_preproc_input�����������
� "2�/
-
sequential_1�
sequential_1�
H__inference_audio_preproc_layer_call_and_return_conditional_losses_29241��#��R�O
H�E
;�8
audio_preprocessing_layer_input�����������
p 

 
� "7�4
-�*
0#�������������������
� �
H__inference_audio_preproc_layer_call_and_return_conditional_losses_29254��#��R�O
H�E
;�8
audio_preprocessing_layer_input�����������
p

 
� "7�4
-�*
0#�������������������
� �
H__inference_audio_preproc_layer_call_and_return_conditional_losses_30561}�#��9�6
/�,
"�
inputs�����������
p 

 
� "7�4
-�*
0#�������������������
� �
H__inference_audio_preproc_layer_call_and_return_conditional_losses_30574}�#��9�6
/�,
"�
inputs�����������
p

 
� "7�4
-�*
0#�������������������
� �
-__inference_audio_preproc_layer_call_fn_29176��#��R�O
H�E
;�8
audio_preprocessing_layer_input�����������
p 

 
� "*�'#��������������������
-__inference_audio_preproc_layer_call_fn_29228��#��R�O
H�E
;�8
audio_preprocessing_layer_input�����������
p

 
� "*�'#��������������������
-__inference_audio_preproc_layer_call_fn_30535p�#��9�6
/�,
"�
inputs�����������
p 

 
� "*�'#��������������������
-__inference_audio_preproc_layer_call_fn_30548p�#��9�6
/�,
"�
inputs�����������
p

 
� "*�'#��������������������
R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_529}�#��1�.
'�$
"�
inputs�����������
� "?�<
5�2
0+���������������������������
� �
7__inference_audio_preprocessing_layer_layer_call_fn_496p�#��1�.
'�$
"�
inputs�����������
� "2�/+����������������������������
N__inference_classification_head_layer_call_and_return_conditional_losses_31305K!"'�$
�
�
inputs	�
� "�
�
0
� u
3__inference_classification_head_layer_call_fn_31294>!"'�$
�
�
inputs	�
� "��
C__inference_conv2d_1_layer_call_and_return_conditional_losses_31140\$%/�,
%�"
 �
inputs+�
� "%�"
�
0*�
� {
(__inference_conv2d_1_layer_call_fn_31129O$%/�,
%�"
 �
inputs+�
� "�*��
C__inference_conv2d_2_layer_call_and_return_conditional_losses_31160Z&'.�+
$�!
�
inputsp
� "$�!
�
0m 
� y
(__inference_conv2d_2_layer_call_fn_31149M&'.�+
$�!
�
inputsp
� "�m �
C__inference_conv2d_3_layer_call_and_return_conditional_losses_31180Z().�+
$�!
�
inputs
6 
� "$�!
�
0	3 
� y
(__inference_conv2d_3_layer_call_fn_31169M().�+
$�!
�
inputs
6 
� "�	3 �
C__inference_conv2d_4_layer_call_and_return_conditional_losses_31200Z*+.�+
$�!
�
inputs 
� "$�!
�
0 
� y
(__inference_conv2d_4_layer_call_fn_31189M*+.�+
$�!
�
inputs 
� "� �
B__inference_dense_1_layer_call_and_return_conditional_losses_31258L,-'�$
�
�
inputs	�
� "�
�
0	�
� j
'__inference_dense_1_layer_call_fn_31247?,-'�$
�
�
inputs	�
� "�	��
D__inference_dropout_1_layer_call_and_return_conditional_losses_31226L+�(
!�
�
inputs	�
p 
� "�
�
0	�
� �
D__inference_dropout_1_layer_call_and_return_conditional_losses_31238L+�(
!�
�
inputs	�
p
� "�
�
0	�
� l
)__inference_dropout_1_layer_call_fn_31216?+�(
!�
�
inputs	�
p 
� "�	�l
)__inference_dropout_1_layer_call_fn_31221?+�(
!�
�
inputs	�
p
� "�	��
D__inference_dropout_2_layer_call_and_return_conditional_losses_31273L+�(
!�
�
inputs	�
p 
� "�
�
0	�
� �
D__inference_dropout_2_layer_call_and_return_conditional_losses_31285L+�(
!�
�
inputs	�
p
� "�
�
0	�
� l
)__inference_dropout_2_layer_call_fn_31263?+�(
!�
�
inputs	�
p 
� "�	�l
)__inference_dropout_2_layer_call_fn_31268?+�(
!�
�
inputs	�
p
� "�	��
D__inference_flatten_1_layer_call_and_return_conditional_losses_31211O.�+
$�!
�
inputs 
� "�
�
0	�
� o
)__inference_flatten_1_layer_call_fn_31205B.�+
$�!
�
inputs 
� "�	��
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_29260�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
/__inference_max_pooling2d_1_layer_call_fn_29266�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_29272�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
/__inference_max_pooling2d_2_layer_call_fn_29278�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_29284�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
/__inference_max_pooling2d_3_layer_call_fn_29290�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_29296�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
/__inference_max_pooling2d_4_layer_call_fn_29302�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
G__inference_sequential_1_layer_call_and_return_conditional_losses_30808e$%&'()*+,-!"7�4
-�*
 �
inputs+�
p 

 
� "�
�
0
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_30876e$%&'()*+,-!"7�4
-�*
 �
inputs+�
p

 
� "�
�
0
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_30930m$%&'()*+,-!"?�<
5�2
(�%
conv2d_1_input+�
p 

 
� "�
�
0
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_30998m$%&'()*+,-!"?�<
5�2
(�%
conv2d_1_input+�
p

 
� "�
�
0
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_31052w$%&'()*+,-!"I�F
?�<
2�/
inputs#�������������������
p 

 
� "�
�
0
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_31120w$%&'()*+,-!"I�F
?�<
2�/
inputs#�������������������
p

 
� "�
�
0
� �
,__inference_sequential_1_layer_call_fn_30609`$%&'()*+,-!"?�<
5�2
(�%
conv2d_1_input+�
p 

 
� "��
,__inference_sequential_1_layer_call_fn_30638X$%&'()*+,-!"7�4
-�*
 �
inputs+�
p 

 
� "��
,__inference_sequential_1_layer_call_fn_30667X$%&'()*+,-!"7�4
-�*
 �
inputs+�
p

 
� "��
,__inference_sequential_1_layer_call_fn_30696`$%&'()*+,-!"?�<
5�2
(�%
conv2d_1_input+�
p

 
� "��
,__inference_sequential_1_layer_call_fn_30725j$%&'()*+,-!"I�F
?�<
2�/
inputs#�������������������
p 

 
� "��
,__inference_sequential_1_layer_call_fn_30754j$%&'()*+,-!"I�F
?�<
2�/
inputs#�������������������
p

 
� "��
G__inference_sequential_5_layer_call_and_return_conditional_losses_30231{�#��$%&'()*+,-!"F�C
<�9
/�,
audio_preproc_input�����������
p 

 
� "�
�
0
� �
G__inference_sequential_5_layer_call_and_return_conditional_losses_30269{�#��$%&'()*+,-!"F�C
<�9
/�,
audio_preproc_input�����������
p

 
� "�
�
0
� �
G__inference_sequential_5_layer_call_and_return_conditional_losses_30445n�#��$%&'()*+,-!"9�6
/�,
"�
inputs�����������
p 

 
� "�
�
0
� �
G__inference_sequential_5_layer_call_and_return_conditional_losses_30522n�#��$%&'()*+,-!"9�6
/�,
"�
inputs�����������
p

 
� "�
�
0
� �
,__inference_sequential_5_layer_call_fn_29918n�#��$%&'()*+,-!"F�C
<�9
/�,
audio_preproc_input�����������
p 

 
� "��
,__inference_sequential_5_layer_call_fn_30193n�#��$%&'()*+,-!"F�C
<�9
/�,
audio_preproc_input�����������
p

 
� "��
,__inference_sequential_5_layer_call_fn_30345a�#��$%&'()*+,-!"9�6
/�,
"�
inputs�����������
p 

 
� "��
,__inference_sequential_5_layer_call_fn_30382a�#��$%&'()*+,-!"9�6
/�,
"�
inputs�����������
p

 
� "��
#__inference_signature_wrapper_30308��#��$%&'()*+,-!"U�R
� 
K�H
F
audio_preproc_input/�,
audio_preproc_input�����������"2�/
-
sequential_1�
sequential_1�
!__inference_signature_wrapper_391��#��m�j
� 
c�`
^
audio_preprocessing_layer_input;�8
audio_preprocessing_layer_input�����������"o�l
j
audio_preprocessing_layerM�J
audio_preprocessing_layer+���������������������������