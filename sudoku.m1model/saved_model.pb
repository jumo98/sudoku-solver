߰
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.22unknown8ٚ
?
Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_26/bias/v
z
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?Q?*'
shared_nameAdam/dense_26/kernel/v
?
*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v* 
_output_shapes
:
?Q?*
dtype0
?
Adam/conv2d_86/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_86/bias/v
|
)Adam/conv2d_86/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_86/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_86/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_86/kernel/v
?
+Adam/conv2d_86/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_86/kernel/v*'
_output_shapes
:@?*
dtype0
?
"Adam/batch_normalization_57/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_57/beta/v
?
6Adam/batch_normalization_57/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_57/beta/v*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_57/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_57/gamma/v
?
7Adam/batch_normalization_57/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_57/gamma/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_85/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_85/bias/v
{
)Adam/conv2d_85/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_85/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_85/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_85/kernel/v
?
+Adam/conv2d_85/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_85/kernel/v*&
_output_shapes
:@@*
dtype0
?
"Adam/batch_normalization_56/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_56/beta/v
?
6Adam/batch_normalization_56/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_56/beta/v*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_56/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_56/gamma/v
?
7Adam/batch_normalization_56/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_56/gamma/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_84/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_84/bias/v
{
)Adam/conv2d_84/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_84/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_84/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_84/kernel/v
?
+Adam/conv2d_84/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_84/kernel/v*&
_output_shapes
:@*
dtype0
?
Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_26/bias/m
z
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?Q?*'
shared_nameAdam/dense_26/kernel/m
?
*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m* 
_output_shapes
:
?Q?*
dtype0
?
Adam/conv2d_86/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_86/bias/m
|
)Adam/conv2d_86/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_86/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_86/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_86/kernel/m
?
+Adam/conv2d_86/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_86/kernel/m*'
_output_shapes
:@?*
dtype0
?
"Adam/batch_normalization_57/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_57/beta/m
?
6Adam/batch_normalization_57/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_57/beta/m*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_57/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_57/gamma/m
?
7Adam/batch_normalization_57/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_57/gamma/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_85/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_85/bias/m
{
)Adam/conv2d_85/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_85/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_85/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_85/kernel/m
?
+Adam/conv2d_85/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_85/kernel/m*&
_output_shapes
:@@*
dtype0
?
"Adam/batch_normalization_56/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_56/beta/m
?
6Adam/batch_normalization_56/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_56/beta/m*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_56/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_56/gamma/m
?
7Adam/batch_normalization_56/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_56/gamma/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_84/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_84/bias/m
{
)Adam/conv2d_84/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_84/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_84/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_84/kernel/m
?
+Adam/conv2d_84/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_84/kernel/m*&
_output_shapes
:@*
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
s
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_26/bias
l
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes	
:?*
dtype0
|
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?Q?* 
shared_namedense_26/kernel
u
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel* 
_output_shapes
:
?Q?*
dtype0
u
conv2d_86/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_86/bias
n
"conv2d_86/bias/Read/ReadVariableOpReadVariableOpconv2d_86/bias*
_output_shapes	
:?*
dtype0
?
conv2d_86/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_86/kernel
~
$conv2d_86/kernel/Read/ReadVariableOpReadVariableOpconv2d_86/kernel*'
_output_shapes
:@?*
dtype0
?
&batch_normalization_57/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_57/moving_variance
?
:batch_normalization_57/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_57/moving_variance*
_output_shapes
:@*
dtype0
?
"batch_normalization_57/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_57/moving_mean
?
6batch_normalization_57/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_57/moving_mean*
_output_shapes
:@*
dtype0
?
batch_normalization_57/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_57/beta
?
/batch_normalization_57/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_57/beta*
_output_shapes
:@*
dtype0
?
batch_normalization_57/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_57/gamma
?
0batch_normalization_57/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_57/gamma*
_output_shapes
:@*
dtype0
t
conv2d_85/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_85/bias
m
"conv2d_85/bias/Read/ReadVariableOpReadVariableOpconv2d_85/bias*
_output_shapes
:@*
dtype0
?
conv2d_85/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_85/kernel
}
$conv2d_85/kernel/Read/ReadVariableOpReadVariableOpconv2d_85/kernel*&
_output_shapes
:@@*
dtype0
?
&batch_normalization_56/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_56/moving_variance
?
:batch_normalization_56/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_56/moving_variance*
_output_shapes
:@*
dtype0
?
"batch_normalization_56/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_56/moving_mean
?
6batch_normalization_56/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_56/moving_mean*
_output_shapes
:@*
dtype0
?
batch_normalization_56/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_56/beta
?
/batch_normalization_56/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_56/beta*
_output_shapes
:@*
dtype0
?
batch_normalization_56/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_56/gamma
?
0batch_normalization_56/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_56/gamma*
_output_shapes
:@*
dtype0
t
conv2d_84/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_84/bias
m
"conv2d_84/bias/Read/ReadVariableOpReadVariableOpconv2d_84/bias*
_output_shapes
:@*
dtype0
?
conv2d_84/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_84/kernel
}
$conv2d_84/kernel/Read/ReadVariableOpReadVariableOpconv2d_84/kernel*&
_output_shapes
:@*
dtype0

NoOpNoOp
?d
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?d
value?cB?c B?c
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer-5
layer_with_weights-5
layer-6
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"axis
	#gamma
$beta
%moving_mean
&moving_variance*
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op*
?
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6axis
	7gamma
8beta
9moving_mean
:moving_variance*
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias
 C_jit_compiled_convolution_op*
?
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses* 
?
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias*
?
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses* 
?
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses* 
z
0
1
#2
$3
%4
&5
-6
.7
78
89
910
:11
A12
B13
P14
Q15*
Z
0
1
#2
$3
-4
.5
76
87
A8
B9
P10
Q11*
* 
?
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ctrace_0
dtrace_1
etrace_2
ftrace_3* 
6
gtrace_0
htrace_1
itrace_2
jtrace_3* 
* 
?
kiter

lbeta_1

mbeta_2
	ndecay
olearning_ratem?m?#m?$m?-m?.m?7m?8m?Am?Bm?Pm?Qm?v?v?#v?$v?-v?.v?7v?8v?Av?Bv?Pv?Qv?*

pserving_default* 

0
1*

0
1*
* 
?
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

vtrace_0* 

wtrace_0* 
`Z
VARIABLE_VALUEconv2d_84/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_84/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
#0
$1
%2
&3*

#0
$1*
* 
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

}trace_0
~trace_1* 

trace_0
?trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_56/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_56/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_56/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_56/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
`Z
VARIABLE_VALUEconv2d_85/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_85/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
70
81
92
:3*

70
81*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_57/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_57/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_57/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_57/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

A0
B1*

A0
B1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
`Z
VARIABLE_VALUEconv2d_86/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_86/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

P0
Q1*

P0
Q1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_26/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
 
%0
&1
92
:3*
C
0
1
2
3
4
5
6
7
	8*

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 

%0
&1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

90
:1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
?	variables
?	keras_api

?total

?count*
M
?	variables
?	keras_api

?total

?count
?
_fn_kwargs*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
?}
VARIABLE_VALUEAdam/conv2d_84/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_84/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_56/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_56/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_85/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_85/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_57/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_57/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_86/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_86/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_26/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_26/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_84/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_84/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_56/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_56/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_85/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_85/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_57/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_57/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_86/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_86/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_26/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_26/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_conv2d_84_inputPlaceholder*/
_output_shapes
:?????????		*
dtype0*$
shape:?????????		
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_84_inputconv2d_84/kernelconv2d_84/biasbatch_normalization_56/gammabatch_normalization_56/beta"batch_normalization_56/moving_mean&batch_normalization_56/moving_varianceconv2d_85/kernelconv2d_85/biasbatch_normalization_57/gammabatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_varianceconv2d_86/kernelconv2d_86/biasdense_26/kerneldense_26/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_858492
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_84/kernel/Read/ReadVariableOp"conv2d_84/bias/Read/ReadVariableOp0batch_normalization_56/gamma/Read/ReadVariableOp/batch_normalization_56/beta/Read/ReadVariableOp6batch_normalization_56/moving_mean/Read/ReadVariableOp:batch_normalization_56/moving_variance/Read/ReadVariableOp$conv2d_85/kernel/Read/ReadVariableOp"conv2d_85/bias/Read/ReadVariableOp0batch_normalization_57/gamma/Read/ReadVariableOp/batch_normalization_57/beta/Read/ReadVariableOp6batch_normalization_57/moving_mean/Read/ReadVariableOp:batch_normalization_57/moving_variance/Read/ReadVariableOp$conv2d_86/kernel/Read/ReadVariableOp"conv2d_86/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_84/kernel/m/Read/ReadVariableOp)Adam/conv2d_84/bias/m/Read/ReadVariableOp7Adam/batch_normalization_56/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_56/beta/m/Read/ReadVariableOp+Adam/conv2d_85/kernel/m/Read/ReadVariableOp)Adam/conv2d_85/bias/m/Read/ReadVariableOp7Adam/batch_normalization_57/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_57/beta/m/Read/ReadVariableOp+Adam/conv2d_86/kernel/m/Read/ReadVariableOp)Adam/conv2d_86/bias/m/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp+Adam/conv2d_84/kernel/v/Read/ReadVariableOp)Adam/conv2d_84/bias/v/Read/ReadVariableOp7Adam/batch_normalization_56/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_56/beta/v/Read/ReadVariableOp+Adam/conv2d_85/kernel/v/Read/ReadVariableOp)Adam/conv2d_85/bias/v/Read/ReadVariableOp7Adam/batch_normalization_57/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_57/beta/v/Read/ReadVariableOp+Adam/conv2d_86/kernel/v/Read/ReadVariableOp)Adam/conv2d_86/bias/v/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOpConst*>
Tin7
523	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_859120
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_84/kernelconv2d_84/biasbatch_normalization_56/gammabatch_normalization_56/beta"batch_normalization_56/moving_mean&batch_normalization_56/moving_varianceconv2d_85/kernelconv2d_85/biasbatch_normalization_57/gammabatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_varianceconv2d_86/kernelconv2d_86/biasdense_26/kerneldense_26/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_84/kernel/mAdam/conv2d_84/bias/m#Adam/batch_normalization_56/gamma/m"Adam/batch_normalization_56/beta/mAdam/conv2d_85/kernel/mAdam/conv2d_85/bias/m#Adam/batch_normalization_57/gamma/m"Adam/batch_normalization_57/beta/mAdam/conv2d_86/kernel/mAdam/conv2d_86/bias/mAdam/dense_26/kernel/mAdam/dense_26/bias/mAdam/conv2d_84/kernel/vAdam/conv2d_84/bias/v#Adam/batch_normalization_56/gamma/v"Adam/batch_normalization_56/beta/vAdam/conv2d_85/kernel/vAdam/conv2d_85/bias/v#Adam/batch_normalization_57/gamma/v"Adam/batch_normalization_57/beta/vAdam/conv2d_86/kernel/vAdam/conv2d_86/bias/vAdam/dense_26/kernel/vAdam/dense_26/bias/v*=
Tin6
422*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_859277??	
?
?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_858854

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
*__inference_conv2d_85_layer_call_fn_858799

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_85_layer_call_and_return_conditional_losses_858029w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????		@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????		@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????		@
 
_user_specified_nameinputs
?e
?
__inference__traced_save_859120
file_prefix/
+savev2_conv2d_84_kernel_read_readvariableop-
)savev2_conv2d_84_bias_read_readvariableop;
7savev2_batch_normalization_56_gamma_read_readvariableop:
6savev2_batch_normalization_56_beta_read_readvariableopA
=savev2_batch_normalization_56_moving_mean_read_readvariableopE
Asavev2_batch_normalization_56_moving_variance_read_readvariableop/
+savev2_conv2d_85_kernel_read_readvariableop-
)savev2_conv2d_85_bias_read_readvariableop;
7savev2_batch_normalization_57_gamma_read_readvariableop:
6savev2_batch_normalization_57_beta_read_readvariableopA
=savev2_batch_normalization_57_moving_mean_read_readvariableopE
Asavev2_batch_normalization_57_moving_variance_read_readvariableop/
+savev2_conv2d_86_kernel_read_readvariableop-
)savev2_conv2d_86_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_84_kernel_m_read_readvariableop4
0savev2_adam_conv2d_84_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_56_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_56_beta_m_read_readvariableop6
2savev2_adam_conv2d_85_kernel_m_read_readvariableop4
0savev2_adam_conv2d_85_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_57_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_57_beta_m_read_readvariableop6
2savev2_adam_conv2d_86_kernel_m_read_readvariableop4
0savev2_adam_conv2d_86_bias_m_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableop6
2savev2_adam_conv2d_84_kernel_v_read_readvariableop4
0savev2_adam_conv2d_84_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_56_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_56_beta_v_read_readvariableop6
2savev2_adam_conv2d_85_kernel_v_read_readvariableop4
0savev2_adam_conv2d_85_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_57_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_57_beta_v_read_readvariableop6
2savev2_adam_conv2d_86_kernel_v_read_readvariableop4
0savev2_adam_conv2d_86_bias_v_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*?
value?B?2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_84_kernel_read_readvariableop)savev2_conv2d_84_bias_read_readvariableop7savev2_batch_normalization_56_gamma_read_readvariableop6savev2_batch_normalization_56_beta_read_readvariableop=savev2_batch_normalization_56_moving_mean_read_readvariableopAsavev2_batch_normalization_56_moving_variance_read_readvariableop+savev2_conv2d_85_kernel_read_readvariableop)savev2_conv2d_85_bias_read_readvariableop7savev2_batch_normalization_57_gamma_read_readvariableop6savev2_batch_normalization_57_beta_read_readvariableop=savev2_batch_normalization_57_moving_mean_read_readvariableopAsavev2_batch_normalization_57_moving_variance_read_readvariableop+savev2_conv2d_86_kernel_read_readvariableop)savev2_conv2d_86_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_84_kernel_m_read_readvariableop0savev2_adam_conv2d_84_bias_m_read_readvariableop>savev2_adam_batch_normalization_56_gamma_m_read_readvariableop=savev2_adam_batch_normalization_56_beta_m_read_readvariableop2savev2_adam_conv2d_85_kernel_m_read_readvariableop0savev2_adam_conv2d_85_bias_m_read_readvariableop>savev2_adam_batch_normalization_57_gamma_m_read_readvariableop=savev2_adam_batch_normalization_57_beta_m_read_readvariableop2savev2_adam_conv2d_86_kernel_m_read_readvariableop0savev2_adam_conv2d_86_bias_m_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop2savev2_adam_conv2d_84_kernel_v_read_readvariableop0savev2_adam_conv2d_84_bias_v_read_readvariableop>savev2_adam_batch_normalization_56_gamma_v_read_readvariableop=savev2_adam_batch_normalization_56_beta_v_read_readvariableop2savev2_adam_conv2d_85_kernel_v_read_readvariableop0savev2_adam_conv2d_85_bias_v_read_readvariableop>savev2_adam_batch_normalization_57_gamma_v_read_readvariableop=savev2_adam_batch_normalization_57_beta_v_read_readvariableop2savev2_adam_conv2d_86_kernel_v_read_readvariableop0savev2_adam_conv2d_86_bias_v_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *@
dtypes6
422	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@:@:@:@:@@:@:@:@:@:@:@?:?:
?Q?:?: : : : : : : : : :@:@:@:@:@@:@:@:@:@?:?:
?Q?:?:@:@:@:@:@@:@:@:@:@?:?:
?Q?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:&"
 
_output_shapes
:
?Q?:!

_output_shapes	
:?:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:  

_output_shapes
:@: !

_output_shapes
:@:-")
'
_output_shapes
:@?:!#

_output_shapes	
:?:&$"
 
_output_shapes
:
?Q?:!%

_output_shapes	
:?:,&(
&
_output_shapes
:@: '

_output_shapes
:@: (

_output_shapes
:@: )

_output_shapes
:@:,*(
&
_output_shapes
:@@: +

_output_shapes
:@: ,

_output_shapes
:@: -

_output_shapes
:@:-.)
'
_output_shapes
:@?:!/

_output_shapes	
:?:&0"
 
_output_shapes
:
?Q?:!1

_output_shapes	
:?:2

_output_shapes
: 
?c
?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858708

inputsB
(conv2d_84_conv2d_readvariableop_resource:@7
)conv2d_84_biasadd_readvariableop_resource:@<
.batch_normalization_56_readvariableop_resource:@>
0batch_normalization_56_readvariableop_1_resource:@M
?batch_normalization_56_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_56_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_85_conv2d_readvariableop_resource:@@7
)conv2d_85_biasadd_readvariableop_resource:@<
.batch_normalization_57_readvariableop_resource:@>
0batch_normalization_57_readvariableop_1_resource:@M
?batch_normalization_57_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_86_conv2d_readvariableop_resource:@?8
)conv2d_86_biasadd_readvariableop_resource:	?;
'dense_26_matmul_readvariableop_resource:
?Q?7
(dense_26_biasadd_readvariableop_resource:	?
identity??%batch_normalization_56/AssignNewValue?'batch_normalization_56/AssignNewValue_1?6batch_normalization_56/FusedBatchNormV3/ReadVariableOp?8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_56/ReadVariableOp?'batch_normalization_56/ReadVariableOp_1?%batch_normalization_57/AssignNewValue?'batch_normalization_57/AssignNewValue_1?6batch_normalization_57/FusedBatchNormV3/ReadVariableOp?8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_57/ReadVariableOp?'batch_normalization_57/ReadVariableOp_1? conv2d_84/BiasAdd/ReadVariableOp?conv2d_84/Conv2D/ReadVariableOp? conv2d_85/BiasAdd/ReadVariableOp?conv2d_85/Conv2D/ReadVariableOp? conv2d_86/BiasAdd/ReadVariableOp?conv2d_86/Conv2D/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?
conv2d_84/Conv2D/ReadVariableOpReadVariableOp(conv2d_84_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
conv2d_84/Conv2DConv2Dinputs'conv2d_84/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingSAME*
strides
?
 conv2d_84/BiasAdd/ReadVariableOpReadVariableOp)conv2d_84_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_84/BiasAddBiasAddconv2d_84/Conv2D:output:0(conv2d_84/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@l
conv2d_84/ReluReluconv2d_84/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@?
%batch_normalization_56/ReadVariableOpReadVariableOp.batch_normalization_56_readvariableop_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_56/ReadVariableOp_1ReadVariableOp0batch_normalization_56_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
6batch_normalization_56/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_56_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_56_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_56/FusedBatchNormV3FusedBatchNormV3conv2d_84/Relu:activations:0-batch_normalization_56/ReadVariableOp:value:0/batch_normalization_56/ReadVariableOp_1:value:0>batch_normalization_56/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????		@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
%batch_normalization_56/AssignNewValueAssignVariableOp?batch_normalization_56_fusedbatchnormv3_readvariableop_resource4batch_normalization_56/FusedBatchNormV3:batch_mean:07^batch_normalization_56/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
'batch_normalization_56/AssignNewValue_1AssignVariableOpAbatch_normalization_56_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_56/FusedBatchNormV3:batch_variance:09^batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
conv2d_85/Conv2D/ReadVariableOpReadVariableOp(conv2d_85_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_85/Conv2DConv2D+batch_normalization_56/FusedBatchNormV3:y:0'conv2d_85/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingSAME*
strides
?
 conv2d_85/BiasAdd/ReadVariableOpReadVariableOp)conv2d_85_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_85/BiasAddBiasAddconv2d_85/Conv2D:output:0(conv2d_85/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@l
conv2d_85/ReluReluconv2d_85/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@?
%batch_normalization_57/ReadVariableOpReadVariableOp.batch_normalization_57_readvariableop_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_57/ReadVariableOp_1ReadVariableOp0batch_normalization_57_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
6batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_57/FusedBatchNormV3FusedBatchNormV3conv2d_85/Relu:activations:0-batch_normalization_57/ReadVariableOp:value:0/batch_normalization_57/ReadVariableOp_1:value:0>batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????		@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
%batch_normalization_57/AssignNewValueAssignVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource4batch_normalization_57/FusedBatchNormV3:batch_mean:07^batch_normalization_57/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
'batch_normalization_57/AssignNewValue_1AssignVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_57/FusedBatchNormV3:batch_variance:09^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
conv2d_86/Conv2D/ReadVariableOpReadVariableOp(conv2d_86_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_86/Conv2DConv2D+batch_normalization_57/FusedBatchNormV3:y:0'conv2d_86/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????		?*
paddingSAME*
strides
?
 conv2d_86/BiasAdd/ReadVariableOpReadVariableOp)conv2d_86_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_86/BiasAddBiasAddconv2d_86/Conv2D:output:0(conv2d_86/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????		?m
conv2d_86/ReluReluconv2d_86/BiasAdd:output:0*
T0*0
_output_shapes
:?????????		?a
flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????(  ?
flatten_28/ReshapeReshapeconv2d_86/Relu:activations:0flatten_28/Const:output:0*
T0*(
_output_shapes
:??????????Q?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource* 
_output_shapes
:
?Q?*
dtype0?
dense_26/MatMulMatMulflatten_28/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Y
reshape_26/ShapeShapedense_26/BiasAdd:output:0*
T0*
_output_shapes
:h
reshape_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_26/strided_sliceStridedSlicereshape_26/Shape:output:0'reshape_26/strided_slice/stack:output:0)reshape_26/strided_slice/stack_1:output:0)reshape_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
reshape_26/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????\
reshape_26/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	?
reshape_26/Reshape/shapePack!reshape_26/strided_slice:output:0#reshape_26/Reshape/shape/1:output:0#reshape_26/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
reshape_26/ReshapeReshapedense_26/BiasAdd:output:0!reshape_26/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????Q	s
activation_26/SoftmaxSoftmaxreshape_26/Reshape:output:0*
T0*+
_output_shapes
:?????????Q	r
IdentityIdentityactivation_26/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:?????????Q	?
NoOpNoOp&^batch_normalization_56/AssignNewValue(^batch_normalization_56/AssignNewValue_17^batch_normalization_56/FusedBatchNormV3/ReadVariableOp9^batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_56/ReadVariableOp(^batch_normalization_56/ReadVariableOp_1&^batch_normalization_57/AssignNewValue(^batch_normalization_57/AssignNewValue_17^batch_normalization_57/FusedBatchNormV3/ReadVariableOp9^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_57/ReadVariableOp(^batch_normalization_57/ReadVariableOp_1!^conv2d_84/BiasAdd/ReadVariableOp ^conv2d_84/Conv2D/ReadVariableOp!^conv2d_85/BiasAdd/ReadVariableOp ^conv2d_85/Conv2D/ReadVariableOp!^conv2d_86/BiasAdd/ReadVariableOp ^conv2d_86/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????		: : : : : : : : : : : : : : : : 2N
%batch_normalization_56/AssignNewValue%batch_normalization_56/AssignNewValue2R
'batch_normalization_56/AssignNewValue_1'batch_normalization_56/AssignNewValue_12p
6batch_normalization_56/FusedBatchNormV3/ReadVariableOp6batch_normalization_56/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_18batch_normalization_56/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_56/ReadVariableOp%batch_normalization_56/ReadVariableOp2R
'batch_normalization_56/ReadVariableOp_1'batch_normalization_56/ReadVariableOp_12N
%batch_normalization_57/AssignNewValue%batch_normalization_57/AssignNewValue2R
'batch_normalization_57/AssignNewValue_1'batch_normalization_57/AssignNewValue_12p
6batch_normalization_57/FusedBatchNormV3/ReadVariableOp6batch_normalization_57/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_18batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_57/ReadVariableOp%batch_normalization_57/ReadVariableOp2R
'batch_normalization_57/ReadVariableOp_1'batch_normalization_57/ReadVariableOp_12D
 conv2d_84/BiasAdd/ReadVariableOp conv2d_84/BiasAdd/ReadVariableOp2B
conv2d_84/Conv2D/ReadVariableOpconv2d_84/Conv2D/ReadVariableOp2D
 conv2d_85/BiasAdd/ReadVariableOp conv2d_85/BiasAdd/ReadVariableOp2B
conv2d_85/Conv2D/ReadVariableOpconv2d_85/Conv2D/ReadVariableOp2D
 conv2d_86/BiasAdd/ReadVariableOp conv2d_86/BiasAdd/ReadVariableOp2B
conv2d_86/Conv2D/ReadVariableOpconv2d_86/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????		
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_857974

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
e
I__inference_activation_26_layer_call_and_return_conditional_losses_858950

inputs
identityP
SoftmaxSoftmaxinputs*
T0*+
_output_shapes
:?????????Q	]
IdentityIdentitySoftmax:softmax:0*
T0*+
_output_shapes
:?????????Q	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????Q	:S O
+
_output_shapes
:?????????Q	
 
_user_specified_nameinputs
?
?
E__inference_conv2d_85_layer_call_and_return_conditional_losses_858029

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????		@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????		@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????		@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????		@
 
_user_specified_nameinputs
?
?
.__inference_sequential_28_layer_call_fn_858357
conv2d_84_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:
?Q?

unknown_14:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_84_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_28_layer_call_and_return_conditional_losses_858285s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Q	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????		: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????		
)
_user_specified_nameconv2d_84_input
?
?
E__inference_conv2d_86_layer_call_and_return_conditional_losses_858055

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????		?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????		?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????		?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????		?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????		@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????		@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_857910

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
E__inference_conv2d_84_layer_call_and_return_conditional_losses_858003

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????		@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????		@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????		: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????		
 
_user_specified_nameinputs
?
?
*__inference_conv2d_84_layer_call_fn_858717

inputs!
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_84_layer_call_and_return_conditional_losses_858003w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????		@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????		: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????		
 
_user_specified_nameinputs
?
?
*__inference_conv2d_86_layer_call_fn_858881

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????		?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_86_layer_call_and_return_conditional_losses_858055x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????		?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????		@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????		@
 
_user_specified_nameinputs
?
b
F__inference_flatten_28_layer_call_and_return_conditional_losses_858067

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????(  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????QY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????Q"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????		?:X T
0
_output_shapes
:?????????		?
 
_user_specified_nameinputs
?
?
E__inference_conv2d_86_layer_call_and_return_conditional_losses_858892

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????		?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????		?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????		?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????		?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????		@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????		@
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_859277
file_prefix;
!assignvariableop_conv2d_84_kernel:@/
!assignvariableop_1_conv2d_84_bias:@=
/assignvariableop_2_batch_normalization_56_gamma:@<
.assignvariableop_3_batch_normalization_56_beta:@C
5assignvariableop_4_batch_normalization_56_moving_mean:@G
9assignvariableop_5_batch_normalization_56_moving_variance:@=
#assignvariableop_6_conv2d_85_kernel:@@/
!assignvariableop_7_conv2d_85_bias:@=
/assignvariableop_8_batch_normalization_57_gamma:@<
.assignvariableop_9_batch_normalization_57_beta:@D
6assignvariableop_10_batch_normalization_57_moving_mean:@H
:assignvariableop_11_batch_normalization_57_moving_variance:@?
$assignvariableop_12_conv2d_86_kernel:@?1
"assignvariableop_13_conv2d_86_bias:	?7
#assignvariableop_14_dense_26_kernel:
?Q?0
!assignvariableop_15_dense_26_bias:	?'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: #
assignvariableop_23_total: #
assignvariableop_24_count: E
+assignvariableop_25_adam_conv2d_84_kernel_m:@7
)assignvariableop_26_adam_conv2d_84_bias_m:@E
7assignvariableop_27_adam_batch_normalization_56_gamma_m:@D
6assignvariableop_28_adam_batch_normalization_56_beta_m:@E
+assignvariableop_29_adam_conv2d_85_kernel_m:@@7
)assignvariableop_30_adam_conv2d_85_bias_m:@E
7assignvariableop_31_adam_batch_normalization_57_gamma_m:@D
6assignvariableop_32_adam_batch_normalization_57_beta_m:@F
+assignvariableop_33_adam_conv2d_86_kernel_m:@?8
)assignvariableop_34_adam_conv2d_86_bias_m:	?>
*assignvariableop_35_adam_dense_26_kernel_m:
?Q?7
(assignvariableop_36_adam_dense_26_bias_m:	?E
+assignvariableop_37_adam_conv2d_84_kernel_v:@7
)assignvariableop_38_adam_conv2d_84_bias_v:@E
7assignvariableop_39_adam_batch_normalization_56_gamma_v:@D
6assignvariableop_40_adam_batch_normalization_56_beta_v:@E
+assignvariableop_41_adam_conv2d_85_kernel_v:@@7
)assignvariableop_42_adam_conv2d_85_bias_v:@E
7assignvariableop_43_adam_batch_normalization_57_gamma_v:@D
6assignvariableop_44_adam_batch_normalization_57_beta_v:@F
+assignvariableop_45_adam_conv2d_86_kernel_v:@?8
)assignvariableop_46_adam_conv2d_86_bias_v:	?>
*assignvariableop_47_adam_dense_26_kernel_v:
?Q?7
(assignvariableop_48_adam_dense_26_bias_v:	?
identity_50??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*?
value?B?2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_84_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_84_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_56_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_56_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_56_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_56_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_85_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_85_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_57_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_57_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_57_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_57_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_86_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_86_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_26_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_26_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_84_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_84_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp7assignvariableop_27_adam_batch_normalization_56_gamma_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_batch_normalization_56_beta_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_85_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_85_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp7assignvariableop_31_adam_batch_normalization_57_gamma_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_batch_normalization_57_beta_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_86_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_86_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_26_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_26_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_84_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_84_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp7assignvariableop_39_adam_batch_normalization_56_gamma_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_batch_normalization_56_beta_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_85_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_85_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp7assignvariableop_43_adam_batch_normalization_57_gamma_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_batch_normalization_57_beta_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_86_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_86_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_26_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_26_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?	
Identity_49Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_50IdentityIdentity_49:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_50Identity_50:output:0*w
_input_shapesf
d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482(
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
?U
?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858637

inputsB
(conv2d_84_conv2d_readvariableop_resource:@7
)conv2d_84_biasadd_readvariableop_resource:@<
.batch_normalization_56_readvariableop_resource:@>
0batch_normalization_56_readvariableop_1_resource:@M
?batch_normalization_56_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_56_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_85_conv2d_readvariableop_resource:@@7
)conv2d_85_biasadd_readvariableop_resource:@<
.batch_normalization_57_readvariableop_resource:@>
0batch_normalization_57_readvariableop_1_resource:@M
?batch_normalization_57_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_86_conv2d_readvariableop_resource:@?8
)conv2d_86_biasadd_readvariableop_resource:	?;
'dense_26_matmul_readvariableop_resource:
?Q?7
(dense_26_biasadd_readvariableop_resource:	?
identity??6batch_normalization_56/FusedBatchNormV3/ReadVariableOp?8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_56/ReadVariableOp?'batch_normalization_56/ReadVariableOp_1?6batch_normalization_57/FusedBatchNormV3/ReadVariableOp?8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_57/ReadVariableOp?'batch_normalization_57/ReadVariableOp_1? conv2d_84/BiasAdd/ReadVariableOp?conv2d_84/Conv2D/ReadVariableOp? conv2d_85/BiasAdd/ReadVariableOp?conv2d_85/Conv2D/ReadVariableOp? conv2d_86/BiasAdd/ReadVariableOp?conv2d_86/Conv2D/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?
conv2d_84/Conv2D/ReadVariableOpReadVariableOp(conv2d_84_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
conv2d_84/Conv2DConv2Dinputs'conv2d_84/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingSAME*
strides
?
 conv2d_84/BiasAdd/ReadVariableOpReadVariableOp)conv2d_84_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_84/BiasAddBiasAddconv2d_84/Conv2D:output:0(conv2d_84/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@l
conv2d_84/ReluReluconv2d_84/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@?
%batch_normalization_56/ReadVariableOpReadVariableOp.batch_normalization_56_readvariableop_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_56/ReadVariableOp_1ReadVariableOp0batch_normalization_56_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
6batch_normalization_56/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_56_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_56_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_56/FusedBatchNormV3FusedBatchNormV3conv2d_84/Relu:activations:0-batch_normalization_56/ReadVariableOp:value:0/batch_normalization_56/ReadVariableOp_1:value:0>batch_normalization_56/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????		@:@:@:@:@:*
epsilon%o?:*
is_training( ?
conv2d_85/Conv2D/ReadVariableOpReadVariableOp(conv2d_85_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_85/Conv2DConv2D+batch_normalization_56/FusedBatchNormV3:y:0'conv2d_85/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingSAME*
strides
?
 conv2d_85/BiasAdd/ReadVariableOpReadVariableOp)conv2d_85_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_85/BiasAddBiasAddconv2d_85/Conv2D:output:0(conv2d_85/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@l
conv2d_85/ReluReluconv2d_85/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@?
%batch_normalization_57/ReadVariableOpReadVariableOp.batch_normalization_57_readvariableop_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_57/ReadVariableOp_1ReadVariableOp0batch_normalization_57_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
6batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_57/FusedBatchNormV3FusedBatchNormV3conv2d_85/Relu:activations:0-batch_normalization_57/ReadVariableOp:value:0/batch_normalization_57/ReadVariableOp_1:value:0>batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????		@:@:@:@:@:*
epsilon%o?:*
is_training( ?
conv2d_86/Conv2D/ReadVariableOpReadVariableOp(conv2d_86_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_86/Conv2DConv2D+batch_normalization_57/FusedBatchNormV3:y:0'conv2d_86/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????		?*
paddingSAME*
strides
?
 conv2d_86/BiasAdd/ReadVariableOpReadVariableOp)conv2d_86_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_86/BiasAddBiasAddconv2d_86/Conv2D:output:0(conv2d_86/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????		?m
conv2d_86/ReluReluconv2d_86/BiasAdd:output:0*
T0*0
_output_shapes
:?????????		?a
flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????(  ?
flatten_28/ReshapeReshapeconv2d_86/Relu:activations:0flatten_28/Const:output:0*
T0*(
_output_shapes
:??????????Q?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource* 
_output_shapes
:
?Q?*
dtype0?
dense_26/MatMulMatMulflatten_28/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Y
reshape_26/ShapeShapedense_26/BiasAdd:output:0*
T0*
_output_shapes
:h
reshape_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape_26/strided_sliceStridedSlicereshape_26/Shape:output:0'reshape_26/strided_slice/stack:output:0)reshape_26/strided_slice/stack_1:output:0)reshape_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
reshape_26/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????\
reshape_26/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	?
reshape_26/Reshape/shapePack!reshape_26/strided_slice:output:0#reshape_26/Reshape/shape/1:output:0#reshape_26/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
reshape_26/ReshapeReshapedense_26/BiasAdd:output:0!reshape_26/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????Q	s
activation_26/SoftmaxSoftmaxreshape_26/Reshape:output:0*
T0*+
_output_shapes
:?????????Q	r
IdentityIdentityactivation_26/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:?????????Q	?
NoOpNoOp7^batch_normalization_56/FusedBatchNormV3/ReadVariableOp9^batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_56/ReadVariableOp(^batch_normalization_56/ReadVariableOp_17^batch_normalization_57/FusedBatchNormV3/ReadVariableOp9^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_57/ReadVariableOp(^batch_normalization_57/ReadVariableOp_1!^conv2d_84/BiasAdd/ReadVariableOp ^conv2d_84/Conv2D/ReadVariableOp!^conv2d_85/BiasAdd/ReadVariableOp ^conv2d_85/Conv2D/ReadVariableOp!^conv2d_86/BiasAdd/ReadVariableOp ^conv2d_86/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????		: : : : : : : : : : : : : : : : 2p
6batch_normalization_56/FusedBatchNormV3/ReadVariableOp6batch_normalization_56/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_56/FusedBatchNormV3/ReadVariableOp_18batch_normalization_56/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_56/ReadVariableOp%batch_normalization_56/ReadVariableOp2R
'batch_normalization_56/ReadVariableOp_1'batch_normalization_56/ReadVariableOp_12p
6batch_normalization_57/FusedBatchNormV3/ReadVariableOp6batch_normalization_57/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_18batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_57/ReadVariableOp%batch_normalization_57/ReadVariableOp2R
'batch_normalization_57/ReadVariableOp_1'batch_normalization_57/ReadVariableOp_12D
 conv2d_84/BiasAdd/ReadVariableOp conv2d_84/BiasAdd/ReadVariableOp2B
conv2d_84/Conv2D/ReadVariableOpconv2d_84/Conv2D/ReadVariableOp2D
 conv2d_85/BiasAdd/ReadVariableOp conv2d_85/BiasAdd/ReadVariableOp2B
conv2d_85/Conv2D/ReadVariableOpconv2d_85/Conv2D/ReadVariableOp2D
 conv2d_86/BiasAdd/ReadVariableOp conv2d_86/BiasAdd/ReadVariableOp2B
conv2d_86/Conv2D/ReadVariableOpconv2d_86/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????		
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_858790

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
E__inference_conv2d_85_layer_call_and_return_conditional_losses_858810

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????		@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????		@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????		@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????		@
 
_user_specified_nameinputs
?
e
I__inference_activation_26_layer_call_and_return_conditional_losses_858105

inputs
identityP
SoftmaxSoftmaxinputs*
T0*+
_output_shapes
:?????????Q	]
IdentityIdentitySoftmax:softmax:0*
T0*+
_output_shapes
:?????????Q	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????Q	:S O
+
_output_shapes
:?????????Q	
 
_user_specified_nameinputs
?
b
F__inference_flatten_28_layer_call_and_return_conditional_losses_858903

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????(  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????QY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????Q"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????		?:X T
0
_output_shapes
:?????????		?
 
_user_specified_nameinputs
?h
?
!__inference__wrapped_model_857857
conv2d_84_inputP
6sequential_28_conv2d_84_conv2d_readvariableop_resource:@E
7sequential_28_conv2d_84_biasadd_readvariableop_resource:@J
<sequential_28_batch_normalization_56_readvariableop_resource:@L
>sequential_28_batch_normalization_56_readvariableop_1_resource:@[
Msequential_28_batch_normalization_56_fusedbatchnormv3_readvariableop_resource:@]
Osequential_28_batch_normalization_56_fusedbatchnormv3_readvariableop_1_resource:@P
6sequential_28_conv2d_85_conv2d_readvariableop_resource:@@E
7sequential_28_conv2d_85_biasadd_readvariableop_resource:@J
<sequential_28_batch_normalization_57_readvariableop_resource:@L
>sequential_28_batch_normalization_57_readvariableop_1_resource:@[
Msequential_28_batch_normalization_57_fusedbatchnormv3_readvariableop_resource:@]
Osequential_28_batch_normalization_57_fusedbatchnormv3_readvariableop_1_resource:@Q
6sequential_28_conv2d_86_conv2d_readvariableop_resource:@?F
7sequential_28_conv2d_86_biasadd_readvariableop_resource:	?I
5sequential_28_dense_26_matmul_readvariableop_resource:
?Q?E
6sequential_28_dense_26_biasadd_readvariableop_resource:	?
identity??Dsequential_28/batch_normalization_56/FusedBatchNormV3/ReadVariableOp?Fsequential_28/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1?3sequential_28/batch_normalization_56/ReadVariableOp?5sequential_28/batch_normalization_56/ReadVariableOp_1?Dsequential_28/batch_normalization_57/FusedBatchNormV3/ReadVariableOp?Fsequential_28/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1?3sequential_28/batch_normalization_57/ReadVariableOp?5sequential_28/batch_normalization_57/ReadVariableOp_1?.sequential_28/conv2d_84/BiasAdd/ReadVariableOp?-sequential_28/conv2d_84/Conv2D/ReadVariableOp?.sequential_28/conv2d_85/BiasAdd/ReadVariableOp?-sequential_28/conv2d_85/Conv2D/ReadVariableOp?.sequential_28/conv2d_86/BiasAdd/ReadVariableOp?-sequential_28/conv2d_86/Conv2D/ReadVariableOp?-sequential_28/dense_26/BiasAdd/ReadVariableOp?,sequential_28/dense_26/MatMul/ReadVariableOp?
-sequential_28/conv2d_84/Conv2D/ReadVariableOpReadVariableOp6sequential_28_conv2d_84_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
sequential_28/conv2d_84/Conv2DConv2Dconv2d_84_input5sequential_28/conv2d_84/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingSAME*
strides
?
.sequential_28/conv2d_84/BiasAdd/ReadVariableOpReadVariableOp7sequential_28_conv2d_84_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_28/conv2d_84/BiasAddBiasAdd'sequential_28/conv2d_84/Conv2D:output:06sequential_28/conv2d_84/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@?
sequential_28/conv2d_84/ReluRelu(sequential_28/conv2d_84/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@?
3sequential_28/batch_normalization_56/ReadVariableOpReadVariableOp<sequential_28_batch_normalization_56_readvariableop_resource*
_output_shapes
:@*
dtype0?
5sequential_28/batch_normalization_56/ReadVariableOp_1ReadVariableOp>sequential_28_batch_normalization_56_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
Dsequential_28/batch_normalization_56/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_28_batch_normalization_56_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
Fsequential_28/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_28_batch_normalization_56_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
5sequential_28/batch_normalization_56/FusedBatchNormV3FusedBatchNormV3*sequential_28/conv2d_84/Relu:activations:0;sequential_28/batch_normalization_56/ReadVariableOp:value:0=sequential_28/batch_normalization_56/ReadVariableOp_1:value:0Lsequential_28/batch_normalization_56/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_28/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????		@:@:@:@:@:*
epsilon%o?:*
is_training( ?
-sequential_28/conv2d_85/Conv2D/ReadVariableOpReadVariableOp6sequential_28_conv2d_85_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
sequential_28/conv2d_85/Conv2DConv2D9sequential_28/batch_normalization_56/FusedBatchNormV3:y:05sequential_28/conv2d_85/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingSAME*
strides
?
.sequential_28/conv2d_85/BiasAdd/ReadVariableOpReadVariableOp7sequential_28_conv2d_85_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_28/conv2d_85/BiasAddBiasAdd'sequential_28/conv2d_85/Conv2D:output:06sequential_28/conv2d_85/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@?
sequential_28/conv2d_85/ReluRelu(sequential_28/conv2d_85/BiasAdd:output:0*
T0*/
_output_shapes
:?????????		@?
3sequential_28/batch_normalization_57/ReadVariableOpReadVariableOp<sequential_28_batch_normalization_57_readvariableop_resource*
_output_shapes
:@*
dtype0?
5sequential_28/batch_normalization_57/ReadVariableOp_1ReadVariableOp>sequential_28_batch_normalization_57_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
Dsequential_28/batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_28_batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
Fsequential_28/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_28_batch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
5sequential_28/batch_normalization_57/FusedBatchNormV3FusedBatchNormV3*sequential_28/conv2d_85/Relu:activations:0;sequential_28/batch_normalization_57/ReadVariableOp:value:0=sequential_28/batch_normalization_57/ReadVariableOp_1:value:0Lsequential_28/batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_28/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????		@:@:@:@:@:*
epsilon%o?:*
is_training( ?
-sequential_28/conv2d_86/Conv2D/ReadVariableOpReadVariableOp6sequential_28_conv2d_86_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
sequential_28/conv2d_86/Conv2DConv2D9sequential_28/batch_normalization_57/FusedBatchNormV3:y:05sequential_28/conv2d_86/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????		?*
paddingSAME*
strides
?
.sequential_28/conv2d_86/BiasAdd/ReadVariableOpReadVariableOp7sequential_28_conv2d_86_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_28/conv2d_86/BiasAddBiasAdd'sequential_28/conv2d_86/Conv2D:output:06sequential_28/conv2d_86/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????		??
sequential_28/conv2d_86/ReluRelu(sequential_28/conv2d_86/BiasAdd:output:0*
T0*0
_output_shapes
:?????????		?o
sequential_28/flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????(  ?
 sequential_28/flatten_28/ReshapeReshape*sequential_28/conv2d_86/Relu:activations:0'sequential_28/flatten_28/Const:output:0*
T0*(
_output_shapes
:??????????Q?
,sequential_28/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_28_dense_26_matmul_readvariableop_resource* 
_output_shapes
:
?Q?*
dtype0?
sequential_28/dense_26/MatMulMatMul)sequential_28/flatten_28/Reshape:output:04sequential_28/dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-sequential_28/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_28_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_28/dense_26/BiasAddBiasAdd'sequential_28/dense_26/MatMul:product:05sequential_28/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????u
sequential_28/reshape_26/ShapeShape'sequential_28/dense_26/BiasAdd:output:0*
T0*
_output_shapes
:v
,sequential_28/reshape_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_28/reshape_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_28/reshape_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_28/reshape_26/strided_sliceStridedSlice'sequential_28/reshape_26/Shape:output:05sequential_28/reshape_26/strided_slice/stack:output:07sequential_28/reshape_26/strided_slice/stack_1:output:07sequential_28/reshape_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(sequential_28/reshape_26/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????j
(sequential_28/reshape_26/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	?
&sequential_28/reshape_26/Reshape/shapePack/sequential_28/reshape_26/strided_slice:output:01sequential_28/reshape_26/Reshape/shape/1:output:01sequential_28/reshape_26/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:?
 sequential_28/reshape_26/ReshapeReshape'sequential_28/dense_26/BiasAdd:output:0/sequential_28/reshape_26/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????Q	?
#sequential_28/activation_26/SoftmaxSoftmax)sequential_28/reshape_26/Reshape:output:0*
T0*+
_output_shapes
:?????????Q	?
IdentityIdentity-sequential_28/activation_26/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:?????????Q	?
NoOpNoOpE^sequential_28/batch_normalization_56/FusedBatchNormV3/ReadVariableOpG^sequential_28/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_14^sequential_28/batch_normalization_56/ReadVariableOp6^sequential_28/batch_normalization_56/ReadVariableOp_1E^sequential_28/batch_normalization_57/FusedBatchNormV3/ReadVariableOpG^sequential_28/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_14^sequential_28/batch_normalization_57/ReadVariableOp6^sequential_28/batch_normalization_57/ReadVariableOp_1/^sequential_28/conv2d_84/BiasAdd/ReadVariableOp.^sequential_28/conv2d_84/Conv2D/ReadVariableOp/^sequential_28/conv2d_85/BiasAdd/ReadVariableOp.^sequential_28/conv2d_85/Conv2D/ReadVariableOp/^sequential_28/conv2d_86/BiasAdd/ReadVariableOp.^sequential_28/conv2d_86/Conv2D/ReadVariableOp.^sequential_28/dense_26/BiasAdd/ReadVariableOp-^sequential_28/dense_26/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????		: : : : : : : : : : : : : : : : 2?
Dsequential_28/batch_normalization_56/FusedBatchNormV3/ReadVariableOpDsequential_28/batch_normalization_56/FusedBatchNormV3/ReadVariableOp2?
Fsequential_28/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1Fsequential_28/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_12j
3sequential_28/batch_normalization_56/ReadVariableOp3sequential_28/batch_normalization_56/ReadVariableOp2n
5sequential_28/batch_normalization_56/ReadVariableOp_15sequential_28/batch_normalization_56/ReadVariableOp_12?
Dsequential_28/batch_normalization_57/FusedBatchNormV3/ReadVariableOpDsequential_28/batch_normalization_57/FusedBatchNormV3/ReadVariableOp2?
Fsequential_28/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1Fsequential_28/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12j
3sequential_28/batch_normalization_57/ReadVariableOp3sequential_28/batch_normalization_57/ReadVariableOp2n
5sequential_28/batch_normalization_57/ReadVariableOp_15sequential_28/batch_normalization_57/ReadVariableOp_12`
.sequential_28/conv2d_84/BiasAdd/ReadVariableOp.sequential_28/conv2d_84/BiasAdd/ReadVariableOp2^
-sequential_28/conv2d_84/Conv2D/ReadVariableOp-sequential_28/conv2d_84/Conv2D/ReadVariableOp2`
.sequential_28/conv2d_85/BiasAdd/ReadVariableOp.sequential_28/conv2d_85/BiasAdd/ReadVariableOp2^
-sequential_28/conv2d_85/Conv2D/ReadVariableOp-sequential_28/conv2d_85/Conv2D/ReadVariableOp2`
.sequential_28/conv2d_86/BiasAdd/ReadVariableOp.sequential_28/conv2d_86/BiasAdd/ReadVariableOp2^
-sequential_28/conv2d_86/Conv2D/ReadVariableOp-sequential_28/conv2d_86/Conv2D/ReadVariableOp2^
-sequential_28/dense_26/BiasAdd/ReadVariableOp-sequential_28/dense_26/BiasAdd/ReadVariableOp2\
,sequential_28/dense_26/MatMul/ReadVariableOp,sequential_28/dense_26/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????		
)
_user_specified_nameconv2d_84_input
?
?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_857879

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_56_layer_call_fn_858754

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_857910?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
.__inference_sequential_28_layer_call_fn_858529

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:
?Q?

unknown_14:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_28_layer_call_and_return_conditional_losses_858108s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Q	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????		: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????		
 
_user_specified_nameinputs
?
J
.__inference_activation_26_layer_call_fn_858945

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_26_layer_call_and_return_conditional_losses_858105d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????Q	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????Q	:S O
+
_output_shapes
:?????????Q	
 
_user_specified_nameinputs
?
?
.__inference_sequential_28_layer_call_fn_858566

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:
?Q?

unknown_14:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_28_layer_call_and_return_conditional_losses_858285s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Q	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????		: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????		
 
_user_specified_nameinputs
?

b
F__inference_reshape_26_layer_call_and_return_conditional_losses_858098

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????Q	\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????Q	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?.
?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858447
conv2d_84_input*
conv2d_84_858405:@
conv2d_84_858407:@+
batch_normalization_56_858410:@+
batch_normalization_56_858412:@+
batch_normalization_56_858414:@+
batch_normalization_56_858416:@*
conv2d_85_858419:@@
conv2d_85_858421:@+
batch_normalization_57_858424:@+
batch_normalization_57_858426:@+
batch_normalization_57_858428:@+
batch_normalization_57_858430:@+
conv2d_86_858433:@?
conv2d_86_858435:	?#
dense_26_858439:
?Q?
dense_26_858441:	?
identity??.batch_normalization_56/StatefulPartitionedCall?.batch_normalization_57/StatefulPartitionedCall?!conv2d_84/StatefulPartitionedCall?!conv2d_85/StatefulPartitionedCall?!conv2d_86/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?
!conv2d_84/StatefulPartitionedCallStatefulPartitionedCallconv2d_84_inputconv2d_84_858405conv2d_84_858407*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_84_layer_call_and_return_conditional_losses_858003?
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall*conv2d_84/StatefulPartitionedCall:output:0batch_normalization_56_858410batch_normalization_56_858412batch_normalization_56_858414batch_normalization_56_858416*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_857910?
!conv2d_85/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0conv2d_85_858419conv2d_85_858421*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_85_layer_call_and_return_conditional_losses_858029?
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_85/StatefulPartitionedCall:output:0batch_normalization_57_858424batch_normalization_57_858426batch_normalization_57_858428batch_normalization_57_858430*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_857974?
!conv2d_86/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0conv2d_86_858433conv2d_86_858435*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????		?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_86_layer_call_and_return_conditional_losses_858055?
flatten_28/PartitionedCallPartitionedCall*conv2d_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_28_layer_call_and_return_conditional_losses_858067?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_26_858439dense_26_858441*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_858079?
reshape_26/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_26_layer_call_and_return_conditional_losses_858098?
activation_26/PartitionedCallPartitionedCall#reshape_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_26_layer_call_and_return_conditional_losses_858105y
IdentityIdentity&activation_26/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Q	?
NoOpNoOp/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall"^conv2d_84/StatefulPartitionedCall"^conv2d_85/StatefulPartitionedCall"^conv2d_86/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????		: : : : : : : : : : : : : : : : 2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2F
!conv2d_84/StatefulPartitionedCall!conv2d_84/StatefulPartitionedCall2F
!conv2d_85/StatefulPartitionedCall!conv2d_85/StatefulPartitionedCall2F
!conv2d_86/StatefulPartitionedCall!conv2d_86/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:` \
/
_output_shapes
:?????????		
)
_user_specified_nameconv2d_84_input
?
?
E__inference_conv2d_84_layer_call_and_return_conditional_losses_858728

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????		@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????		@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????		@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????		: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????		
 
_user_specified_nameinputs
?.
?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858285

inputs*
conv2d_84_858243:@
conv2d_84_858245:@+
batch_normalization_56_858248:@+
batch_normalization_56_858250:@+
batch_normalization_56_858252:@+
batch_normalization_56_858254:@*
conv2d_85_858257:@@
conv2d_85_858259:@+
batch_normalization_57_858262:@+
batch_normalization_57_858264:@+
batch_normalization_57_858266:@+
batch_normalization_57_858268:@+
conv2d_86_858271:@?
conv2d_86_858273:	?#
dense_26_858277:
?Q?
dense_26_858279:	?
identity??.batch_normalization_56/StatefulPartitionedCall?.batch_normalization_57/StatefulPartitionedCall?!conv2d_84/StatefulPartitionedCall?!conv2d_85/StatefulPartitionedCall?!conv2d_86/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?
!conv2d_84/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_84_858243conv2d_84_858245*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_84_layer_call_and_return_conditional_losses_858003?
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall*conv2d_84/StatefulPartitionedCall:output:0batch_normalization_56_858248batch_normalization_56_858250batch_normalization_56_858252batch_normalization_56_858254*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_857910?
!conv2d_85/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0conv2d_85_858257conv2d_85_858259*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_85_layer_call_and_return_conditional_losses_858029?
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_85/StatefulPartitionedCall:output:0batch_normalization_57_858262batch_normalization_57_858264batch_normalization_57_858266batch_normalization_57_858268*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_857974?
!conv2d_86/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0conv2d_86_858271conv2d_86_858273*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????		?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_86_layer_call_and_return_conditional_losses_858055?
flatten_28/PartitionedCallPartitionedCall*conv2d_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_28_layer_call_and_return_conditional_losses_858067?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_26_858277dense_26_858279*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_858079?
reshape_26/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_26_layer_call_and_return_conditional_losses_858098?
activation_26/PartitionedCallPartitionedCall#reshape_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_26_layer_call_and_return_conditional_losses_858105y
IdentityIdentity&activation_26/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Q	?
NoOpNoOp/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall"^conv2d_84/StatefulPartitionedCall"^conv2d_85/StatefulPartitionedCall"^conv2d_86/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????		: : : : : : : : : : : : : : : : 2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2F
!conv2d_84/StatefulPartitionedCall!conv2d_84/StatefulPartitionedCall2F
!conv2d_85/StatefulPartitionedCall!conv2d_85/StatefulPartitionedCall2F
!conv2d_86/StatefulPartitionedCall!conv2d_86/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:W S
/
_output_shapes
:?????????		
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_56_layer_call_fn_858741

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_857879?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
G
+__inference_flatten_28_layer_call_fn_858897

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_28_layer_call_and_return_conditional_losses_858067a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????Q"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????		?:X T
0
_output_shapes
:?????????		?
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_858492
conv2d_84_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:
?Q?

unknown_14:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_84_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_857857s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Q	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????		: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????		
)
_user_specified_nameconv2d_84_input
?
?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_857943

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?.
?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858108

inputs*
conv2d_84_858004:@
conv2d_84_858006:@+
batch_normalization_56_858009:@+
batch_normalization_56_858011:@+
batch_normalization_56_858013:@+
batch_normalization_56_858015:@*
conv2d_85_858030:@@
conv2d_85_858032:@+
batch_normalization_57_858035:@+
batch_normalization_57_858037:@+
batch_normalization_57_858039:@+
batch_normalization_57_858041:@+
conv2d_86_858056:@?
conv2d_86_858058:	?#
dense_26_858080:
?Q?
dense_26_858082:	?
identity??.batch_normalization_56/StatefulPartitionedCall?.batch_normalization_57/StatefulPartitionedCall?!conv2d_84/StatefulPartitionedCall?!conv2d_85/StatefulPartitionedCall?!conv2d_86/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?
!conv2d_84/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_84_858004conv2d_84_858006*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_84_layer_call_and_return_conditional_losses_858003?
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall*conv2d_84/StatefulPartitionedCall:output:0batch_normalization_56_858009batch_normalization_56_858011batch_normalization_56_858013batch_normalization_56_858015*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_857879?
!conv2d_85/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0conv2d_85_858030conv2d_85_858032*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_85_layer_call_and_return_conditional_losses_858029?
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_85/StatefulPartitionedCall:output:0batch_normalization_57_858035batch_normalization_57_858037batch_normalization_57_858039batch_normalization_57_858041*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_857943?
!conv2d_86/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0conv2d_86_858056conv2d_86_858058*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????		?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_86_layer_call_and_return_conditional_losses_858055?
flatten_28/PartitionedCallPartitionedCall*conv2d_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_28_layer_call_and_return_conditional_losses_858067?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_26_858080dense_26_858082*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_858079?
reshape_26/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_26_layer_call_and_return_conditional_losses_858098?
activation_26/PartitionedCallPartitionedCall#reshape_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_26_layer_call_and_return_conditional_losses_858105y
IdentityIdentity&activation_26/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Q	?
NoOpNoOp/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall"^conv2d_84/StatefulPartitionedCall"^conv2d_85/StatefulPartitionedCall"^conv2d_86/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????		: : : : : : : : : : : : : : : : 2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2F
!conv2d_84/StatefulPartitionedCall!conv2d_84/StatefulPartitionedCall2F
!conv2d_85/StatefulPartitionedCall!conv2d_85/StatefulPartitionedCall2F
!conv2d_86/StatefulPartitionedCall!conv2d_86/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:W S
/
_output_shapes
:?????????		
 
_user_specified_nameinputs
?
?
)__inference_dense_26_layer_call_fn_858912

inputs
unknown:
?Q?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_858079p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????Q: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????Q
 
_user_specified_nameinputs
?	
?
D__inference_dense_26_layer_call_and_return_conditional_losses_858922

inputs2
matmul_readvariableop_resource:
?Q?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?Q?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????Q
 
_user_specified_nameinputs
?

b
F__inference_reshape_26_layer_call_and_return_conditional_losses_858940

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
?????????Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :	?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:?????????Q	\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:?????????Q	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_57_layer_call_fn_858823

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_857943?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
G
+__inference_reshape_26_layer_call_fn_858927

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_26_layer_call_and_return_conditional_losses_858098d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????Q	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?/
?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858402
conv2d_84_input*
conv2d_84_858360:@
conv2d_84_858362:@+
batch_normalization_56_858365:@+
batch_normalization_56_858367:@+
batch_normalization_56_858369:@+
batch_normalization_56_858371:@*
conv2d_85_858374:@@
conv2d_85_858376:@+
batch_normalization_57_858379:@+
batch_normalization_57_858381:@+
batch_normalization_57_858383:@+
batch_normalization_57_858385:@+
conv2d_86_858388:@?
conv2d_86_858390:	?#
dense_26_858394:
?Q?
dense_26_858396:	?
identity??.batch_normalization_56/StatefulPartitionedCall?.batch_normalization_57/StatefulPartitionedCall?!conv2d_84/StatefulPartitionedCall?!conv2d_85/StatefulPartitionedCall?!conv2d_86/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?
!conv2d_84/StatefulPartitionedCallStatefulPartitionedCallconv2d_84_inputconv2d_84_858360conv2d_84_858362*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_84_layer_call_and_return_conditional_losses_858003?
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall*conv2d_84/StatefulPartitionedCall:output:0batch_normalization_56_858365batch_normalization_56_858367batch_normalization_56_858369batch_normalization_56_858371*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_857879?
!conv2d_85/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0conv2d_85_858374conv2d_85_858376*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_85_layer_call_and_return_conditional_losses_858029?
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_85/StatefulPartitionedCall:output:0batch_normalization_57_858379batch_normalization_57_858381batch_normalization_57_858383batch_normalization_57_858385*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????		@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_857943?
!conv2d_86/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0conv2d_86_858388conv2d_86_858390*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????		?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_86_layer_call_and_return_conditional_losses_858055?
flatten_28/PartitionedCallPartitionedCall*conv2d_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_28_layer_call_and_return_conditional_losses_858067?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_26_858394dense_26_858396*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_858079?
reshape_26/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_26_layer_call_and_return_conditional_losses_858098?
activation_26/PartitionedCallPartitionedCall#reshape_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_26_layer_call_and_return_conditional_losses_858105y
IdentityIdentity&activation_26/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Q	?
NoOpNoOp/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall"^conv2d_84/StatefulPartitionedCall"^conv2d_85/StatefulPartitionedCall"^conv2d_86/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????		: : : : : : : : : : : : : : : : 2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2F
!conv2d_84/StatefulPartitionedCall!conv2d_84/StatefulPartitionedCall2F
!conv2d_85/StatefulPartitionedCall!conv2d_85/StatefulPartitionedCall2F
!conv2d_86/StatefulPartitionedCall!conv2d_86/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:` \
/
_output_shapes
:?????????		
)
_user_specified_nameconv2d_84_input
?	
?
7__inference_batch_normalization_57_layer_call_fn_858836

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_857974?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
.__inference_sequential_28_layer_call_fn_858143
conv2d_84_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:
?Q?

unknown_14:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_84_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????Q	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_28_layer_call_and_return_conditional_losses_858108s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????Q	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????		: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????		
)
_user_specified_nameconv2d_84_input
?	
?
D__inference_dense_26_layer_call_and_return_conditional_losses_858079

inputs2
matmul_readvariableop_resource:
?Q?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?Q?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????Q
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_858872

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_858772

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv2d_84_input@
!serving_default_conv2d_84_input:0?????????		E
activation_264
StatefulPartitionedCall:0?????????Q	tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer-5
layer_with_weights-5
layer-6
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"axis
	#gamma
$beta
%moving_mean
&moving_variance"
_tf_keras_layer
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op"
_tf_keras_layer
?
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6axis
	7gamma
8beta
9moving_mean
:moving_variance"
_tf_keras_layer
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias
 C_jit_compiled_convolution_op"
_tf_keras_layer
?
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
?
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias"
_tf_keras_layer
?
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
?
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
?
0
1
#2
$3
%4
&5
-6
.7
78
89
910
:11
A12
B13
P14
Q15"
trackable_list_wrapper
v
0
1
#2
$3
-4
.5
76
87
A8
B9
P10
Q11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
ctrace_0
dtrace_1
etrace_2
ftrace_32?
.__inference_sequential_28_layer_call_fn_858143
.__inference_sequential_28_layer_call_fn_858529
.__inference_sequential_28_layer_call_fn_858566
.__inference_sequential_28_layer_call_fn_858357?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zctrace_0zdtrace_1zetrace_2zftrace_3
?
gtrace_0
htrace_1
itrace_2
jtrace_32?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858637
I__inference_sequential_28_layer_call_and_return_conditional_losses_858708
I__inference_sequential_28_layer_call_and_return_conditional_losses_858402
I__inference_sequential_28_layer_call_and_return_conditional_losses_858447?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zgtrace_0zhtrace_1zitrace_2zjtrace_3
?B?
!__inference__wrapped_model_857857conv2d_84_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
kiter

lbeta_1

mbeta_2
	ndecay
olearning_ratem?m?#m?$m?-m?.m?7m?8m?Am?Bm?Pm?Qm?v?v?#v?$v?-v?.v?7v?8v?Av?Bv?Pv?Qv?"
	optimizer
,
pserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
vtrace_02?
*__inference_conv2d_84_layer_call_fn_858717?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zvtrace_0
?
wtrace_02?
E__inference_conv2d_84_layer_call_and_return_conditional_losses_858728?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zwtrace_0
*:(@2conv2d_84/kernel
:@2conv2d_84/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
<
#0
$1
%2
&3"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
?
}trace_0
~trace_12?
7__inference_batch_normalization_56_layer_call_fn_858741
7__inference_batch_normalization_56_layer_call_fn_858754?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z}trace_0z~trace_1
?
trace_0
?trace_12?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_858772
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_858790?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ztrace_0z?trace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_56/gamma
):'@2batch_normalization_56/beta
2:0@ (2"batch_normalization_56/moving_mean
6:4@ (2&batch_normalization_56/moving_variance
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
*__inference_conv2d_85_layer_call_fn_858799?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
E__inference_conv2d_85_layer_call_and_return_conditional_losses_858810?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
*:(@@2conv2d_85/kernel
:@2conv2d_85/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
<
70
81
92
:3"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
7__inference_batch_normalization_57_layer_call_fn_858823
7__inference_batch_normalization_57_layer_call_fn_858836?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_858854
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_858872?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_57/gamma
):'@2batch_normalization_57/beta
2:0@ (2"batch_normalization_57/moving_mean
6:4@ (2&batch_normalization_57/moving_variance
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
*__inference_conv2d_86_layer_call_fn_858881?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
E__inference_conv2d_86_layer_call_and_return_conditional_losses_858892?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
+:)@?2conv2d_86/kernel
:?2conv2d_86/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
+__inference_flatten_28_layer_call_fn_858897?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
F__inference_flatten_28_layer_call_and_return_conditional_losses_858903?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_26_layer_call_fn_858912?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_dense_26_layer_call_and_return_conditional_losses_858922?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
#:!
?Q?2dense_26/kernel
:?2dense_26/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
+__inference_reshape_26_layer_call_fn_858927?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
F__inference_reshape_26_layer_call_and_return_conditional_losses_858940?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
.__inference_activation_26_layer_call_fn_858945?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
I__inference_activation_26_layer_call_and_return_conditional_losses_858950?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
<
%0
&1
92
:3"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_sequential_28_layer_call_fn_858143conv2d_84_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
.__inference_sequential_28_layer_call_fn_858529inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
.__inference_sequential_28_layer_call_fn_858566inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
.__inference_sequential_28_layer_call_fn_858357conv2d_84_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858637inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858708inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858402conv2d_84_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858447conv2d_84_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?B?
$__inference_signature_wrapper_858492conv2d_84_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
*__inference_conv2d_84_layer_call_fn_858717inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_conv2d_84_layer_call_and_return_conditional_losses_858728inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
7__inference_batch_normalization_56_layer_call_fn_858741inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
7__inference_batch_normalization_56_layer_call_fn_858754inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_858772inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_858790inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
*__inference_conv2d_85_layer_call_fn_858799inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_conv2d_85_layer_call_and_return_conditional_losses_858810inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
7__inference_batch_normalization_57_layer_call_fn_858823inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
7__inference_batch_normalization_57_layer_call_fn_858836inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_858854inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_858872inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
*__inference_conv2d_86_layer_call_fn_858881inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_conv2d_86_layer_call_and_return_conditional_losses_858892inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
+__inference_flatten_28_layer_call_fn_858897inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
F__inference_flatten_28_layer_call_and_return_conditional_losses_858903inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
)__inference_dense_26_layer_call_fn_858912inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_26_layer_call_and_return_conditional_losses_858922inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
+__inference_reshape_26_layer_call_fn_858927inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
F__inference_reshape_26_layer_call_and_return_conditional_losses_858940inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
.__inference_activation_26_layer_call_fn_858945inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_activation_26_layer_call_and_return_conditional_losses_858950inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
c
?	variables
?	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/:-@2Adam/conv2d_84/kernel/m
!:@2Adam/conv2d_84/bias/m
/:-@2#Adam/batch_normalization_56/gamma/m
.:,@2"Adam/batch_normalization_56/beta/m
/:-@@2Adam/conv2d_85/kernel/m
!:@2Adam/conv2d_85/bias/m
/:-@2#Adam/batch_normalization_57/gamma/m
.:,@2"Adam/batch_normalization_57/beta/m
0:.@?2Adam/conv2d_86/kernel/m
": ?2Adam/conv2d_86/bias/m
(:&
?Q?2Adam/dense_26/kernel/m
!:?2Adam/dense_26/bias/m
/:-@2Adam/conv2d_84/kernel/v
!:@2Adam/conv2d_84/bias/v
/:-@2#Adam/batch_normalization_56/gamma/v
.:,@2"Adam/batch_normalization_56/beta/v
/:-@@2Adam/conv2d_85/kernel/v
!:@2Adam/conv2d_85/bias/v
/:-@2#Adam/batch_normalization_57/gamma/v
.:,@2"Adam/batch_normalization_57/beta/v
0:.@?2Adam/conv2d_86/kernel/v
": ?2Adam/conv2d_86/bias/v
(:&
?Q?2Adam/dense_26/kernel/v
!:?2Adam/dense_26/bias/v?
!__inference__wrapped_model_857857?#$%&-.789:ABPQ@?=
6?3
1?.
conv2d_84_input?????????		
? "A?>
<
activation_26+?(
activation_26?????????Q	?
I__inference_activation_26_layer_call_and_return_conditional_losses_858950`3?0
)?&
$?!
inputs?????????Q	
? ")?&
?
0?????????Q	
? ?
.__inference_activation_26_layer_call_fn_858945S3?0
)?&
$?!
inputs?????????Q	
? "??????????Q	?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_858772?#$%&M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_56_layer_call_and_return_conditional_losses_858790?#$%&M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
7__inference_batch_normalization_56_layer_call_fn_858741?#$%&M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
7__inference_batch_normalization_56_layer_call_fn_858754?#$%&M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_858854?789:M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_858872?789:M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
7__inference_batch_normalization_57_layer_call_fn_858823?789:M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
7__inference_batch_normalization_57_layer_call_fn_858836?789:M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
E__inference_conv2d_84_layer_call_and_return_conditional_losses_858728l7?4
-?*
(?%
inputs?????????		
? "-?*
#? 
0?????????		@
? ?
*__inference_conv2d_84_layer_call_fn_858717_7?4
-?*
(?%
inputs?????????		
? " ??????????		@?
E__inference_conv2d_85_layer_call_and_return_conditional_losses_858810l-.7?4
-?*
(?%
inputs?????????		@
? "-?*
#? 
0?????????		@
? ?
*__inference_conv2d_85_layer_call_fn_858799_-.7?4
-?*
(?%
inputs?????????		@
? " ??????????		@?
E__inference_conv2d_86_layer_call_and_return_conditional_losses_858892mAB7?4
-?*
(?%
inputs?????????		@
? ".?+
$?!
0?????????		?
? ?
*__inference_conv2d_86_layer_call_fn_858881`AB7?4
-?*
(?%
inputs?????????		@
? "!??????????		??
D__inference_dense_26_layer_call_and_return_conditional_losses_858922^PQ0?-
&?#
!?
inputs??????????Q
? "&?#
?
0??????????
? ~
)__inference_dense_26_layer_call_fn_858912QPQ0?-
&?#
!?
inputs??????????Q
? "????????????
F__inference_flatten_28_layer_call_and_return_conditional_losses_858903b8?5
.?+
)?&
inputs?????????		?
? "&?#
?
0??????????Q
? ?
+__inference_flatten_28_layer_call_fn_858897U8?5
.?+
)?&
inputs?????????		?
? "???????????Q?
F__inference_reshape_26_layer_call_and_return_conditional_losses_858940]0?-
&?#
!?
inputs??????????
? ")?&
?
0?????????Q	
? 
+__inference_reshape_26_layer_call_fn_858927P0?-
&?#
!?
inputs??????????
? "??????????Q	?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858402?#$%&-.789:ABPQH?E
>?;
1?.
conv2d_84_input?????????		
p 

 
? ")?&
?
0?????????Q	
? ?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858447?#$%&-.789:ABPQH?E
>?;
1?.
conv2d_84_input?????????		
p

 
? ")?&
?
0?????????Q	
? ?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858637~#$%&-.789:ABPQ??<
5?2
(?%
inputs?????????		
p 

 
? ")?&
?
0?????????Q	
? ?
I__inference_sequential_28_layer_call_and_return_conditional_losses_858708~#$%&-.789:ABPQ??<
5?2
(?%
inputs?????????		
p

 
? ")?&
?
0?????????Q	
? ?
.__inference_sequential_28_layer_call_fn_858143z#$%&-.789:ABPQH?E
>?;
1?.
conv2d_84_input?????????		
p 

 
? "??????????Q	?
.__inference_sequential_28_layer_call_fn_858357z#$%&-.789:ABPQH?E
>?;
1?.
conv2d_84_input?????????		
p

 
? "??????????Q	?
.__inference_sequential_28_layer_call_fn_858529q#$%&-.789:ABPQ??<
5?2
(?%
inputs?????????		
p 

 
? "??????????Q	?
.__inference_sequential_28_layer_call_fn_858566q#$%&-.789:ABPQ??<
5?2
(?%
inputs?????????		
p

 
? "??????????Q	?
$__inference_signature_wrapper_858492?#$%&-.789:ABPQS?P
? 
I?F
D
conv2d_84_input1?.
conv2d_84_input?????????		"A?>
<
activation_26+?(
activation_26?????????Q	