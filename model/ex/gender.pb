Ηπ3
±
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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

DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

ϊ
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
2"
Utype:
2"
epsilonfloat%·Ρ8"&
exponential_avg_factorfloat%  ?";
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

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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
0
Neg
x"T
y"T"
Ttype:
2
	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
Ύ
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.02v2.6.0-rc2-32-g919f693420e8Πΐ.
¦
!separable_conv2d/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!separable_conv2d/depthwise_kernel

5separable_conv2d/depthwise_kernel/Read/ReadVariableOpReadVariableOp!separable_conv2d/depthwise_kernel*&
_output_shapes
:*
dtype0
¦
!separable_conv2d/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!separable_conv2d/pointwise_kernel

5separable_conv2d/pointwise_kernel/Read/ReadVariableOpReadVariableOp!separable_conv2d/pointwise_kernel*&
_output_shapes
:*
dtype0

batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namebatch_normalization/gamma

-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:*
dtype0

batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebatch_normalization/beta

,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:*
dtype0

batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean

3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0

#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance

7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0
z
p_re_lu/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namep_re_lu/alpha
s
!p_re_lu/alpha/Read/ReadVariableOpReadVariableOpp_re_lu/alpha*"
_output_shapes
:*
dtype0
ͺ
#separable_conv2d_1/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#separable_conv2d_1/depthwise_kernel
£
7separable_conv2d_1/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_1/depthwise_kernel*&
_output_shapes
:*
dtype0
ͺ
#separable_conv2d_1/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#separable_conv2d_1/pointwise_kernel
£
7separable_conv2d_1/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_1/pointwise_kernel*&
_output_shapes
: *
dtype0

batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_1/gamma

/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
: *
dtype0

batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_1/beta

.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
: *
dtype0

!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_1/moving_mean

5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0
’
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_1/moving_variance

9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0
~
p_re_lu_1/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namep_re_lu_1/alpha
w
#p_re_lu_1/alpha/Read/ReadVariableOpReadVariableOpp_re_lu_1/alpha*"
_output_shapes
: *
dtype0
ͺ
#separable_conv2d_2/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#separable_conv2d_2/depthwise_kernel
£
7separable_conv2d_2/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_2/depthwise_kernel*&
_output_shapes
: *
dtype0
ͺ
#separable_conv2d_2/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*4
shared_name%#separable_conv2d_2/pointwise_kernel
£
7separable_conv2d_2/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_2/pointwise_kernel*&
_output_shapes
: @*
dtype0

batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_2/gamma

/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:@*
dtype0

batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_2/beta

.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:@*
dtype0

!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_2/moving_mean

5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:@*
dtype0
’
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_2/moving_variance

9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:@*
dtype0
~
p_re_lu_2/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_namep_re_lu_2/alpha
w
#p_re_lu_2/alpha/Read/ReadVariableOpReadVariableOpp_re_lu_2/alpha*"
_output_shapes
:@*
dtype0
ͺ
#separable_conv2d_3/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#separable_conv2d_3/depthwise_kernel
£
7separable_conv2d_3/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_3/depthwise_kernel*&
_output_shapes
:@*
dtype0
«
#separable_conv2d_3/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#separable_conv2d_3/pointwise_kernel
€
7separable_conv2d_3/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_3/pointwise_kernel*'
_output_shapes
:@*
dtype0

batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_3/gamma

/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes	
:*
dtype0

batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_3/beta

.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes	
:*
dtype0

!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_3/moving_mean

5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes	
:*
dtype0
£
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_3/moving_variance

9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes	
:*
dtype0

p_re_lu_3/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namep_re_lu_3/alpha
x
#p_re_lu_3/alpha/Read/ReadVariableOpReadVariableOpp_re_lu_3/alpha*#
_output_shapes
:*
dtype0
«
#separable_conv2d_4/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#separable_conv2d_4/depthwise_kernel
€
7separable_conv2d_4/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_4/depthwise_kernel*'
_output_shapes
:*
dtype0
¬
#separable_conv2d_4/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#separable_conv2d_4/pointwise_kernel
₯
7separable_conv2d_4/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_4/pointwise_kernel*(
_output_shapes
:*
dtype0

batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_4/gamma

/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes	
:*
dtype0

batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_4/beta

.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes	
:*
dtype0

!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_4/moving_mean

5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes	
:*
dtype0
£
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_4/moving_variance

9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes	
:*
dtype0

p_re_lu_4/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namep_re_lu_4/alpha
x
#p_re_lu_4/alpha/Read/ReadVariableOpReadVariableOpp_re_lu_4/alpha*#
_output_shapes
:*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0
w
p_re_lu_5/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namep_re_lu_5/alpha
p
#p_re_lu_5/alpha/Read/ReadVariableOpReadVariableOpp_re_lu_5/alpha*
_output_shapes	
:*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
v
p_re_lu_6/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_namep_re_lu_6/alpha
o
#p_re_lu_6/alpha/Read/ReadVariableOpReadVariableOpp_re_lu_6/alpha*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@ *
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
: *
dtype0
v
p_re_lu_7/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namep_re_lu_7/alpha
o
#p_re_lu_7/alpha/Read/ReadVariableOpReadVariableOpp_re_lu_7/alpha*
_output_shapes
: *
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

: *
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
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
΄
(Adam/separable_conv2d/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(Adam/separable_conv2d/depthwise_kernel/m
­
<Adam/separable_conv2d/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/separable_conv2d/depthwise_kernel/m*&
_output_shapes
:*
dtype0
΄
(Adam/separable_conv2d/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(Adam/separable_conv2d/pointwise_kernel/m
­
<Adam/separable_conv2d/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/separable_conv2d/pointwise_kernel/m*&
_output_shapes
:*
dtype0

 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/m

4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes
:*
dtype0

Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/m

3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes
:*
dtype0

Adam/p_re_lu/alpha/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/p_re_lu/alpha/m

(Adam/p_re_lu/alpha/m/Read/ReadVariableOpReadVariableOpAdam/p_re_lu/alpha/m*"
_output_shapes
:*
dtype0
Έ
*Adam/separable_conv2d_1/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/separable_conv2d_1/depthwise_kernel/m
±
>Adam/separable_conv2d_1/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_1/depthwise_kernel/m*&
_output_shapes
:*
dtype0
Έ
*Adam/separable_conv2d_1/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/separable_conv2d_1/pointwise_kernel/m
±
>Adam/separable_conv2d_1/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_1/pointwise_kernel/m*&
_output_shapes
: *
dtype0

"Adam/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_1/gamma/m

6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/m*
_output_shapes
: *
dtype0

!Adam/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_1/beta/m

5Adam/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/m*
_output_shapes
: *
dtype0

Adam/p_re_lu_1/alpha/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/p_re_lu_1/alpha/m

*Adam/p_re_lu_1/alpha/m/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_1/alpha/m*"
_output_shapes
: *
dtype0
Έ
*Adam/separable_conv2d_2/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/separable_conv2d_2/depthwise_kernel/m
±
>Adam/separable_conv2d_2/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_2/depthwise_kernel/m*&
_output_shapes
: *
dtype0
Έ
*Adam/separable_conv2d_2/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*;
shared_name,*Adam/separable_conv2d_2/pointwise_kernel/m
±
>Adam/separable_conv2d_2/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_2/pointwise_kernel/m*&
_output_shapes
: @*
dtype0

"Adam/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_2/gamma/m

6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/m*
_output_shapes
:@*
dtype0

!Adam/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_2/beta/m

5Adam/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/m*
_output_shapes
:@*
dtype0

Adam/p_re_lu_2/alpha/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/p_re_lu_2/alpha/m

*Adam/p_re_lu_2/alpha/m/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_2/alpha/m*"
_output_shapes
:@*
dtype0
Έ
*Adam/separable_conv2d_3/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/separable_conv2d_3/depthwise_kernel/m
±
>Adam/separable_conv2d_3/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_3/depthwise_kernel/m*&
_output_shapes
:@*
dtype0
Ή
*Adam/separable_conv2d_3/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/separable_conv2d_3/pointwise_kernel/m
²
>Adam/separable_conv2d_3/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_3/pointwise_kernel/m*'
_output_shapes
:@*
dtype0

"Adam/batch_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_3/gamma/m

6Adam/batch_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_3/beta/m

5Adam/batch_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/m*
_output_shapes	
:*
dtype0

Adam/p_re_lu_3/alpha/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/p_re_lu_3/alpha/m

*Adam/p_re_lu_3/alpha/m/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_3/alpha/m*#
_output_shapes
:*
dtype0
Ή
*Adam/separable_conv2d_4/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/separable_conv2d_4/depthwise_kernel/m
²
>Adam/separable_conv2d_4/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_4/depthwise_kernel/m*'
_output_shapes
:*
dtype0
Ί
*Adam/separable_conv2d_4/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/separable_conv2d_4/pointwise_kernel/m
³
>Adam/separable_conv2d_4/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_4/pointwise_kernel/m*(
_output_shapes
:*
dtype0

"Adam/batch_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_4/gamma/m

6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_4/beta/m

5Adam/batch_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/m*
_output_shapes	
:*
dtype0

Adam/p_re_lu_4/alpha/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/p_re_lu_4/alpha/m

*Adam/p_re_lu_4/alpha/m/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_4/alpha/m*#
_output_shapes
:*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:*
dtype0

Adam/p_re_lu_5/alpha/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/p_re_lu_5/alpha/m
~
*Adam/p_re_lu_5/alpha/m/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_5/alpha/m*
_output_shapes	
:*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:@*
dtype0

Adam/p_re_lu_6/alpha/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/p_re_lu_6/alpha/m
}
*Adam/p_re_lu_6/alpha/m/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_6/alpha/m*
_output_shapes
:@*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:@ *
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
: *
dtype0

Adam/p_re_lu_7/alpha/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/p_re_lu_7/alpha/m
}
*Adam/p_re_lu_7/alpha/m/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_7/alpha/m*
_output_shapes
: *
dtype0

Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
΄
(Adam/separable_conv2d/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(Adam/separable_conv2d/depthwise_kernel/v
­
<Adam/separable_conv2d/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/separable_conv2d/depthwise_kernel/v*&
_output_shapes
:*
dtype0
΄
(Adam/separable_conv2d/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(Adam/separable_conv2d/pointwise_kernel/v
­
<Adam/separable_conv2d/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/separable_conv2d/pointwise_kernel/v*&
_output_shapes
:*
dtype0

 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/v

4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes
:*
dtype0

Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/v

3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes
:*
dtype0

Adam/p_re_lu/alpha/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/p_re_lu/alpha/v

(Adam/p_re_lu/alpha/v/Read/ReadVariableOpReadVariableOpAdam/p_re_lu/alpha/v*"
_output_shapes
:*
dtype0
Έ
*Adam/separable_conv2d_1/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/separable_conv2d_1/depthwise_kernel/v
±
>Adam/separable_conv2d_1/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_1/depthwise_kernel/v*&
_output_shapes
:*
dtype0
Έ
*Adam/separable_conv2d_1/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/separable_conv2d_1/pointwise_kernel/v
±
>Adam/separable_conv2d_1/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_1/pointwise_kernel/v*&
_output_shapes
: *
dtype0

"Adam/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_1/gamma/v

6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/v*
_output_shapes
: *
dtype0

!Adam/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_1/beta/v

5Adam/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/v*
_output_shapes
: *
dtype0

Adam/p_re_lu_1/alpha/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/p_re_lu_1/alpha/v

*Adam/p_re_lu_1/alpha/v/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_1/alpha/v*"
_output_shapes
: *
dtype0
Έ
*Adam/separable_conv2d_2/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/separable_conv2d_2/depthwise_kernel/v
±
>Adam/separable_conv2d_2/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_2/depthwise_kernel/v*&
_output_shapes
: *
dtype0
Έ
*Adam/separable_conv2d_2/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*;
shared_name,*Adam/separable_conv2d_2/pointwise_kernel/v
±
>Adam/separable_conv2d_2/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_2/pointwise_kernel/v*&
_output_shapes
: @*
dtype0

"Adam/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_2/gamma/v

6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/v*
_output_shapes
:@*
dtype0

!Adam/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_2/beta/v

5Adam/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/v*
_output_shapes
:@*
dtype0

Adam/p_re_lu_2/alpha/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/p_re_lu_2/alpha/v

*Adam/p_re_lu_2/alpha/v/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_2/alpha/v*"
_output_shapes
:@*
dtype0
Έ
*Adam/separable_conv2d_3/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/separable_conv2d_3/depthwise_kernel/v
±
>Adam/separable_conv2d_3/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_3/depthwise_kernel/v*&
_output_shapes
:@*
dtype0
Ή
*Adam/separable_conv2d_3/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/separable_conv2d_3/pointwise_kernel/v
²
>Adam/separable_conv2d_3/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_3/pointwise_kernel/v*'
_output_shapes
:@*
dtype0

"Adam/batch_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_3/gamma/v

6Adam/batch_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_3/beta/v

5Adam/batch_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/v*
_output_shapes	
:*
dtype0

Adam/p_re_lu_3/alpha/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/p_re_lu_3/alpha/v

*Adam/p_re_lu_3/alpha/v/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_3/alpha/v*#
_output_shapes
:*
dtype0
Ή
*Adam/separable_conv2d_4/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/separable_conv2d_4/depthwise_kernel/v
²
>Adam/separable_conv2d_4/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_4/depthwise_kernel/v*'
_output_shapes
:*
dtype0
Ί
*Adam/separable_conv2d_4/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/separable_conv2d_4/pointwise_kernel/v
³
>Adam/separable_conv2d_4/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_4/pointwise_kernel/v*(
_output_shapes
:*
dtype0

"Adam/batch_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_4/gamma/v

6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_4/beta/v

5Adam/batch_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/v*
_output_shapes	
:*
dtype0

Adam/p_re_lu_4/alpha/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/p_re_lu_4/alpha/v

*Adam/p_re_lu_4/alpha/v/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_4/alpha/v*#
_output_shapes
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:*
dtype0

Adam/p_re_lu_5/alpha/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/p_re_lu_5/alpha/v
~
*Adam/p_re_lu_5/alpha/v/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_5/alpha/v*
_output_shapes	
:*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:@*
dtype0

Adam/p_re_lu_6/alpha/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/p_re_lu_6/alpha/v
}
*Adam/p_re_lu_6/alpha/v/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_6/alpha/v*
_output_shapes
:@*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:@ *
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
: *
dtype0

Adam/p_re_lu_7/alpha/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/p_re_lu_7/alpha/v
}
*Adam/p_re_lu_7/alpha/v/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_7/alpha/v*
_output_shapes
: *
dtype0

Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
η
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Γζ
valueΈζB΄ζ B¬ζ
ο
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer_with_weights-8
layer-11
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer_with_weights-12
layer-17
layer_with_weights-13
layer-18
layer_with_weights-14
layer-19
layer-20
layer-21
layer_with_weights-15
layer-22
layer_with_weights-16
layer-23
layer-24
layer_with_weights-17
layer-25
layer_with_weights-18
layer-26
layer-27
layer_with_weights-19
layer-28
layer_with_weights-20
layer-29
layer-30
 layer_with_weights-21
 layer-31
!	optimizer
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&
signatures

'_init_input_shape
~
(depthwise_kernel
)pointwise_kernel
*	variables
+regularization_losses
,trainable_variables
-	keras_api

.axis
	/gamma
0beta
1moving_mean
2moving_variance
3	variables
4regularization_losses
5trainable_variables
6	keras_api
n
7shared_axes
	8alpha
9	variables
:regularization_losses
;trainable_variables
<	keras_api
R
=	variables
>regularization_losses
?trainable_variables
@	keras_api
~
Adepthwise_kernel
Bpointwise_kernel
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api

Gaxis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
n
Pshared_axes
	Qalpha
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
R
V	variables
Wregularization_losses
Xtrainable_variables
Y	keras_api
~
Zdepthwise_kernel
[pointwise_kernel
\	variables
]regularization_losses
^trainable_variables
_	keras_api

`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
n
ishared_axes
	jalpha
k	variables
lregularization_losses
mtrainable_variables
n	keras_api
R
o	variables
pregularization_losses
qtrainable_variables
r	keras_api
~
sdepthwise_kernel
tpointwise_kernel
u	variables
vregularization_losses
wtrainable_variables
x	keras_api

yaxis
	zgamma
{beta
|moving_mean
}moving_variance
~	variables
regularization_losses
trainable_variables
	keras_api
t
shared_axes

alpha
	variables
regularization_losses
trainable_variables
	keras_api
V
	variables
regularization_losses
trainable_variables
	keras_api

depthwise_kernel
pointwise_kernel
	variables
regularization_losses
trainable_variables
	keras_api
 
	axis

gamma
	beta
moving_mean
moving_variance
	variables
regularization_losses
trainable_variables
	keras_api
t
shared_axes

alpha
	variables
regularization_losses
trainable_variables
 	keras_api
V
‘	variables
’regularization_losses
£trainable_variables
€	keras_api
V
₯	variables
¦regularization_losses
§trainable_variables
¨	keras_api
n
©kernel
	ͺbias
«	variables
¬regularization_losses
­trainable_variables
?	keras_api
b

―alpha
°	variables
±regularization_losses
²trainable_variables
³	keras_api
V
΄	variables
΅regularization_losses
Άtrainable_variables
·	keras_api
n
Έkernel
	Ήbias
Ί	variables
»regularization_losses
Όtrainable_variables
½	keras_api
b

Ύalpha
Ώ	variables
ΐregularization_losses
Αtrainable_variables
Β	keras_api
V
Γ	variables
Δregularization_losses
Εtrainable_variables
Ζ	keras_api
n
Ηkernel
	Θbias
Ι	variables
Κregularization_losses
Λtrainable_variables
Μ	keras_api
b

Νalpha
Ξ	variables
Οregularization_losses
Πtrainable_variables
Ρ	keras_api
V
?	variables
Σregularization_losses
Τtrainable_variables
Υ	keras_api
n
Φkernel
	Χbias
Ψ	variables
Ωregularization_losses
Ϊtrainable_variables
Ϋ	keras_api
·
	άiter
έbeta_1
ήbeta_2

ίdecay
ΰlearning_rate(m)m/m0m8mAmBmHmImQmZm[mambmjmsmtmzm{m	m	m 	m‘	m’	m£	m€	©m₯	ͺm¦	―m§	Έm¨	Ήm©	Ύmͺ	Ηm«	Θm¬	Νm­	Φm?	Χm―(v°)v±/v²0v³8v΄Av΅BvΆHv·IvΈQvΉZvΊ[v»avΌbv½jvΎsvΏtvΐzvΑ{vΒ	vΓ	vΔ	vΕ	vΖ	vΗ	vΘ	©vΙ	ͺvΚ	―vΛ	ΈvΜ	ΉvΝ	ΎvΞ	ΗvΟ	ΘvΠ	ΝvΡ	Φv?	ΧvΣ
ω
(0
)1
/2
03
14
25
86
A7
B8
H9
I10
J11
K12
Q13
Z14
[15
a16
b17
c18
d19
j20
s21
t22
z23
{24
|25
}26
27
28
29
30
31
32
33
34
©35
ͺ36
―37
Έ38
Ή39
Ύ40
Η41
Θ42
Ν43
Φ44
Χ45
§
(0
)1
/2
03
84
A5
B6
H7
I8
Q9
Z10
[11
a12
b13
j14
s15
t16
z17
{18
19
20
21
22
23
24
©25
ͺ26
―27
Έ28
Ή29
Ύ30
Η31
Θ32
Ν33
Φ34
Χ35
 
²
"	variables
αnon_trainable_variables
βmetrics
γlayers
 δlayer_regularization_losses
#trainable_variables
εlayer_metrics
$regularization_losses
 
 
wu
VARIABLE_VALUE!separable_conv2d/depthwise_kernel@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE!separable_conv2d/pointwise_kernel@layer_with_weights-0/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE

(0
)1
 

(0
)1
²
*	variables
ζmetrics
ηlayers
 θlayer_regularization_losses
+regularization_losses
,trainable_variables
ιlayer_metrics
κnon_trainable_variables
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

/0
01
12
23
 

/0
01
²
3	variables
λmetrics
μlayers
 νlayer_regularization_losses
4regularization_losses
5trainable_variables
ξlayer_metrics
οnon_trainable_variables
 
XV
VARIABLE_VALUEp_re_lu/alpha5layer_with_weights-2/alpha/.ATTRIBUTES/VARIABLE_VALUE

80
 

80
²
9	variables
πmetrics
ρlayers
 ςlayer_regularization_losses
:regularization_losses
;trainable_variables
σlayer_metrics
τnon_trainable_variables
 
 
 
²
=	variables
υmetrics
φlayers
 χlayer_regularization_losses
>regularization_losses
?trainable_variables
ψlayer_metrics
ωnon_trainable_variables
yw
VARIABLE_VALUE#separable_conv2d_1/depthwise_kernel@layer_with_weights-3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE#separable_conv2d_1/pointwise_kernel@layer_with_weights-3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE

A0
B1
 

A0
B1
²
C	variables
ϊmetrics
ϋlayers
 όlayer_regularization_losses
Dregularization_losses
Etrainable_variables
ύlayer_metrics
ώnon_trainable_variables
 
fd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

H0
I1
J2
K3
 

H0
I1
²
L	variables
?metrics
layers
 layer_regularization_losses
Mregularization_losses
Ntrainable_variables
layer_metrics
non_trainable_variables
 
ZX
VARIABLE_VALUEp_re_lu_1/alpha5layer_with_weights-5/alpha/.ATTRIBUTES/VARIABLE_VALUE

Q0
 

Q0
²
R	variables
metrics
layers
 layer_regularization_losses
Sregularization_losses
Ttrainable_variables
layer_metrics
non_trainable_variables
 
 
 
²
V	variables
metrics
layers
 layer_regularization_losses
Wregularization_losses
Xtrainable_variables
layer_metrics
non_trainable_variables
yw
VARIABLE_VALUE#separable_conv2d_2/depthwise_kernel@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE#separable_conv2d_2/pointwise_kernel@layer_with_weights-6/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1
 

Z0
[1
²
\	variables
metrics
layers
 layer_regularization_losses
]regularization_losses
^trainable_variables
layer_metrics
non_trainable_variables
 
fd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

a0
b1
c2
d3
 

a0
b1
²
e	variables
metrics
layers
 layer_regularization_losses
fregularization_losses
gtrainable_variables
layer_metrics
non_trainable_variables
 
ZX
VARIABLE_VALUEp_re_lu_2/alpha5layer_with_weights-8/alpha/.ATTRIBUTES/VARIABLE_VALUE

j0
 

j0
²
k	variables
metrics
layers
 layer_regularization_losses
lregularization_losses
mtrainable_variables
layer_metrics
non_trainable_variables
 
 
 
²
o	variables
metrics
layers
 layer_regularization_losses
pregularization_losses
qtrainable_variables
 layer_metrics
‘non_trainable_variables
yw
VARIABLE_VALUE#separable_conv2d_3/depthwise_kernel@layer_with_weights-9/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE#separable_conv2d_3/pointwise_kernel@layer_with_weights-9/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE

s0
t1
 

s0
t1
²
u	variables
’metrics
£layers
 €layer_regularization_losses
vregularization_losses
wtrainable_variables
₯layer_metrics
¦non_trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_3/gamma6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_3/beta5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE!batch_normalization_3/moving_mean<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE%batch_normalization_3/moving_variance@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

z0
{1
|2
}3
 

z0
{1
³
~	variables
§metrics
¨layers
 ©layer_regularization_losses
regularization_losses
trainable_variables
ͺlayer_metrics
«non_trainable_variables
 
[Y
VARIABLE_VALUEp_re_lu_3/alpha6layer_with_weights-11/alpha/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
΅
	variables
¬metrics
­layers
 ?layer_regularization_losses
regularization_losses
trainable_variables
―layer_metrics
°non_trainable_variables
 
 
 
΅
	variables
±metrics
²layers
 ³layer_regularization_losses
regularization_losses
trainable_variables
΄layer_metrics
΅non_trainable_variables
zx
VARIABLE_VALUE#separable_conv2d_4/depthwise_kernelAlayer_with_weights-12/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE#separable_conv2d_4/pointwise_kernelAlayer_with_weights-12/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
΅
	variables
Άmetrics
·layers
 Έlayer_regularization_losses
regularization_losses
trainable_variables
Ήlayer_metrics
Ίnon_trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_4/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_4/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE!batch_normalization_4/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE%batch_normalization_4/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
0
1
2
3
 

0
1
΅
	variables
»metrics
Όlayers
 ½layer_regularization_losses
regularization_losses
trainable_variables
Ύlayer_metrics
Ώnon_trainable_variables
 
[Y
VARIABLE_VALUEp_re_lu_4/alpha6layer_with_weights-14/alpha/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
΅
	variables
ΐmetrics
Αlayers
 Βlayer_regularization_losses
regularization_losses
trainable_variables
Γlayer_metrics
Δnon_trainable_variables
 
 
 
΅
‘	variables
Εmetrics
Ζlayers
 Ηlayer_regularization_losses
’regularization_losses
£trainable_variables
Θlayer_metrics
Ιnon_trainable_variables
 
 
 
΅
₯	variables
Κmetrics
Λlayers
 Μlayer_regularization_losses
¦regularization_losses
§trainable_variables
Νlayer_metrics
Ξnon_trainable_variables
YW
VARIABLE_VALUEdense/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE
dense/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE

©0
ͺ1
 

©0
ͺ1
΅
«	variables
Οmetrics
Πlayers
 Ρlayer_regularization_losses
¬regularization_losses
­trainable_variables
?layer_metrics
Σnon_trainable_variables
[Y
VARIABLE_VALUEp_re_lu_5/alpha6layer_with_weights-16/alpha/.ATTRIBUTES/VARIABLE_VALUE

―0
 

―0
΅
°	variables
Τmetrics
Υlayers
 Φlayer_regularization_losses
±regularization_losses
²trainable_variables
Χlayer_metrics
Ψnon_trainable_variables
 
 
 
΅
΄	variables
Ωmetrics
Ϊlayers
 Ϋlayer_regularization_losses
΅regularization_losses
Άtrainable_variables
άlayer_metrics
έnon_trainable_variables
[Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_1/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE

Έ0
Ή1
 

Έ0
Ή1
΅
Ί	variables
ήmetrics
ίlayers
 ΰlayer_regularization_losses
»regularization_losses
Όtrainable_variables
αlayer_metrics
βnon_trainable_variables
[Y
VARIABLE_VALUEp_re_lu_6/alpha6layer_with_weights-18/alpha/.ATTRIBUTES/VARIABLE_VALUE

Ύ0
 

Ύ0
΅
Ώ	variables
γmetrics
δlayers
 εlayer_regularization_losses
ΐregularization_losses
Αtrainable_variables
ζlayer_metrics
ηnon_trainable_variables
 
 
 
΅
Γ	variables
θmetrics
ιlayers
 κlayer_regularization_losses
Δregularization_losses
Εtrainable_variables
λlayer_metrics
μnon_trainable_variables
[Y
VARIABLE_VALUEdense_2/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_2/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE

Η0
Θ1
 

Η0
Θ1
΅
Ι	variables
νmetrics
ξlayers
 οlayer_regularization_losses
Κregularization_losses
Λtrainable_variables
πlayer_metrics
ρnon_trainable_variables
[Y
VARIABLE_VALUEp_re_lu_7/alpha6layer_with_weights-20/alpha/.ATTRIBUTES/VARIABLE_VALUE

Ν0
 

Ν0
΅
Ξ	variables
ςmetrics
σlayers
 τlayer_regularization_losses
Οregularization_losses
Πtrainable_variables
υlayer_metrics
φnon_trainable_variables
 
 
 
΅
?	variables
χmetrics
ψlayers
 ωlayer_regularization_losses
Σregularization_losses
Τtrainable_variables
ϊlayer_metrics
ϋnon_trainable_variables
[Y
VARIABLE_VALUEdense_3/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_3/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE

Φ0
Χ1
 

Φ0
Χ1
΅
Ψ	variables
όmetrics
ύlayers
 ώlayer_regularization_losses
Ωregularization_losses
Ϊtrainable_variables
?layer_metrics
non_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
H
10
21
J2
K3
c4
d5
|6
}7
8
9

0
1
φ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
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
10
21
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
J0
K1
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
c0
d1
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
|0
}1
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

0
1
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
 
 
 
 
 
 
 
 
8

total

count
	variables
	keras_api
I

total

count

_fn_kwargs
	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

	variables

VARIABLE_VALUE(Adam/separable_conv2d/depthwise_kernel/m\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(Adam/separable_conv2d/pointwise_kernel/m\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/batch_normalization/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/batch_normalization/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/p_re_lu/alpha/mQlayer_with_weights-2/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_1/depthwise_kernel/m\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_1/pointwise_kernel/m\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_1/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_1/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/p_re_lu_1/alpha/mQlayer_with_weights-5/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_2/depthwise_kernel/m\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_2/pointwise_kernel/m\layer_with_weights-6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_2/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_2/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/p_re_lu_2/alpha/mQlayer_with_weights-8/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_3/depthwise_kernel/m\layer_with_weights-9/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_3/pointwise_kernel/m\layer_with_weights-9/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_3/gamma/mRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_3/beta/mQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/p_re_lu_3/alpha/mRlayer_with_weights-11/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_4/depthwise_kernel/m]layer_with_weights-12/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_4/pointwise_kernel/m]layer_with_weights-12/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_4/gamma/mRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_4/beta/mQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/p_re_lu_4/alpha/mRlayer_with_weights-14/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/p_re_lu_5/alpha/mRlayer_with_weights-16/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/mQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/p_re_lu_6/alpha/mRlayer_with_weights-18/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_2/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_2/bias/mQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/p_re_lu_7/alpha/mRlayer_with_weights-20/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_3/kernel/mSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_3/bias/mQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(Adam/separable_conv2d/depthwise_kernel/v\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(Adam/separable_conv2d/pointwise_kernel/v\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/batch_normalization/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/batch_normalization/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/p_re_lu/alpha/vQlayer_with_weights-2/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_1/depthwise_kernel/v\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_1/pointwise_kernel/v\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_1/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_1/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/p_re_lu_1/alpha/vQlayer_with_weights-5/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_2/depthwise_kernel/v\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_2/pointwise_kernel/v\layer_with_weights-6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_2/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_2/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/p_re_lu_2/alpha/vQlayer_with_weights-8/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_3/depthwise_kernel/v\layer_with_weights-9/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_3/pointwise_kernel/v\layer_with_weights-9/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_3/gamma/vRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_3/beta/vQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/p_re_lu_3/alpha/vRlayer_with_weights-11/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_4/depthwise_kernel/v]layer_with_weights-12/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/separable_conv2d_4/pointwise_kernel/v]layer_with_weights-12/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_4/gamma/vRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_4/beta/vQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/p_re_lu_4/alpha/vRlayer_with_weights-14/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/p_re_lu_5/alpha/vRlayer_with_weights-16/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/vQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/p_re_lu_6/alpha/vRlayer_with_weights-18/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_2/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_2/bias/vQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/p_re_lu_7/alpha/vRlayer_with_weights-20/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_3/kernel/vSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_3/bias/vQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_1Placeholder*1
_output_shapes
:?????????*
dtype0*&
shape:?????????
ύ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1!separable_conv2d/depthwise_kernel!separable_conv2d/pointwise_kernelbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancep_re_lu/alpha#separable_conv2d_1/depthwise_kernel#separable_conv2d_1/pointwise_kernelbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancep_re_lu_1/alpha#separable_conv2d_2/depthwise_kernel#separable_conv2d_2/pointwise_kernelbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancep_re_lu_2/alpha#separable_conv2d_3/depthwise_kernel#separable_conv2d_3/pointwise_kernelbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancep_re_lu_3/alpha#separable_conv2d_4/depthwise_kernel#separable_conv2d_4/pointwise_kernelbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancep_re_lu_4/alphadense/kernel
dense/biasp_re_lu_5/alphadense_1/kerneldense_1/biasp_re_lu_6/alphadense_2/kerneldense_2/biasp_re_lu_7/alphadense_3/kerneldense_3/bias*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_102871
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ψ3
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename5separable_conv2d/depthwise_kernel/Read/ReadVariableOp5separable_conv2d/pointwise_kernel/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp!p_re_lu/alpha/Read/ReadVariableOp7separable_conv2d_1/depthwise_kernel/Read/ReadVariableOp7separable_conv2d_1/pointwise_kernel/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp#p_re_lu_1/alpha/Read/ReadVariableOp7separable_conv2d_2/depthwise_kernel/Read/ReadVariableOp7separable_conv2d_2/pointwise_kernel/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp#p_re_lu_2/alpha/Read/ReadVariableOp7separable_conv2d_3/depthwise_kernel/Read/ReadVariableOp7separable_conv2d_3/pointwise_kernel/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp#p_re_lu_3/alpha/Read/ReadVariableOp7separable_conv2d_4/depthwise_kernel/Read/ReadVariableOp7separable_conv2d_4/pointwise_kernel/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp#p_re_lu_4/alpha/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp#p_re_lu_5/alpha/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp#p_re_lu_6/alpha/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp#p_re_lu_7/alpha/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp<Adam/separable_conv2d/depthwise_kernel/m/Read/ReadVariableOp<Adam/separable_conv2d/pointwise_kernel/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp(Adam/p_re_lu/alpha/m/Read/ReadVariableOp>Adam/separable_conv2d_1/depthwise_kernel/m/Read/ReadVariableOp>Adam/separable_conv2d_1/pointwise_kernel/m/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_1/beta/m/Read/ReadVariableOp*Adam/p_re_lu_1/alpha/m/Read/ReadVariableOp>Adam/separable_conv2d_2/depthwise_kernel/m/Read/ReadVariableOp>Adam/separable_conv2d_2/pointwise_kernel/m/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_2/beta/m/Read/ReadVariableOp*Adam/p_re_lu_2/alpha/m/Read/ReadVariableOp>Adam/separable_conv2d_3/depthwise_kernel/m/Read/ReadVariableOp>Adam/separable_conv2d_3/pointwise_kernel/m/Read/ReadVariableOp6Adam/batch_normalization_3/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_3/beta/m/Read/ReadVariableOp*Adam/p_re_lu_3/alpha/m/Read/ReadVariableOp>Adam/separable_conv2d_4/depthwise_kernel/m/Read/ReadVariableOp>Adam/separable_conv2d_4/pointwise_kernel/m/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_4/beta/m/Read/ReadVariableOp*Adam/p_re_lu_4/alpha/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp*Adam/p_re_lu_5/alpha/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp*Adam/p_re_lu_6/alpha/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp*Adam/p_re_lu_7/alpha/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp<Adam/separable_conv2d/depthwise_kernel/v/Read/ReadVariableOp<Adam/separable_conv2d/pointwise_kernel/v/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp(Adam/p_re_lu/alpha/v/Read/ReadVariableOp>Adam/separable_conv2d_1/depthwise_kernel/v/Read/ReadVariableOp>Adam/separable_conv2d_1/pointwise_kernel/v/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_1/beta/v/Read/ReadVariableOp*Adam/p_re_lu_1/alpha/v/Read/ReadVariableOp>Adam/separable_conv2d_2/depthwise_kernel/v/Read/ReadVariableOp>Adam/separable_conv2d_2/pointwise_kernel/v/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_2/beta/v/Read/ReadVariableOp*Adam/p_re_lu_2/alpha/v/Read/ReadVariableOp>Adam/separable_conv2d_3/depthwise_kernel/v/Read/ReadVariableOp>Adam/separable_conv2d_3/pointwise_kernel/v/Read/ReadVariableOp6Adam/batch_normalization_3/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_3/beta/v/Read/ReadVariableOp*Adam/p_re_lu_3/alpha/v/Read/ReadVariableOp>Adam/separable_conv2d_4/depthwise_kernel/v/Read/ReadVariableOp>Adam/separable_conv2d_4/pointwise_kernel/v/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_4/beta/v/Read/ReadVariableOp*Adam/p_re_lu_4/alpha/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp*Adam/p_re_lu_5/alpha/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp*Adam/p_re_lu_6/alpha/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp*Adam/p_re_lu_7/alpha/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpConst*
Tin
2	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_105529
η
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename!separable_conv2d/depthwise_kernel!separable_conv2d/pointwise_kernelbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancep_re_lu/alpha#separable_conv2d_1/depthwise_kernel#separable_conv2d_1/pointwise_kernelbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancep_re_lu_1/alpha#separable_conv2d_2/depthwise_kernel#separable_conv2d_2/pointwise_kernelbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancep_re_lu_2/alpha#separable_conv2d_3/depthwise_kernel#separable_conv2d_3/pointwise_kernelbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancep_re_lu_3/alpha#separable_conv2d_4/depthwise_kernel#separable_conv2d_4/pointwise_kernelbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancep_re_lu_4/alphadense/kernel
dense/biasp_re_lu_5/alphadense_1/kerneldense_1/biasp_re_lu_6/alphadense_2/kerneldense_2/biasp_re_lu_7/alphadense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1(Adam/separable_conv2d/depthwise_kernel/m(Adam/separable_conv2d/pointwise_kernel/m Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/p_re_lu/alpha/m*Adam/separable_conv2d_1/depthwise_kernel/m*Adam/separable_conv2d_1/pointwise_kernel/m"Adam/batch_normalization_1/gamma/m!Adam/batch_normalization_1/beta/mAdam/p_re_lu_1/alpha/m*Adam/separable_conv2d_2/depthwise_kernel/m*Adam/separable_conv2d_2/pointwise_kernel/m"Adam/batch_normalization_2/gamma/m!Adam/batch_normalization_2/beta/mAdam/p_re_lu_2/alpha/m*Adam/separable_conv2d_3/depthwise_kernel/m*Adam/separable_conv2d_3/pointwise_kernel/m"Adam/batch_normalization_3/gamma/m!Adam/batch_normalization_3/beta/mAdam/p_re_lu_3/alpha/m*Adam/separable_conv2d_4/depthwise_kernel/m*Adam/separable_conv2d_4/pointwise_kernel/m"Adam/batch_normalization_4/gamma/m!Adam/batch_normalization_4/beta/mAdam/p_re_lu_4/alpha/mAdam/dense/kernel/mAdam/dense/bias/mAdam/p_re_lu_5/alpha/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/p_re_lu_6/alpha/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/p_re_lu_7/alpha/mAdam/dense_3/kernel/mAdam/dense_3/bias/m(Adam/separable_conv2d/depthwise_kernel/v(Adam/separable_conv2d/pointwise_kernel/v Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/p_re_lu/alpha/v*Adam/separable_conv2d_1/depthwise_kernel/v*Adam/separable_conv2d_1/pointwise_kernel/v"Adam/batch_normalization_1/gamma/v!Adam/batch_normalization_1/beta/vAdam/p_re_lu_1/alpha/v*Adam/separable_conv2d_2/depthwise_kernel/v*Adam/separable_conv2d_2/pointwise_kernel/v"Adam/batch_normalization_2/gamma/v!Adam/batch_normalization_2/beta/vAdam/p_re_lu_2/alpha/v*Adam/separable_conv2d_3/depthwise_kernel/v*Adam/separable_conv2d_3/pointwise_kernel/v"Adam/batch_normalization_3/gamma/v!Adam/batch_normalization_3/beta/vAdam/p_re_lu_3/alpha/v*Adam/separable_conv2d_4/depthwise_kernel/v*Adam/separable_conv2d_4/pointwise_kernel/v"Adam/batch_normalization_4/gamma/v!Adam/batch_normalization_4/beta/vAdam/p_re_lu_4/alpha/vAdam/dense/kernel/vAdam/dense/bias/vAdam/p_re_lu_5/alpha/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/p_re_lu_6/alpha/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/p_re_lu_7/alpha/vAdam/dense_3/kernel/vAdam/dense_3/bias/v*
Tin
2*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_105920Χ)
ς
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_101288

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
ΰ

N__inference_batch_normalization_layer_call_and_return_conditional_losses_99636

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ά
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs



E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_100746

inputs&
readvariableop_resource:	
identity’ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:??????????????????2
Reluu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOpO
NegNegReadVariableOp:value:0*
T0*
_output_shapes	
:2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:??????????????????2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:??????????????????2
Relu_1c
mulMulNeg:y:0Relu_1:activations:0*
T0*(
_output_shapes
:?????????2
mulc
addAddV2Relu:activations:0mul:z:0*
T0*(
_output_shapes
:?????????2
addc
IdentityIdentityadd:z:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
	
΅
3__inference_separable_conv2d_3_layer_call_fn_104265

inputs!
unknown:@$
	unknown_0:@
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_1002822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
ο

(__inference_dense_2_layer_call_fn_104952

inputs
unknown:@ 
	unknown_0: 
identity’StatefulPartitionedCallσ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1013122
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
σ
 
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_100332

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1α
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs


Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_103956

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Κ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????== : : : : :*
epsilon%o:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????== 2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????== : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs
Β
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_101180

inputs
identity
MaxPoolMaxPoolinputs*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ΈΦ
₯
A__inference_model_layer_call_and_return_conditional_losses_102567
input_11
separable_conv2d_102407:1
separable_conv2d_102409:(
batch_normalization_102412:(
batch_normalization_102414:(
batch_normalization_102416:(
batch_normalization_102418:$
p_re_lu_102421:3
separable_conv2d_1_102425:3
separable_conv2d_1_102427: *
batch_normalization_1_102430: *
batch_normalization_1_102432: *
batch_normalization_1_102434: *
batch_normalization_1_102436: &
p_re_lu_1_102439: 3
separable_conv2d_2_102443: 3
separable_conv2d_2_102445: @*
batch_normalization_2_102448:@*
batch_normalization_2_102450:@*
batch_normalization_2_102452:@*
batch_normalization_2_102454:@&
p_re_lu_2_102457:@3
separable_conv2d_3_102461:@4
separable_conv2d_3_102463:@+
batch_normalization_3_102466:	+
batch_normalization_3_102468:	+
batch_normalization_3_102470:	+
batch_normalization_3_102472:	'
p_re_lu_3_102475:4
separable_conv2d_4_102479:5
separable_conv2d_4_102481:+
batch_normalization_4_102484:	+
batch_normalization_4_102486:	+
batch_normalization_4_102488:	+
batch_normalization_4_102490:	'
p_re_lu_4_102493: 
dense_102498:

dense_102500:	
p_re_lu_5_102503:	!
dense_1_102507:	@
dense_1_102509:@
p_re_lu_6_102512:@ 
dense_2_102516:@ 
dense_2_102518: 
p_re_lu_7_102521:  
dense_3_102525: 
dense_3_102527:
identity’+batch_normalization/StatefulPartitionedCall’-batch_normalization_1/StatefulPartitionedCall’-batch_normalization_2/StatefulPartitionedCall’-batch_normalization_3/StatefulPartitionedCall’-batch_normalization_4/StatefulPartitionedCall’dense/StatefulPartitionedCall’,dense/bias/Regularizer/Square/ReadVariableOp’.dense/kernel/Regularizer/Square/ReadVariableOp’dense_1/StatefulPartitionedCall’.dense_1/bias/Regularizer/Square/ReadVariableOp’0dense_1/kernel/Regularizer/Square/ReadVariableOp’dense_2/StatefulPartitionedCall’.dense_2/bias/Regularizer/Square/ReadVariableOp’0dense_2/kernel/Regularizer/Square/ReadVariableOp’dense_3/StatefulPartitionedCall’p_re_lu/StatefulPartitionedCall’!p_re_lu_1/StatefulPartitionedCall’!p_re_lu_2/StatefulPartitionedCall’!p_re_lu_3/StatefulPartitionedCall’!p_re_lu_4/StatefulPartitionedCall’!p_re_lu_5/StatefulPartitionedCall’!p_re_lu_6/StatefulPartitionedCall’!p_re_lu_7/StatefulPartitionedCall’(separable_conv2d/StatefulPartitionedCall’*separable_conv2d_1/StatefulPartitionedCall’*separable_conv2d_2/StatefulPartitionedCall’*separable_conv2d_3/StatefulPartitionedCall’*separable_conv2d_4/StatefulPartitionedCallΕ
(separable_conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1separable_conv2d_102407separable_conv2d_102409*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_separable_conv2d_layer_call_and_return_conditional_losses_1008682*
(separable_conv2d/StatefulPartitionedCallΊ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall1separable_conv2d/StatefulPartitionedCall:output:0batch_normalization_102412batch_normalization_102414batch_normalization_102416batch_normalization_102418*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_1008912-
+batch_normalization/StatefulPartitionedCall³
p_re_lu/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0p_re_lu_102421*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_p_re_lu_layer_call_and_return_conditional_losses_1009122!
p_re_lu/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCall(p_re_lu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1009202
max_pooling2d/PartitionedCallξ
*separable_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0separable_conv2d_1_102425separable_conv2d_1_102427*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_1009332,
*separable_conv2d_1/StatefulPartitionedCallΚ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_102430batch_normalization_1_102432batch_normalization_1_102434batch_normalization_1_102436*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1009562/
-batch_normalization_1/StatefulPartitionedCall½
!p_re_lu_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0p_re_lu_1_102439*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_1_layer_call_and_return_conditional_losses_1009772#
!p_re_lu_1/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall*p_re_lu_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1009852!
max_pooling2d_1/PartitionedCallπ
*separable_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0separable_conv2d_2_102443separable_conv2d_2_102445*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_1009982,
*separable_conv2d_2/StatefulPartitionedCallΚ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_102448batch_normalization_2_102450batch_normalization_2_102452batch_normalization_2_102454*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1010212/
-batch_normalization_2/StatefulPartitionedCall½
!p_re_lu_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0p_re_lu_2_102457*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_1010422#
!p_re_lu_2/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall*p_re_lu_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1010502!
max_pooling2d_2/PartitionedCallρ
*separable_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0separable_conv2d_3_102461separable_conv2d_3_102463*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_1010632,
*separable_conv2d_3/StatefulPartitionedCallΛ
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_3/StatefulPartitionedCall:output:0batch_normalization_3_102466batch_normalization_3_102468batch_normalization_3_102470batch_normalization_3_102472*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1010862/
-batch_normalization_3/StatefulPartitionedCallΎ
!p_re_lu_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0p_re_lu_3_102475*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_1011072#
!p_re_lu_3/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall*p_re_lu_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1011152!
max_pooling2d_3/PartitionedCallρ
*separable_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0separable_conv2d_4_102479separable_conv2d_4_102481*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_1011282,
*separable_conv2d_4/StatefulPartitionedCallΛ
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_4/StatefulPartitionedCall:output:0batch_normalization_4_102484batch_normalization_4_102486batch_normalization_4_102488batch_normalization_4_102490*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1011512/
-batch_normalization_4/StatefulPartitionedCallΎ
!p_re_lu_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0p_re_lu_4_102493*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_1011722#
!p_re_lu_4/StatefulPartitionedCall
max_pooling2d_4/PartitionedCallPartitionedCall*p_re_lu_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1011802!
max_pooling2d_4/PartitionedCallτ
flatten/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1011882
flatten/PartitionedCall 
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_102498dense_102500*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1012122
dense/StatefulPartitionedCall¦
!p_re_lu_5/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0p_re_lu_5_102503*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_1012292#
!p_re_lu_5/StatefulPartitionedCallφ
dropout/PartitionedCallPartitionedCall*p_re_lu_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1012382
dropout/PartitionedCall©
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_102507dense_1_102509*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1012622!
dense_1/StatefulPartitionedCall§
!p_re_lu_6/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0p_re_lu_6_102512*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_1012792#
!p_re_lu_6/StatefulPartitionedCallϋ
dropout_1/PartitionedCallPartitionedCall*p_re_lu_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1012882
dropout_1/PartitionedCall«
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_102516dense_2_102518*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1013122!
dense_2/StatefulPartitionedCall§
!p_re_lu_7/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0p_re_lu_7_102521*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_1013292#
!p_re_lu_7/StatefulPartitionedCallϋ
dropout_2/PartitionedCallPartitionedCall*p_re_lu_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1013382
dropout_2/PartitionedCall«
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_3_102525dense_3_102527*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1013512!
dense_3/StatefulPartitionedCall―
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_102498* 
_output_shapes
:
*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp―
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense/kernel/Regularizer/mul/x΄
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mul¦
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_102500*
_output_shapes	
:*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp€
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constͺ
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mul΄
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_102507*
_output_shapes
:	@*
dtype022
0dense_1/kernel/Regularizer/Square/ReadVariableOp΄
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2#
!dense_1/kernel/Regularizer/Square
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_1/kernel/Regularizer/ConstΊ
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/Sum
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_1/kernel/Regularizer/mul/xΌ
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/mul«
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_102509*
_output_shapes
:@*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp©
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@2!
dense_1/bias/Regularizer/Square
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const²
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_1/bias/Regularizer/mul/x΄
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mul³
0dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_102516*
_output_shapes

:@ *
dtype022
0dense_2/kernel/Regularizer/Square/ReadVariableOp³
!dense_2/kernel/Regularizer/SquareSquare8dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2#
!dense_2/kernel/Regularizer/Square
 dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_2/kernel/Regularizer/ConstΊ
dense_2/kernel/Regularizer/SumSum%dense_2/kernel/Regularizer/Square:y:0)dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/Sum
 dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_2/kernel/Regularizer/mul/xΌ
dense_2/kernel/Regularizer/mulMul)dense_2/kernel/Regularizer/mul/x:output:0'dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/mul«
.dense_2/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_102518*
_output_shapes
: *
dtype020
.dense_2/bias/Regularizer/Square/ReadVariableOp©
dense_2/bias/Regularizer/SquareSquare6dense_2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: 2!
dense_2/bias/Regularizer/Square
dense_2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_2/bias/Regularizer/Const²
dense_2/bias/Regularizer/SumSum#dense_2/bias/Regularizer/Square:y:0'dense_2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/Sum
dense_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_2/bias/Regularizer/mul/x΄
dense_2/bias/Regularizer/mulMul'dense_2/bias/Regularizer/mul/x:output:0%dense_2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/mul
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityη	
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall^dense/StatefulPartitionedCall-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall/^dense_1/bias/Regularizer/Square/ReadVariableOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall/^dense_2/bias/Regularizer/Square/ReadVariableOp1^dense_2/kernel/Regularizer/Square/ReadVariableOp ^dense_3/StatefulPartitionedCall ^p_re_lu/StatefulPartitionedCall"^p_re_lu_1/StatefulPartitionedCall"^p_re_lu_2/StatefulPartitionedCall"^p_re_lu_3/StatefulPartitionedCall"^p_re_lu_4/StatefulPartitionedCall"^p_re_lu_5/StatefulPartitionedCall"^p_re_lu_6/StatefulPartitionedCall"^p_re_lu_7/StatefulPartitionedCall)^separable_conv2d/StatefulPartitionedCall+^separable_conv2d_1/StatefulPartitionedCall+^separable_conv2d_2/StatefulPartitionedCall+^separable_conv2d_3/StatefulPartitionedCall+^separable_conv2d_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2`
.dense_2/bias/Regularizer/Square/ReadVariableOp.dense_2/bias/Regularizer/Square/ReadVariableOp2d
0dense_2/kernel/Regularizer/Square/ReadVariableOp0dense_2/kernel/Regularizer/Square/ReadVariableOp2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
p_re_lu/StatefulPartitionedCallp_re_lu/StatefulPartitionedCall2F
!p_re_lu_1/StatefulPartitionedCall!p_re_lu_1/StatefulPartitionedCall2F
!p_re_lu_2/StatefulPartitionedCall!p_re_lu_2/StatefulPartitionedCall2F
!p_re_lu_3/StatefulPartitionedCall!p_re_lu_3/StatefulPartitionedCall2F
!p_re_lu_4/StatefulPartitionedCall!p_re_lu_4/StatefulPartitionedCall2F
!p_re_lu_5/StatefulPartitionedCall!p_re_lu_5/StatefulPartitionedCall2F
!p_re_lu_6/StatefulPartitionedCall!p_re_lu_6/StatefulPartitionedCall2F
!p_re_lu_7/StatefulPartitionedCall!p_re_lu_7/StatefulPartitionedCall2T
(separable_conv2d/StatefulPartitionedCall(separable_conv2d/StatefulPartitionedCall2X
*separable_conv2d_1/StatefulPartitionedCall*separable_conv2d_1/StatefulPartitionedCall2X
*separable_conv2d_2/StatefulPartitionedCall*separable_conv2d_2/StatefulPartitionedCall2X
*separable_conv2d_3/StatefulPartitionedCall*separable_conv2d_3/StatefulPartitionedCall2X
*separable_conv2d_4/StatefulPartitionedCall*separable_conv2d_4/StatefulPartitionedCall:Z V
1
_output_shapes
:?????????
!
_user_specified_name	input_1
τ
a
C__inference_dropout_layer_call_and_return_conditional_losses_104811

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
φ
Ρ
6__inference_batch_normalization_2_layer_call_fn_104126

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity’StatefulPartitionedCall‘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1018002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Ί
΄
3__inference_separable_conv2d_2_layer_call_fn_104050

inputs!
unknown: #
	unknown_0: @
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_1009982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?³
Y
"__inference__traced_restore_105920
file_prefixL
2assignvariableop_separable_conv2d_depthwise_kernel:N
4assignvariableop_1_separable_conv2d_pointwise_kernel::
,assignvariableop_2_batch_normalization_gamma:9
+assignvariableop_3_batch_normalization_beta:@
2assignvariableop_4_batch_normalization_moving_mean:D
6assignvariableop_5_batch_normalization_moving_variance:6
 assignvariableop_6_p_re_lu_alpha:P
6assignvariableop_7_separable_conv2d_1_depthwise_kernel:P
6assignvariableop_8_separable_conv2d_1_pointwise_kernel: <
.assignvariableop_9_batch_normalization_1_gamma: <
.assignvariableop_10_batch_normalization_1_beta: C
5assignvariableop_11_batch_normalization_1_moving_mean: G
9assignvariableop_12_batch_normalization_1_moving_variance: 9
#assignvariableop_13_p_re_lu_1_alpha: Q
7assignvariableop_14_separable_conv2d_2_depthwise_kernel: Q
7assignvariableop_15_separable_conv2d_2_pointwise_kernel: @=
/assignvariableop_16_batch_normalization_2_gamma:@<
.assignvariableop_17_batch_normalization_2_beta:@C
5assignvariableop_18_batch_normalization_2_moving_mean:@G
9assignvariableop_19_batch_normalization_2_moving_variance:@9
#assignvariableop_20_p_re_lu_2_alpha:@Q
7assignvariableop_21_separable_conv2d_3_depthwise_kernel:@R
7assignvariableop_22_separable_conv2d_3_pointwise_kernel:@>
/assignvariableop_23_batch_normalization_3_gamma:	=
.assignvariableop_24_batch_normalization_3_beta:	D
5assignvariableop_25_batch_normalization_3_moving_mean:	H
9assignvariableop_26_batch_normalization_3_moving_variance:	:
#assignvariableop_27_p_re_lu_3_alpha:R
7assignvariableop_28_separable_conv2d_4_depthwise_kernel:S
7assignvariableop_29_separable_conv2d_4_pointwise_kernel:>
/assignvariableop_30_batch_normalization_4_gamma:	=
.assignvariableop_31_batch_normalization_4_beta:	D
5assignvariableop_32_batch_normalization_4_moving_mean:	H
9assignvariableop_33_batch_normalization_4_moving_variance:	:
#assignvariableop_34_p_re_lu_4_alpha:4
 assignvariableop_35_dense_kernel:
-
assignvariableop_36_dense_bias:	2
#assignvariableop_37_p_re_lu_5_alpha:	5
"assignvariableop_38_dense_1_kernel:	@.
 assignvariableop_39_dense_1_bias:@1
#assignvariableop_40_p_re_lu_6_alpha:@4
"assignvariableop_41_dense_2_kernel:@ .
 assignvariableop_42_dense_2_bias: 1
#assignvariableop_43_p_re_lu_7_alpha: 4
"assignvariableop_44_dense_3_kernel: .
 assignvariableop_45_dense_3_bias:'
assignvariableop_46_adam_iter:	 )
assignvariableop_47_adam_beta_1: )
assignvariableop_48_adam_beta_2: (
assignvariableop_49_adam_decay: 0
&assignvariableop_50_adam_learning_rate: #
assignvariableop_51_total: #
assignvariableop_52_count: %
assignvariableop_53_total_1: %
assignvariableop_54_count_1: V
<assignvariableop_55_adam_separable_conv2d_depthwise_kernel_m:V
<assignvariableop_56_adam_separable_conv2d_pointwise_kernel_m:B
4assignvariableop_57_adam_batch_normalization_gamma_m:A
3assignvariableop_58_adam_batch_normalization_beta_m:>
(assignvariableop_59_adam_p_re_lu_alpha_m:X
>assignvariableop_60_adam_separable_conv2d_1_depthwise_kernel_m:X
>assignvariableop_61_adam_separable_conv2d_1_pointwise_kernel_m: D
6assignvariableop_62_adam_batch_normalization_1_gamma_m: C
5assignvariableop_63_adam_batch_normalization_1_beta_m: @
*assignvariableop_64_adam_p_re_lu_1_alpha_m: X
>assignvariableop_65_adam_separable_conv2d_2_depthwise_kernel_m: X
>assignvariableop_66_adam_separable_conv2d_2_pointwise_kernel_m: @D
6assignvariableop_67_adam_batch_normalization_2_gamma_m:@C
5assignvariableop_68_adam_batch_normalization_2_beta_m:@@
*assignvariableop_69_adam_p_re_lu_2_alpha_m:@X
>assignvariableop_70_adam_separable_conv2d_3_depthwise_kernel_m:@Y
>assignvariableop_71_adam_separable_conv2d_3_pointwise_kernel_m:@E
6assignvariableop_72_adam_batch_normalization_3_gamma_m:	D
5assignvariableop_73_adam_batch_normalization_3_beta_m:	A
*assignvariableop_74_adam_p_re_lu_3_alpha_m:Y
>assignvariableop_75_adam_separable_conv2d_4_depthwise_kernel_m:Z
>assignvariableop_76_adam_separable_conv2d_4_pointwise_kernel_m:E
6assignvariableop_77_adam_batch_normalization_4_gamma_m:	D
5assignvariableop_78_adam_batch_normalization_4_beta_m:	A
*assignvariableop_79_adam_p_re_lu_4_alpha_m:;
'assignvariableop_80_adam_dense_kernel_m:
4
%assignvariableop_81_adam_dense_bias_m:	9
*assignvariableop_82_adam_p_re_lu_5_alpha_m:	<
)assignvariableop_83_adam_dense_1_kernel_m:	@5
'assignvariableop_84_adam_dense_1_bias_m:@8
*assignvariableop_85_adam_p_re_lu_6_alpha_m:@;
)assignvariableop_86_adam_dense_2_kernel_m:@ 5
'assignvariableop_87_adam_dense_2_bias_m: 8
*assignvariableop_88_adam_p_re_lu_7_alpha_m: ;
)assignvariableop_89_adam_dense_3_kernel_m: 5
'assignvariableop_90_adam_dense_3_bias_m:V
<assignvariableop_91_adam_separable_conv2d_depthwise_kernel_v:V
<assignvariableop_92_adam_separable_conv2d_pointwise_kernel_v:B
4assignvariableop_93_adam_batch_normalization_gamma_v:A
3assignvariableop_94_adam_batch_normalization_beta_v:>
(assignvariableop_95_adam_p_re_lu_alpha_v:X
>assignvariableop_96_adam_separable_conv2d_1_depthwise_kernel_v:X
>assignvariableop_97_adam_separable_conv2d_1_pointwise_kernel_v: D
6assignvariableop_98_adam_batch_normalization_1_gamma_v: C
5assignvariableop_99_adam_batch_normalization_1_beta_v: A
+assignvariableop_100_adam_p_re_lu_1_alpha_v: Y
?assignvariableop_101_adam_separable_conv2d_2_depthwise_kernel_v: Y
?assignvariableop_102_adam_separable_conv2d_2_pointwise_kernel_v: @E
7assignvariableop_103_adam_batch_normalization_2_gamma_v:@D
6assignvariableop_104_adam_batch_normalization_2_beta_v:@A
+assignvariableop_105_adam_p_re_lu_2_alpha_v:@Y
?assignvariableop_106_adam_separable_conv2d_3_depthwise_kernel_v:@Z
?assignvariableop_107_adam_separable_conv2d_3_pointwise_kernel_v:@F
7assignvariableop_108_adam_batch_normalization_3_gamma_v:	E
6assignvariableop_109_adam_batch_normalization_3_beta_v:	B
+assignvariableop_110_adam_p_re_lu_3_alpha_v:Z
?assignvariableop_111_adam_separable_conv2d_4_depthwise_kernel_v:[
?assignvariableop_112_adam_separable_conv2d_4_pointwise_kernel_v:F
7assignvariableop_113_adam_batch_normalization_4_gamma_v:	E
6assignvariableop_114_adam_batch_normalization_4_beta_v:	B
+assignvariableop_115_adam_p_re_lu_4_alpha_v:<
(assignvariableop_116_adam_dense_kernel_v:
5
&assignvariableop_117_adam_dense_bias_v:	:
+assignvariableop_118_adam_p_re_lu_5_alpha_v:	=
*assignvariableop_119_adam_dense_1_kernel_v:	@6
(assignvariableop_120_adam_dense_1_bias_v:@9
+assignvariableop_121_adam_p_re_lu_6_alpha_v:@<
*assignvariableop_122_adam_dense_2_kernel_v:@ 6
(assignvariableop_123_adam_dense_2_bias_v: 9
+assignvariableop_124_adam_p_re_lu_7_alpha_v: <
*assignvariableop_125_adam_dense_3_kernel_v: 6
(assignvariableop_126_adam_dense_3_bias_v:
identity_128’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_100’AssignVariableOp_101’AssignVariableOp_102’AssignVariableOp_103’AssignVariableOp_104’AssignVariableOp_105’AssignVariableOp_106’AssignVariableOp_107’AssignVariableOp_108’AssignVariableOp_109’AssignVariableOp_11’AssignVariableOp_110’AssignVariableOp_111’AssignVariableOp_112’AssignVariableOp_113’AssignVariableOp_114’AssignVariableOp_115’AssignVariableOp_116’AssignVariableOp_117’AssignVariableOp_118’AssignVariableOp_119’AssignVariableOp_12’AssignVariableOp_120’AssignVariableOp_121’AssignVariableOp_122’AssignVariableOp_123’AssignVariableOp_124’AssignVariableOp_125’AssignVariableOp_126’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_33’AssignVariableOp_34’AssignVariableOp_35’AssignVariableOp_36’AssignVariableOp_37’AssignVariableOp_38’AssignVariableOp_39’AssignVariableOp_4’AssignVariableOp_40’AssignVariableOp_41’AssignVariableOp_42’AssignVariableOp_43’AssignVariableOp_44’AssignVariableOp_45’AssignVariableOp_46’AssignVariableOp_47’AssignVariableOp_48’AssignVariableOp_49’AssignVariableOp_5’AssignVariableOp_50’AssignVariableOp_51’AssignVariableOp_52’AssignVariableOp_53’AssignVariableOp_54’AssignVariableOp_55’AssignVariableOp_56’AssignVariableOp_57’AssignVariableOp_58’AssignVariableOp_59’AssignVariableOp_6’AssignVariableOp_60’AssignVariableOp_61’AssignVariableOp_62’AssignVariableOp_63’AssignVariableOp_64’AssignVariableOp_65’AssignVariableOp_66’AssignVariableOp_67’AssignVariableOp_68’AssignVariableOp_69’AssignVariableOp_7’AssignVariableOp_70’AssignVariableOp_71’AssignVariableOp_72’AssignVariableOp_73’AssignVariableOp_74’AssignVariableOp_75’AssignVariableOp_76’AssignVariableOp_77’AssignVariableOp_78’AssignVariableOp_79’AssignVariableOp_8’AssignVariableOp_80’AssignVariableOp_81’AssignVariableOp_82’AssignVariableOp_83’AssignVariableOp_84’AssignVariableOp_85’AssignVariableOp_86’AssignVariableOp_87’AssignVariableOp_88’AssignVariableOp_89’AssignVariableOp_9’AssignVariableOp_90’AssignVariableOp_91’AssignVariableOp_92’AssignVariableOp_93’AssignVariableOp_94’AssignVariableOp_95’AssignVariableOp_96’AssignVariableOp_97’AssignVariableOp_98’AssignVariableOp_99θJ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*σI
valueιIBζIB@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/alpha/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/alpha/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/alpha/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-9/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-9/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/alpha/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-12/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-12/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-14/alpha/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-16/alpha/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-18/alpha/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-20/alpha/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-9/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-9/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-12/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-12/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-14/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-16/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-18/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-20/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-9/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-9/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-12/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-12/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-14/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-16/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-18/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-20/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices²
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity±
AssignVariableOpAssignVariableOp2assignvariableop_separable_conv2d_depthwise_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ή
AssignVariableOp_1AssignVariableOp4assignvariableop_1_separable_conv2d_pointwise_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2±
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3°
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4·
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5»
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6₯
AssignVariableOp_6AssignVariableOp assignvariableop_6_p_re_lu_alphaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7»
AssignVariableOp_7AssignVariableOp6assignvariableop_7_separable_conv2d_1_depthwise_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8»
AssignVariableOp_8AssignVariableOp6assignvariableop_8_separable_conv2d_1_pointwise_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9³
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_1_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ά
AssignVariableOp_10AssignVariableOp.assignvariableop_10_batch_normalization_1_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11½
AssignVariableOp_11AssignVariableOp5assignvariableop_11_batch_normalization_1_moving_meanIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Α
AssignVariableOp_12AssignVariableOp9assignvariableop_12_batch_normalization_1_moving_varianceIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13«
AssignVariableOp_13AssignVariableOp#assignvariableop_13_p_re_lu_1_alphaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ώ
AssignVariableOp_14AssignVariableOp7assignvariableop_14_separable_conv2d_2_depthwise_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ώ
AssignVariableOp_15AssignVariableOp7assignvariableop_15_separable_conv2d_2_pointwise_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16·
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_2_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ά
AssignVariableOp_17AssignVariableOp.assignvariableop_17_batch_normalization_2_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18½
AssignVariableOp_18AssignVariableOp5assignvariableop_18_batch_normalization_2_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Α
AssignVariableOp_19AssignVariableOp9assignvariableop_19_batch_normalization_2_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20«
AssignVariableOp_20AssignVariableOp#assignvariableop_20_p_re_lu_2_alphaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ώ
AssignVariableOp_21AssignVariableOp7assignvariableop_21_separable_conv2d_3_depthwise_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ώ
AssignVariableOp_22AssignVariableOp7assignvariableop_22_separable_conv2d_3_pointwise_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23·
AssignVariableOp_23AssignVariableOp/assignvariableop_23_batch_normalization_3_gammaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ά
AssignVariableOp_24AssignVariableOp.assignvariableop_24_batch_normalization_3_betaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25½
AssignVariableOp_25AssignVariableOp5assignvariableop_25_batch_normalization_3_moving_meanIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Α
AssignVariableOp_26AssignVariableOp9assignvariableop_26_batch_normalization_3_moving_varianceIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27«
AssignVariableOp_27AssignVariableOp#assignvariableop_27_p_re_lu_3_alphaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ώ
AssignVariableOp_28AssignVariableOp7assignvariableop_28_separable_conv2d_4_depthwise_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Ώ
AssignVariableOp_29AssignVariableOp7assignvariableop_29_separable_conv2d_4_pointwise_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30·
AssignVariableOp_30AssignVariableOp/assignvariableop_30_batch_normalization_4_gammaIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Ά
AssignVariableOp_31AssignVariableOp.assignvariableop_31_batch_normalization_4_betaIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32½
AssignVariableOp_32AssignVariableOp5assignvariableop_32_batch_normalization_4_moving_meanIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Α
AssignVariableOp_33AssignVariableOp9assignvariableop_33_batch_normalization_4_moving_varianceIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34«
AssignVariableOp_34AssignVariableOp#assignvariableop_34_p_re_lu_4_alphaIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35¨
AssignVariableOp_35AssignVariableOp assignvariableop_35_dense_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36¦
AssignVariableOp_36AssignVariableOpassignvariableop_36_dense_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37«
AssignVariableOp_37AssignVariableOp#assignvariableop_37_p_re_lu_5_alphaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38ͺ
AssignVariableOp_38AssignVariableOp"assignvariableop_38_dense_1_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39¨
AssignVariableOp_39AssignVariableOp assignvariableop_39_dense_1_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40«
AssignVariableOp_40AssignVariableOp#assignvariableop_40_p_re_lu_6_alphaIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41ͺ
AssignVariableOp_41AssignVariableOp"assignvariableop_41_dense_2_kernelIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42¨
AssignVariableOp_42AssignVariableOp assignvariableop_42_dense_2_biasIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43«
AssignVariableOp_43AssignVariableOp#assignvariableop_43_p_re_lu_7_alphaIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44ͺ
AssignVariableOp_44AssignVariableOp"assignvariableop_44_dense_3_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45¨
AssignVariableOp_45AssignVariableOp assignvariableop_45_dense_3_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_46₯
AssignVariableOp_46AssignVariableOpassignvariableop_46_adam_iterIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47§
AssignVariableOp_47AssignVariableOpassignvariableop_47_adam_beta_1Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48§
AssignVariableOp_48AssignVariableOpassignvariableop_48_adam_beta_2Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49¦
AssignVariableOp_49AssignVariableOpassignvariableop_49_adam_decayIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_learning_rateIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51‘
AssignVariableOp_51AssignVariableOpassignvariableop_51_totalIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52‘
AssignVariableOp_52AssignVariableOpassignvariableop_52_countIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53£
AssignVariableOp_53AssignVariableOpassignvariableop_53_total_1Identity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54£
AssignVariableOp_54AssignVariableOpassignvariableop_54_count_1Identity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55Δ
AssignVariableOp_55AssignVariableOp<assignvariableop_55_adam_separable_conv2d_depthwise_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56Δ
AssignVariableOp_56AssignVariableOp<assignvariableop_56_adam_separable_conv2d_pointwise_kernel_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57Ό
AssignVariableOp_57AssignVariableOp4assignvariableop_57_adam_batch_normalization_gamma_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58»
AssignVariableOp_58AssignVariableOp3assignvariableop_58_adam_batch_normalization_beta_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59°
AssignVariableOp_59AssignVariableOp(assignvariableop_59_adam_p_re_lu_alpha_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60Ζ
AssignVariableOp_60AssignVariableOp>assignvariableop_60_adam_separable_conv2d_1_depthwise_kernel_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61Ζ
AssignVariableOp_61AssignVariableOp>assignvariableop_61_adam_separable_conv2d_1_pointwise_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62Ύ
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_batch_normalization_1_gamma_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63½
AssignVariableOp_63AssignVariableOp5assignvariableop_63_adam_batch_normalization_1_beta_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64²
AssignVariableOp_64AssignVariableOp*assignvariableop_64_adam_p_re_lu_1_alpha_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65Ζ
AssignVariableOp_65AssignVariableOp>assignvariableop_65_adam_separable_conv2d_2_depthwise_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66Ζ
AssignVariableOp_66AssignVariableOp>assignvariableop_66_adam_separable_conv2d_2_pointwise_kernel_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67Ύ
AssignVariableOp_67AssignVariableOp6assignvariableop_67_adam_batch_normalization_2_gamma_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68½
AssignVariableOp_68AssignVariableOp5assignvariableop_68_adam_batch_normalization_2_beta_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69²
AssignVariableOp_69AssignVariableOp*assignvariableop_69_adam_p_re_lu_2_alpha_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70Ζ
AssignVariableOp_70AssignVariableOp>assignvariableop_70_adam_separable_conv2d_3_depthwise_kernel_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71Ζ
AssignVariableOp_71AssignVariableOp>assignvariableop_71_adam_separable_conv2d_3_pointwise_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72Ύ
AssignVariableOp_72AssignVariableOp6assignvariableop_72_adam_batch_normalization_3_gamma_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73½
AssignVariableOp_73AssignVariableOp5assignvariableop_73_adam_batch_normalization_3_beta_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74²
AssignVariableOp_74AssignVariableOp*assignvariableop_74_adam_p_re_lu_3_alpha_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75Ζ
AssignVariableOp_75AssignVariableOp>assignvariableop_75_adam_separable_conv2d_4_depthwise_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76Ζ
AssignVariableOp_76AssignVariableOp>assignvariableop_76_adam_separable_conv2d_4_pointwise_kernel_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77Ύ
AssignVariableOp_77AssignVariableOp6assignvariableop_77_adam_batch_normalization_4_gamma_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78½
AssignVariableOp_78AssignVariableOp5assignvariableop_78_adam_batch_normalization_4_beta_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79²
AssignVariableOp_79AssignVariableOp*assignvariableop_79_adam_p_re_lu_4_alpha_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80―
AssignVariableOp_80AssignVariableOp'assignvariableop_80_adam_dense_kernel_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81­
AssignVariableOp_81AssignVariableOp%assignvariableop_81_adam_dense_bias_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82²
AssignVariableOp_82AssignVariableOp*assignvariableop_82_adam_p_re_lu_5_alpha_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83±
AssignVariableOp_83AssignVariableOp)assignvariableop_83_adam_dense_1_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84―
AssignVariableOp_84AssignVariableOp'assignvariableop_84_adam_dense_1_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85²
AssignVariableOp_85AssignVariableOp*assignvariableop_85_adam_p_re_lu_6_alpha_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86±
AssignVariableOp_86AssignVariableOp)assignvariableop_86_adam_dense_2_kernel_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87―
AssignVariableOp_87AssignVariableOp'assignvariableop_87_adam_dense_2_bias_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88²
AssignVariableOp_88AssignVariableOp*assignvariableop_88_adam_p_re_lu_7_alpha_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89±
AssignVariableOp_89AssignVariableOp)assignvariableop_89_adam_dense_3_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90―
AssignVariableOp_90AssignVariableOp'assignvariableop_90_adam_dense_3_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91Δ
AssignVariableOp_91AssignVariableOp<assignvariableop_91_adam_separable_conv2d_depthwise_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92Δ
AssignVariableOp_92AssignVariableOp<assignvariableop_92_adam_separable_conv2d_pointwise_kernel_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93Ό
AssignVariableOp_93AssignVariableOp4assignvariableop_93_adam_batch_normalization_gamma_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94»
AssignVariableOp_94AssignVariableOp3assignvariableop_94_adam_batch_normalization_beta_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95°
AssignVariableOp_95AssignVariableOp(assignvariableop_95_adam_p_re_lu_alpha_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96Ζ
AssignVariableOp_96AssignVariableOp>assignvariableop_96_adam_separable_conv2d_1_depthwise_kernel_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97Ζ
AssignVariableOp_97AssignVariableOp>assignvariableop_97_adam_separable_conv2d_1_pointwise_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98Ύ
AssignVariableOp_98AssignVariableOp6assignvariableop_98_adam_batch_normalization_1_gamma_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99½
AssignVariableOp_99AssignVariableOp5assignvariableop_99_adam_batch_normalization_1_beta_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100Ά
AssignVariableOp_100AssignVariableOp+assignvariableop_100_adam_p_re_lu_1_alpha_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101Κ
AssignVariableOp_101AssignVariableOp?assignvariableop_101_adam_separable_conv2d_2_depthwise_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102Κ
AssignVariableOp_102AssignVariableOp?assignvariableop_102_adam_separable_conv2d_2_pointwise_kernel_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103Β
AssignVariableOp_103AssignVariableOp7assignvariableop_103_adam_batch_normalization_2_gamma_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104Α
AssignVariableOp_104AssignVariableOp6assignvariableop_104_adam_batch_normalization_2_beta_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105Ά
AssignVariableOp_105AssignVariableOp+assignvariableop_105_adam_p_re_lu_2_alpha_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106Κ
AssignVariableOp_106AssignVariableOp?assignvariableop_106_adam_separable_conv2d_3_depthwise_kernel_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107Κ
AssignVariableOp_107AssignVariableOp?assignvariableop_107_adam_separable_conv2d_3_pointwise_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108Β
AssignVariableOp_108AssignVariableOp7assignvariableop_108_adam_batch_normalization_3_gamma_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109Α
AssignVariableOp_109AssignVariableOp6assignvariableop_109_adam_batch_normalization_3_beta_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110Ά
AssignVariableOp_110AssignVariableOp+assignvariableop_110_adam_p_re_lu_3_alpha_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111Κ
AssignVariableOp_111AssignVariableOp?assignvariableop_111_adam_separable_conv2d_4_depthwise_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112Κ
AssignVariableOp_112AssignVariableOp?assignvariableop_112_adam_separable_conv2d_4_pointwise_kernel_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113Β
AssignVariableOp_113AssignVariableOp7assignvariableop_113_adam_batch_normalization_4_gamma_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114Α
AssignVariableOp_114AssignVariableOp6assignvariableop_114_adam_batch_normalization_4_beta_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115Ά
AssignVariableOp_115AssignVariableOp+assignvariableop_115_adam_p_re_lu_4_alpha_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116³
AssignVariableOp_116AssignVariableOp(assignvariableop_116_adam_dense_kernel_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117±
AssignVariableOp_117AssignVariableOp&assignvariableop_117_adam_dense_bias_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118Ά
AssignVariableOp_118AssignVariableOp+assignvariableop_118_adam_p_re_lu_5_alpha_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_118q
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:2
Identity_119΅
AssignVariableOp_119AssignVariableOp*assignvariableop_119_adam_dense_1_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119q
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:2
Identity_120³
AssignVariableOp_120AssignVariableOp(assignvariableop_120_adam_dense_1_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_120q
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:2
Identity_121Ά
AssignVariableOp_121AssignVariableOp+assignvariableop_121_adam_p_re_lu_6_alpha_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_121q
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:2
Identity_122΅
AssignVariableOp_122AssignVariableOp*assignvariableop_122_adam_dense_2_kernel_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_122q
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:2
Identity_123³
AssignVariableOp_123AssignVariableOp(assignvariableop_123_adam_dense_2_bias_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_123q
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:2
Identity_124Ά
AssignVariableOp_124AssignVariableOp+assignvariableop_124_adam_p_re_lu_7_alpha_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_124q
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:2
Identity_125΅
AssignVariableOp_125AssignVariableOp*assignvariableop_125_adam_dense_3_kernel_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_125q
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:2
Identity_126³
AssignVariableOp_126AssignVariableOp(assignvariableop_126_adam_dense_3_bias_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpε
Identity_127Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_127i
Identity_128IdentityIdentity_127:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_128Λ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"%
identity_128Identity_128:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262*
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
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Έ

*__inference_p_re_lu_2_layer_call_fn_104205

inputs
unknown:@
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_1002202
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????@: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
Έ
€
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_100220

inputs-
readvariableop_resource:@
identity’ReadVariableOph
ReluReluinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:@*
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:@2
Negi
Neg_1Neginputs*
T0*A
_output_shapes/
-:+???????????????????????????@2
Neg_1o
Relu_1Relu	Neg_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu_1|
mulMulNeg:y:0Relu_1:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
mul|
addAddV2Relu:activations:0mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
add|
IdentityIdentityadd:z:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????@: 2 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
«
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_104027

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
μ

(__inference_p_re_lu_layer_call_fn_103764

inputs
unknown:
identity’StatefulPartitionedCallξ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_p_re_lu_layer_call_and_return_conditional_losses_1009122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????~~2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????~~: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
όΪ

A__inference_model_layer_call_and_return_conditional_losses_102730
input_11
separable_conv2d_102570:1
separable_conv2d_102572:(
batch_normalization_102575:(
batch_normalization_102577:(
batch_normalization_102579:(
batch_normalization_102581:$
p_re_lu_102584:3
separable_conv2d_1_102588:3
separable_conv2d_1_102590: *
batch_normalization_1_102593: *
batch_normalization_1_102595: *
batch_normalization_1_102597: *
batch_normalization_1_102599: &
p_re_lu_1_102602: 3
separable_conv2d_2_102606: 3
separable_conv2d_2_102608: @*
batch_normalization_2_102611:@*
batch_normalization_2_102613:@*
batch_normalization_2_102615:@*
batch_normalization_2_102617:@&
p_re_lu_2_102620:@3
separable_conv2d_3_102624:@4
separable_conv2d_3_102626:@+
batch_normalization_3_102629:	+
batch_normalization_3_102631:	+
batch_normalization_3_102633:	+
batch_normalization_3_102635:	'
p_re_lu_3_102638:4
separable_conv2d_4_102642:5
separable_conv2d_4_102644:+
batch_normalization_4_102647:	+
batch_normalization_4_102649:	+
batch_normalization_4_102651:	+
batch_normalization_4_102653:	'
p_re_lu_4_102656: 
dense_102661:

dense_102663:	
p_re_lu_5_102666:	!
dense_1_102670:	@
dense_1_102672:@
p_re_lu_6_102675:@ 
dense_2_102679:@ 
dense_2_102681: 
p_re_lu_7_102684:  
dense_3_102688: 
dense_3_102690:
identity’+batch_normalization/StatefulPartitionedCall’-batch_normalization_1/StatefulPartitionedCall’-batch_normalization_2/StatefulPartitionedCall’-batch_normalization_3/StatefulPartitionedCall’-batch_normalization_4/StatefulPartitionedCall’dense/StatefulPartitionedCall’,dense/bias/Regularizer/Square/ReadVariableOp’.dense/kernel/Regularizer/Square/ReadVariableOp’dense_1/StatefulPartitionedCall’.dense_1/bias/Regularizer/Square/ReadVariableOp’0dense_1/kernel/Regularizer/Square/ReadVariableOp’dense_2/StatefulPartitionedCall’.dense_2/bias/Regularizer/Square/ReadVariableOp’0dense_2/kernel/Regularizer/Square/ReadVariableOp’dense_3/StatefulPartitionedCall’dropout/StatefulPartitionedCall’!dropout_1/StatefulPartitionedCall’!dropout_2/StatefulPartitionedCall’p_re_lu/StatefulPartitionedCall’!p_re_lu_1/StatefulPartitionedCall’!p_re_lu_2/StatefulPartitionedCall’!p_re_lu_3/StatefulPartitionedCall’!p_re_lu_4/StatefulPartitionedCall’!p_re_lu_5/StatefulPartitionedCall’!p_re_lu_6/StatefulPartitionedCall’!p_re_lu_7/StatefulPartitionedCall’(separable_conv2d/StatefulPartitionedCall’*separable_conv2d_1/StatefulPartitionedCall’*separable_conv2d_2/StatefulPartitionedCall’*separable_conv2d_3/StatefulPartitionedCall’*separable_conv2d_4/StatefulPartitionedCallΕ
(separable_conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1separable_conv2d_102570separable_conv2d_102572*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_separable_conv2d_layer_call_and_return_conditional_losses_1008682*
(separable_conv2d/StatefulPartitionedCallΈ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall1separable_conv2d/StatefulPartitionedCall:output:0batch_normalization_102575batch_normalization_102577batch_normalization_102579batch_normalization_102581*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_1019302-
+batch_normalization/StatefulPartitionedCall³
p_re_lu/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0p_re_lu_102584*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_p_re_lu_layer_call_and_return_conditional_losses_1009122!
p_re_lu/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCall(p_re_lu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1009202
max_pooling2d/PartitionedCallξ
*separable_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0separable_conv2d_1_102588separable_conv2d_1_102590*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_1009332,
*separable_conv2d_1/StatefulPartitionedCallΘ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_102593batch_normalization_1_102595batch_normalization_1_102597batch_normalization_1_102599*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1018652/
-batch_normalization_1/StatefulPartitionedCall½
!p_re_lu_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0p_re_lu_1_102602*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_1_layer_call_and_return_conditional_losses_1009772#
!p_re_lu_1/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall*p_re_lu_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1009852!
max_pooling2d_1/PartitionedCallπ
*separable_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0separable_conv2d_2_102606separable_conv2d_2_102608*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_1009982,
*separable_conv2d_2/StatefulPartitionedCallΘ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_102611batch_normalization_2_102613batch_normalization_2_102615batch_normalization_2_102617*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1018002/
-batch_normalization_2/StatefulPartitionedCall½
!p_re_lu_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0p_re_lu_2_102620*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_1010422#
!p_re_lu_2/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall*p_re_lu_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1010502!
max_pooling2d_2/PartitionedCallρ
*separable_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0separable_conv2d_3_102624separable_conv2d_3_102626*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_1010632,
*separable_conv2d_3/StatefulPartitionedCallΙ
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_3/StatefulPartitionedCall:output:0batch_normalization_3_102629batch_normalization_3_102631batch_normalization_3_102633batch_normalization_3_102635*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1017352/
-batch_normalization_3/StatefulPartitionedCallΎ
!p_re_lu_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0p_re_lu_3_102638*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_1011072#
!p_re_lu_3/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall*p_re_lu_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1011152!
max_pooling2d_3/PartitionedCallρ
*separable_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0separable_conv2d_4_102642separable_conv2d_4_102644*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_1011282,
*separable_conv2d_4/StatefulPartitionedCallΙ
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_4/StatefulPartitionedCall:output:0batch_normalization_4_102647batch_normalization_4_102649batch_normalization_4_102651batch_normalization_4_102653*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1016702/
-batch_normalization_4/StatefulPartitionedCallΎ
!p_re_lu_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0p_re_lu_4_102656*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_1011722#
!p_re_lu_4/StatefulPartitionedCall
max_pooling2d_4/PartitionedCallPartitionedCall*p_re_lu_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1011802!
max_pooling2d_4/PartitionedCallτ
flatten/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1011882
flatten/PartitionedCall 
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_102661dense_102663*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1012122
dense/StatefulPartitionedCall¦
!p_re_lu_5/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0p_re_lu_5_102666*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_1012292#
!p_re_lu_5/StatefulPartitionedCall
dropout/StatefulPartitionedCallStatefulPartitionedCall*p_re_lu_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1015992!
dropout/StatefulPartitionedCall±
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_102670dense_1_102672*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1012622!
dense_1/StatefulPartitionedCall§
!p_re_lu_6/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0p_re_lu_6_102675*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_1012792#
!p_re_lu_6/StatefulPartitionedCall΅
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall*p_re_lu_6/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1015592#
!dropout_1/StatefulPartitionedCall³
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_102679dense_2_102681*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1013122!
dense_2/StatefulPartitionedCall§
!p_re_lu_7/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0p_re_lu_7_102684*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_1013292#
!p_re_lu_7/StatefulPartitionedCall·
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall*p_re_lu_7/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1015192#
!dropout_2/StatefulPartitionedCall³
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_3_102688dense_3_102690*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1013512!
dense_3/StatefulPartitionedCall―
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_102661* 
_output_shapes
:
*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp―
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense/kernel/Regularizer/mul/x΄
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mul¦
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_102663*
_output_shapes	
:*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp€
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constͺ
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mul΄
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_102670*
_output_shapes
:	@*
dtype022
0dense_1/kernel/Regularizer/Square/ReadVariableOp΄
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2#
!dense_1/kernel/Regularizer/Square
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_1/kernel/Regularizer/ConstΊ
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/Sum
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_1/kernel/Regularizer/mul/xΌ
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/mul«
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_102672*
_output_shapes
:@*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp©
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@2!
dense_1/bias/Regularizer/Square
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const²
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_1/bias/Regularizer/mul/x΄
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mul³
0dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_102679*
_output_shapes

:@ *
dtype022
0dense_2/kernel/Regularizer/Square/ReadVariableOp³
!dense_2/kernel/Regularizer/SquareSquare8dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2#
!dense_2/kernel/Regularizer/Square
 dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_2/kernel/Regularizer/ConstΊ
dense_2/kernel/Regularizer/SumSum%dense_2/kernel/Regularizer/Square:y:0)dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/Sum
 dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_2/kernel/Regularizer/mul/xΌ
dense_2/kernel/Regularizer/mulMul)dense_2/kernel/Regularizer/mul/x:output:0'dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/mul«
.dense_2/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_102681*
_output_shapes
: *
dtype020
.dense_2/bias/Regularizer/Square/ReadVariableOp©
dense_2/bias/Regularizer/SquareSquare6dense_2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: 2!
dense_2/bias/Regularizer/Square
dense_2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_2/bias/Regularizer/Const²
dense_2/bias/Regularizer/SumSum#dense_2/bias/Regularizer/Square:y:0'dense_2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/Sum
dense_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_2/bias/Regularizer/mul/x΄
dense_2/bias/Regularizer/mulMul'dense_2/bias/Regularizer/mul/x:output:0%dense_2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/mul
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

IdentityΡ

NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall^dense/StatefulPartitionedCall-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall/^dense_1/bias/Regularizer/Square/ReadVariableOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall/^dense_2/bias/Regularizer/Square/ReadVariableOp1^dense_2/kernel/Regularizer/Square/ReadVariableOp ^dense_3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall ^p_re_lu/StatefulPartitionedCall"^p_re_lu_1/StatefulPartitionedCall"^p_re_lu_2/StatefulPartitionedCall"^p_re_lu_3/StatefulPartitionedCall"^p_re_lu_4/StatefulPartitionedCall"^p_re_lu_5/StatefulPartitionedCall"^p_re_lu_6/StatefulPartitionedCall"^p_re_lu_7/StatefulPartitionedCall)^separable_conv2d/StatefulPartitionedCall+^separable_conv2d_1/StatefulPartitionedCall+^separable_conv2d_2/StatefulPartitionedCall+^separable_conv2d_3/StatefulPartitionedCall+^separable_conv2d_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2`
.dense_2/bias/Regularizer/Square/ReadVariableOp.dense_2/bias/Regularizer/Square/ReadVariableOp2d
0dense_2/kernel/Regularizer/Square/ReadVariableOp0dense_2/kernel/Regularizer/Square/ReadVariableOp2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2B
p_re_lu/StatefulPartitionedCallp_re_lu/StatefulPartitionedCall2F
!p_re_lu_1/StatefulPartitionedCall!p_re_lu_1/StatefulPartitionedCall2F
!p_re_lu_2/StatefulPartitionedCall!p_re_lu_2/StatefulPartitionedCall2F
!p_re_lu_3/StatefulPartitionedCall!p_re_lu_3/StatefulPartitionedCall2F
!p_re_lu_4/StatefulPartitionedCall!p_re_lu_4/StatefulPartitionedCall2F
!p_re_lu_5/StatefulPartitionedCall!p_re_lu_5/StatefulPartitionedCall2F
!p_re_lu_6/StatefulPartitionedCall!p_re_lu_6/StatefulPartitionedCall2F
!p_re_lu_7/StatefulPartitionedCall!p_re_lu_7/StatefulPartitionedCall2T
(separable_conv2d/StatefulPartitionedCall(separable_conv2d/StatefulPartitionedCall2X
*separable_conv2d_1/StatefulPartitionedCall*separable_conv2d_1/StatefulPartitionedCall2X
*separable_conv2d_2/StatefulPartitionedCall*separable_conv2d_2/StatefulPartitionedCall2X
*separable_conv2d_3/StatefulPartitionedCall*separable_conv2d_3/StatefulPartitionedCall2X
*separable_conv2d_4/StatefulPartitionedCall*separable_conv2d_4/StatefulPartitionedCall:Z V
1
_output_shapes
:?????????
!
_user_specified_name	input_1
Ξ
ΐ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_101865

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ψ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????== : : : : :*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????== 2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????== : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs
Ϋ	

E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_104796

inputs&
readvariableop_resource:	
identity’ReadVariableOpO
ReluReluinputs*
T0*(
_output_shapes
:?????????2
Reluu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOpO
NegNegReadVariableOp:value:0*
T0*
_output_shapes	
:2
NegP
Neg_1Neginputs*
T0*(
_output_shapes
:?????????2
Neg_1V
Relu_1Relu	Neg_1:y:0*
T0*(
_output_shapes
:?????????2
Relu_1c
mulMulNeg:y:0Relu_1:activations:0*
T0*(
_output_shapes
:?????????2
mulc
addAddV2Relu:activations:0mul:z:0*
T0*(
_output_shapes
:?????????2
addc
IdentityIdentityadd:z:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:?????????: 2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
σ
 
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_104368

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1α
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
«
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_104251

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs


O__inference_batch_normalization_layer_call_and_return_conditional_losses_103732

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Κ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????~~2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????~~: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs

ΐ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_104162

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1κ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
«
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_105039

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΄
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>2
dropout/GreaterEqual/yΎ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
σ
 
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_104592

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1α
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
	
Υ
6__inference_batch_normalization_3_layer_call_fn_104337

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity’StatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1010862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
Ύ
Ψ
C__inference_dense_2_layer_call_and_return_conditional_losses_101312

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’.dense_2/bias/Regularizer/Square/ReadVariableOp’0dense_2/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddΓ
0dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype022
0dense_2/kernel/Regularizer/Square/ReadVariableOp³
!dense_2/kernel/Regularizer/SquareSquare8dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2#
!dense_2/kernel/Regularizer/Square
 dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_2/kernel/Regularizer/ConstΊ
dense_2/kernel/Regularizer/SumSum%dense_2/kernel/Regularizer/Square:y:0)dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/Sum
 dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_2/kernel/Regularizer/mul/xΌ
dense_2/kernel/Regularizer/mulMul)dense_2/kernel/Regularizer/mul/x:output:0'dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/mulΌ
.dense_2/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.dense_2/bias/Regularizer/Square/ReadVariableOp©
dense_2/bias/Regularizer/SquareSquare6dense_2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: 2!
dense_2/bias/Regularizer/Square
dense_2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_2/bias/Regularizer/Const²
dense_2/bias/Regularizer/SumSum#dense_2/bias/Regularizer/Square:y:0'dense_2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/Sum
dense_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_2/bias/Regularizer/mul/x΄
dense_2/bias/Regularizer/mulMul'dense_2/bias/Regularizer/mul/x:output:0%dense_2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityγ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_2/bias/Regularizer/Square/ReadVariableOp1^dense_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_2/bias/Regularizer/Square/ReadVariableOp.dense_2/bias/Regularizer/Square/ReadVariableOp2d
0dense_2/kernel/Regularizer/Square/ReadVariableOp0dense_2/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
π
½
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_104062

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource: @
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
separable_conv2d/ReadVariableOpΉ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: @*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateχ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
2
separable_conv2d/depthwiseσ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
2
separable_conv2d
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs


Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_101021

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Κ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Ά
’
C__inference_p_re_lu_layer_call_and_return_conditional_losses_103776

inputs-
readvariableop_resource:
identity’ReadVariableOph
ReluReluinputs*
T0*A
_output_shapes/
-:+???????????????????????????2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:*
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:2
Negi
Neg_1Neginputs*
T0*A
_output_shapes/
-:+???????????????????????????2
Neg_1o
Relu_1Relu	Neg_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Relu_1|
mulMulNeg:y:0Relu_1:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????2
mul|
addAddV2Relu:activations:0mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2
add|
IdentityIdentityadd:z:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????: 2 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
Δ
Ω
C__inference_dense_1_layer_call_and_return_conditional_losses_101262

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’.dense_1/bias/Regularizer/Square/ReadVariableOp’0dense_1/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddΔ
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype022
0dense_1/kernel/Regularizer/Square/ReadVariableOp΄
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2#
!dense_1/kernel/Regularizer/Square
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_1/kernel/Regularizer/ConstΊ
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/Sum
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_1/kernel/Regularizer/mul/xΌ
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/mulΌ
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp©
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@2!
dense_1/bias/Regularizer/Square
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const²
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_1/bias/Regularizer/mul/x΄
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityγ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_1/bias/Regularizer/Square/ReadVariableOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
«
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_104931

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUΥ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΄
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ>2
dropout/GreaterEqual/yΎ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
§
Δ
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_100608

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ο
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
§
Δ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_104386

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ο
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
ε
Α
&__inference_model_layer_call_fn_102968

inputs!
unknown:#
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:#
	unknown_6:#
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: $

unknown_13: $

unknown_14: @

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@ 

unknown_19:@$

unknown_20:@%

unknown_21:@

unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	!

unknown_26:%

unknown_27:&

unknown_28:

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	!

unknown_33:

unknown_34:


unknown_35:	

unknown_36:	

unknown_37:	@

unknown_38:@

unknown_39:@

unknown_40:@ 

unknown_41: 

unknown_42: 

unknown_43: 

unknown_44:
identity’StatefulPartitionedCallΠ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1013942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
»	
Ο
4__inference_batch_normalization_layer_call_fn_103639

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_996362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
Ύ
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_101050

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Ξ
D
(__inference_flatten_layer_call_fn_104709

inputs
identityΒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1011882
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
Β
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_101115

inputs
identity
MaxPoolMaxPoolinputs*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
π
½
N__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_103838

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource: 
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOpΉ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateχ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
separable_conv2d/depthwiseσ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
2
separable_conv2d
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
΅Φ
€
A__inference_model_layer_call_and_return_conditional_losses_101394

inputs1
separable_conv2d_100869:1
separable_conv2d_100871:(
batch_normalization_100892:(
batch_normalization_100894:(
batch_normalization_100896:(
batch_normalization_100898:$
p_re_lu_100913:3
separable_conv2d_1_100934:3
separable_conv2d_1_100936: *
batch_normalization_1_100957: *
batch_normalization_1_100959: *
batch_normalization_1_100961: *
batch_normalization_1_100963: &
p_re_lu_1_100978: 3
separable_conv2d_2_100999: 3
separable_conv2d_2_101001: @*
batch_normalization_2_101022:@*
batch_normalization_2_101024:@*
batch_normalization_2_101026:@*
batch_normalization_2_101028:@&
p_re_lu_2_101043:@3
separable_conv2d_3_101064:@4
separable_conv2d_3_101066:@+
batch_normalization_3_101087:	+
batch_normalization_3_101089:	+
batch_normalization_3_101091:	+
batch_normalization_3_101093:	'
p_re_lu_3_101108:4
separable_conv2d_4_101129:5
separable_conv2d_4_101131:+
batch_normalization_4_101152:	+
batch_normalization_4_101154:	+
batch_normalization_4_101156:	+
batch_normalization_4_101158:	'
p_re_lu_4_101173: 
dense_101213:

dense_101215:	
p_re_lu_5_101230:	!
dense_1_101263:	@
dense_1_101265:@
p_re_lu_6_101280:@ 
dense_2_101313:@ 
dense_2_101315: 
p_re_lu_7_101330:  
dense_3_101352: 
dense_3_101354:
identity’+batch_normalization/StatefulPartitionedCall’-batch_normalization_1/StatefulPartitionedCall’-batch_normalization_2/StatefulPartitionedCall’-batch_normalization_3/StatefulPartitionedCall’-batch_normalization_4/StatefulPartitionedCall’dense/StatefulPartitionedCall’,dense/bias/Regularizer/Square/ReadVariableOp’.dense/kernel/Regularizer/Square/ReadVariableOp’dense_1/StatefulPartitionedCall’.dense_1/bias/Regularizer/Square/ReadVariableOp’0dense_1/kernel/Regularizer/Square/ReadVariableOp’dense_2/StatefulPartitionedCall’.dense_2/bias/Regularizer/Square/ReadVariableOp’0dense_2/kernel/Regularizer/Square/ReadVariableOp’dense_3/StatefulPartitionedCall’p_re_lu/StatefulPartitionedCall’!p_re_lu_1/StatefulPartitionedCall’!p_re_lu_2/StatefulPartitionedCall’!p_re_lu_3/StatefulPartitionedCall’!p_re_lu_4/StatefulPartitionedCall’!p_re_lu_5/StatefulPartitionedCall’!p_re_lu_6/StatefulPartitionedCall’!p_re_lu_7/StatefulPartitionedCall’(separable_conv2d/StatefulPartitionedCall’*separable_conv2d_1/StatefulPartitionedCall’*separable_conv2d_2/StatefulPartitionedCall’*separable_conv2d_3/StatefulPartitionedCall’*separable_conv2d_4/StatefulPartitionedCallΔ
(separable_conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsseparable_conv2d_100869separable_conv2d_100871*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_separable_conv2d_layer_call_and_return_conditional_losses_1008682*
(separable_conv2d/StatefulPartitionedCallΊ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall1separable_conv2d/StatefulPartitionedCall:output:0batch_normalization_100892batch_normalization_100894batch_normalization_100896batch_normalization_100898*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_1008912-
+batch_normalization/StatefulPartitionedCall³
p_re_lu/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0p_re_lu_100913*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_p_re_lu_layer_call_and_return_conditional_losses_1009122!
p_re_lu/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCall(p_re_lu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1009202
max_pooling2d/PartitionedCallξ
*separable_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0separable_conv2d_1_100934separable_conv2d_1_100936*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_1009332,
*separable_conv2d_1/StatefulPartitionedCallΚ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_100957batch_normalization_1_100959batch_normalization_1_100961batch_normalization_1_100963*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1009562/
-batch_normalization_1/StatefulPartitionedCall½
!p_re_lu_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0p_re_lu_1_100978*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_1_layer_call_and_return_conditional_losses_1009772#
!p_re_lu_1/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall*p_re_lu_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1009852!
max_pooling2d_1/PartitionedCallπ
*separable_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0separable_conv2d_2_100999separable_conv2d_2_101001*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_1009982,
*separable_conv2d_2/StatefulPartitionedCallΚ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_101022batch_normalization_2_101024batch_normalization_2_101026batch_normalization_2_101028*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1010212/
-batch_normalization_2/StatefulPartitionedCall½
!p_re_lu_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0p_re_lu_2_101043*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_1010422#
!p_re_lu_2/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall*p_re_lu_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1010502!
max_pooling2d_2/PartitionedCallρ
*separable_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0separable_conv2d_3_101064separable_conv2d_3_101066*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_1010632,
*separable_conv2d_3/StatefulPartitionedCallΛ
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_3/StatefulPartitionedCall:output:0batch_normalization_3_101087batch_normalization_3_101089batch_normalization_3_101091batch_normalization_3_101093*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1010862/
-batch_normalization_3/StatefulPartitionedCallΎ
!p_re_lu_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0p_re_lu_3_101108*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_1011072#
!p_re_lu_3/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall*p_re_lu_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1011152!
max_pooling2d_3/PartitionedCallρ
*separable_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0separable_conv2d_4_101129separable_conv2d_4_101131*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_1011282,
*separable_conv2d_4/StatefulPartitionedCallΛ
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_4/StatefulPartitionedCall:output:0batch_normalization_4_101152batch_normalization_4_101154batch_normalization_4_101156batch_normalization_4_101158*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1011512/
-batch_normalization_4/StatefulPartitionedCallΎ
!p_re_lu_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0p_re_lu_4_101173*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_1011722#
!p_re_lu_4/StatefulPartitionedCall
max_pooling2d_4/PartitionedCallPartitionedCall*p_re_lu_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1011802!
max_pooling2d_4/PartitionedCallτ
flatten/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1011882
flatten/PartitionedCall 
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_101213dense_101215*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1012122
dense/StatefulPartitionedCall¦
!p_re_lu_5/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0p_re_lu_5_101230*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_1012292#
!p_re_lu_5/StatefulPartitionedCallφ
dropout/PartitionedCallPartitionedCall*p_re_lu_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1012382
dropout/PartitionedCall©
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_101263dense_1_101265*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1012622!
dense_1/StatefulPartitionedCall§
!p_re_lu_6/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0p_re_lu_6_101280*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_1012792#
!p_re_lu_6/StatefulPartitionedCallϋ
dropout_1/PartitionedCallPartitionedCall*p_re_lu_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1012882
dropout_1/PartitionedCall«
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_101313dense_2_101315*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1013122!
dense_2/StatefulPartitionedCall§
!p_re_lu_7/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0p_re_lu_7_101330*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_1013292#
!p_re_lu_7/StatefulPartitionedCallϋ
dropout_2/PartitionedCallPartitionedCall*p_re_lu_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1013382
dropout_2/PartitionedCall«
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_3_101352dense_3_101354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1013512!
dense_3/StatefulPartitionedCall―
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_101213* 
_output_shapes
:
*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp―
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense/kernel/Regularizer/mul/x΄
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mul¦
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_101215*
_output_shapes	
:*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp€
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constͺ
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mul΄
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_101263*
_output_shapes
:	@*
dtype022
0dense_1/kernel/Regularizer/Square/ReadVariableOp΄
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2#
!dense_1/kernel/Regularizer/Square
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_1/kernel/Regularizer/ConstΊ
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/Sum
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_1/kernel/Regularizer/mul/xΌ
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/mul«
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_101265*
_output_shapes
:@*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp©
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@2!
dense_1/bias/Regularizer/Square
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const²
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_1/bias/Regularizer/mul/x΄
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mul³
0dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_101313*
_output_shapes

:@ *
dtype022
0dense_2/kernel/Regularizer/Square/ReadVariableOp³
!dense_2/kernel/Regularizer/SquareSquare8dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2#
!dense_2/kernel/Regularizer/Square
 dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_2/kernel/Regularizer/ConstΊ
dense_2/kernel/Regularizer/SumSum%dense_2/kernel/Regularizer/Square:y:0)dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/Sum
 dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_2/kernel/Regularizer/mul/xΌ
dense_2/kernel/Regularizer/mulMul)dense_2/kernel/Regularizer/mul/x:output:0'dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/mul«
.dense_2/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_101315*
_output_shapes
: *
dtype020
.dense_2/bias/Regularizer/Square/ReadVariableOp©
dense_2/bias/Regularizer/SquareSquare6dense_2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: 2!
dense_2/bias/Regularizer/Square
dense_2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_2/bias/Regularizer/Const²
dense_2/bias/Regularizer/SumSum#dense_2/bias/Regularizer/Square:y:0'dense_2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/Sum
dense_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_2/bias/Regularizer/mul/x΄
dense_2/bias/Regularizer/mulMul'dense_2/bias/Regularizer/mul/x:output:0%dense_2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/mul
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityη	
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall^dense/StatefulPartitionedCall-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall/^dense_1/bias/Regularizer/Square/ReadVariableOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall/^dense_2/bias/Regularizer/Square/ReadVariableOp1^dense_2/kernel/Regularizer/Square/ReadVariableOp ^dense_3/StatefulPartitionedCall ^p_re_lu/StatefulPartitionedCall"^p_re_lu_1/StatefulPartitionedCall"^p_re_lu_2/StatefulPartitionedCall"^p_re_lu_3/StatefulPartitionedCall"^p_re_lu_4/StatefulPartitionedCall"^p_re_lu_5/StatefulPartitionedCall"^p_re_lu_6/StatefulPartitionedCall"^p_re_lu_7/StatefulPartitionedCall)^separable_conv2d/StatefulPartitionedCall+^separable_conv2d_1/StatefulPartitionedCall+^separable_conv2d_2/StatefulPartitionedCall+^separable_conv2d_3/StatefulPartitionedCall+^separable_conv2d_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2`
.dense_2/bias/Regularizer/Square/ReadVariableOp.dense_2/bias/Regularizer/Square/ReadVariableOp2d
0dense_2/kernel/Regularizer/Square/ReadVariableOp0dense_2/kernel/Regularizer/Square/ReadVariableOp2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
p_re_lu/StatefulPartitionedCallp_re_lu/StatefulPartitionedCall2F
!p_re_lu_1/StatefulPartitionedCall!p_re_lu_1/StatefulPartitionedCall2F
!p_re_lu_2/StatefulPartitionedCall!p_re_lu_2/StatefulPartitionedCall2F
!p_re_lu_3/StatefulPartitionedCall!p_re_lu_3/StatefulPartitionedCall2F
!p_re_lu_4/StatefulPartitionedCall!p_re_lu_4/StatefulPartitionedCall2F
!p_re_lu_5/StatefulPartitionedCall!p_re_lu_5/StatefulPartitionedCall2F
!p_re_lu_6/StatefulPartitionedCall!p_re_lu_6/StatefulPartitionedCall2F
!p_re_lu_7/StatefulPartitionedCall!p_re_lu_7/StatefulPartitionedCall2T
(separable_conv2d/StatefulPartitionedCall(separable_conv2d/StatefulPartitionedCall2X
*separable_conv2d_1/StatefulPartitionedCall*separable_conv2d_1/StatefulPartitionedCall2X
*separable_conv2d_2/StatefulPartitionedCall*separable_conv2d_2/StatefulPartitionedCall2X
*separable_conv2d_3/StatefulPartitionedCall*separable_conv2d_3/StatefulPartitionedCall2X
*separable_conv2d_4/StatefulPartitionedCall*separable_conv2d_4/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
 
ΐ
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_101128

inputsC
(separable_conv2d_readvariableop_resource:F
*separable_conv2d_readvariableop_1_resource:
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1΄
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOp»
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateζ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2
separable_conv2d/depthwiseβ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2
separable_conv2d}
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*0
_output_shapes
:?????????2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
 
a
(__inference_dropout_layer_call_fn_104806

inputs
identity’StatefulPartitionedCallΪ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1015992
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ψ
z
*__inference_p_re_lu_7_layer_call_fn_104981

inputs
unknown: 
identity’StatefulPartitionedCallθ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_1008262
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
ς

(__inference_dense_1_layer_call_fn_104844

inputs
unknown:	@
	unknown_0:@
identity’StatefulPartitionedCallσ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1012622
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
 
c
*__inference_dropout_1_layer_call_fn_104914

inputs
identity’StatefulPartitionedCallΫ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1015592
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
ψ
Ρ
6__inference_batch_normalization_2_layer_call_fn_104113

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity’StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1010212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs


O__inference_batch_normalization_layer_call_and_return_conditional_losses_100891

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Κ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????~~2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????~~: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
	
·
3__inference_separable_conv2d_4_layer_call_fn_104489

inputs"
unknown:%
	unknown_0:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_1005142
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
ύ	

E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_105000

inputs%
readvariableop_resource: 
identity’ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:??????????????????2
Relut
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpN
NegNegReadVariableOp:value:0*
T0*
_output_shapes
: 2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:??????????????????2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:??????????????????2
Relu_1b
mulMulNeg:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mulb
addAddV2Relu:activations:0mul:z:0*
T0*'
_output_shapes
:????????? 2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
π

*__inference_p_re_lu_1_layer_call_fn_103988

inputs
unknown: 
identity’StatefulPartitionedCallπ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_1_layer_call_and_return_conditional_losses_1009772
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????== 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????== : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs
Μ
Ύ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_103750

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ψ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????~~2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????~~: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
ω
Υ
A__inference_dense_layer_call_and_return_conditional_losses_104758

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’,dense/bias/Regularizer/Square/ReadVariableOp’.dense/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAddΑ
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp―
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense/kernel/Regularizer/mul/x΄
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mulΉ
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp€
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constͺ
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mull
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityί
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ξ
ΐ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_101800

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ψ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Χ
L
0__inference_max_pooling2d_2_layer_call_fn_104241

inputs
identityμ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1002532
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
	
΄
3__inference_separable_conv2d_1_layer_call_fn_103817

inputs!
unknown:#
	unknown_0: 
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_998182
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
τ
Ύ
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_104286

inputsB
(separable_conv2d_readvariableop_resource:@E
*separable_conv2d_readvariableop_1_resource:@
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
separable_conv2d/ReadVariableOpΊ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*'
_output_shapes
:@*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateχ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
2
separable_conv2d/depthwiseτ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingVALID*
strides
2
separable_conv2d
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs

½
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_100998

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource: @
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
separable_conv2d/ReadVariableOpΉ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: @*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateε
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
separable_conv2d/depthwiseα
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
separable_conv2d|
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs

½
N__inference_batch_normalization_layer_call_and_return_conditional_losses_99680

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1κ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
§
Δ
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_104610

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ο
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
³

₯
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_101172

inputs.
readvariableop_resource:
identity’ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:?????????2
Relu}
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:*
dtype02
ReadVariableOpW
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:?????????2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:?????????2
Relu_1k
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:?????????2
mulk
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:?????????2
addk
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
Ύ
D
(__inference_dropout_layer_call_fn_104801

inputs
identityΒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1012382
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
κ
L
0__inference_max_pooling2d_1_layer_call_fn_104022

inputs
identityΡ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1009852
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????== :W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs
ο
<
__inference__traced_save_105529
file_prefix@
<savev2_separable_conv2d_depthwise_kernel_read_readvariableop@
<savev2_separable_conv2d_pointwise_kernel_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop,
(savev2_p_re_lu_alpha_read_readvariableopB
>savev2_separable_conv2d_1_depthwise_kernel_read_readvariableopB
>savev2_separable_conv2d_1_pointwise_kernel_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop.
*savev2_p_re_lu_1_alpha_read_readvariableopB
>savev2_separable_conv2d_2_depthwise_kernel_read_readvariableopB
>savev2_separable_conv2d_2_pointwise_kernel_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop.
*savev2_p_re_lu_2_alpha_read_readvariableopB
>savev2_separable_conv2d_3_depthwise_kernel_read_readvariableopB
>savev2_separable_conv2d_3_pointwise_kernel_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop.
*savev2_p_re_lu_3_alpha_read_readvariableopB
>savev2_separable_conv2d_4_depthwise_kernel_read_readvariableopB
>savev2_separable_conv2d_4_pointwise_kernel_read_readvariableop:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableop.
*savev2_p_re_lu_4_alpha_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop.
*savev2_p_re_lu_5_alpha_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop.
*savev2_p_re_lu_6_alpha_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop.
*savev2_p_re_lu_7_alpha_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopG
Csavev2_adam_separable_conv2d_depthwise_kernel_m_read_readvariableopG
Csavev2_adam_separable_conv2d_pointwise_kernel_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableop3
/savev2_adam_p_re_lu_alpha_m_read_readvariableopI
Esavev2_adam_separable_conv2d_1_depthwise_kernel_m_read_readvariableopI
Esavev2_adam_separable_conv2d_1_pointwise_kernel_m_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_m_read_readvariableop5
1savev2_adam_p_re_lu_1_alpha_m_read_readvariableopI
Esavev2_adam_separable_conv2d_2_depthwise_kernel_m_read_readvariableopI
Esavev2_adam_separable_conv2d_2_pointwise_kernel_m_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_m_read_readvariableop5
1savev2_adam_p_re_lu_2_alpha_m_read_readvariableopI
Esavev2_adam_separable_conv2d_3_depthwise_kernel_m_read_readvariableopI
Esavev2_adam_separable_conv2d_3_pointwise_kernel_m_read_readvariableopA
=savev2_adam_batch_normalization_3_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_3_beta_m_read_readvariableop5
1savev2_adam_p_re_lu_3_alpha_m_read_readvariableopI
Esavev2_adam_separable_conv2d_4_depthwise_kernel_m_read_readvariableopI
Esavev2_adam_separable_conv2d_4_pointwise_kernel_m_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_m_read_readvariableop5
1savev2_adam_p_re_lu_4_alpha_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop5
1savev2_adam_p_re_lu_5_alpha_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop5
1savev2_adam_p_re_lu_6_alpha_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop5
1savev2_adam_p_re_lu_7_alpha_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopG
Csavev2_adam_separable_conv2d_depthwise_kernel_v_read_readvariableopG
Csavev2_adam_separable_conv2d_pointwise_kernel_v_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableop3
/savev2_adam_p_re_lu_alpha_v_read_readvariableopI
Esavev2_adam_separable_conv2d_1_depthwise_kernel_v_read_readvariableopI
Esavev2_adam_separable_conv2d_1_pointwise_kernel_v_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_v_read_readvariableop5
1savev2_adam_p_re_lu_1_alpha_v_read_readvariableopI
Esavev2_adam_separable_conv2d_2_depthwise_kernel_v_read_readvariableopI
Esavev2_adam_separable_conv2d_2_pointwise_kernel_v_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_v_read_readvariableop5
1savev2_adam_p_re_lu_2_alpha_v_read_readvariableopI
Esavev2_adam_separable_conv2d_3_depthwise_kernel_v_read_readvariableopI
Esavev2_adam_separable_conv2d_3_pointwise_kernel_v_read_readvariableopA
=savev2_adam_batch_normalization_3_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_3_beta_v_read_readvariableop5
1savev2_adam_p_re_lu_3_alpha_v_read_readvariableopI
Esavev2_adam_separable_conv2d_4_depthwise_kernel_v_read_readvariableopI
Esavev2_adam_separable_conv2d_4_pointwise_kernel_v_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_v_read_readvariableop5
1savev2_adam_p_re_lu_4_alpha_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop5
1savev2_adam_p_re_lu_5_alpha_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop5
1savev2_adam_p_re_lu_6_alpha_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop5
1savev2_adam_p_re_lu_7_alpha_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop
savev2_const

identity_1’MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameβJ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*σI
valueιIBζIB@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/alpha/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/alpha/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/alpha/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-9/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-9/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/alpha/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-12/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-12/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-14/alpha/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-16/alpha/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-18/alpha/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-20/alpha/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-9/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-9/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-12/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-12/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-14/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-16/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-18/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-20/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-9/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-9/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-12/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-12/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-14/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-16/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-18/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-20/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesπ9
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0<savev2_separable_conv2d_depthwise_kernel_read_readvariableop<savev2_separable_conv2d_pointwise_kernel_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop(savev2_p_re_lu_alpha_read_readvariableop>savev2_separable_conv2d_1_depthwise_kernel_read_readvariableop>savev2_separable_conv2d_1_pointwise_kernel_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop*savev2_p_re_lu_1_alpha_read_readvariableop>savev2_separable_conv2d_2_depthwise_kernel_read_readvariableop>savev2_separable_conv2d_2_pointwise_kernel_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop*savev2_p_re_lu_2_alpha_read_readvariableop>savev2_separable_conv2d_3_depthwise_kernel_read_readvariableop>savev2_separable_conv2d_3_pointwise_kernel_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop*savev2_p_re_lu_3_alpha_read_readvariableop>savev2_separable_conv2d_4_depthwise_kernel_read_readvariableop>savev2_separable_conv2d_4_pointwise_kernel_read_readvariableop6savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableop*savev2_p_re_lu_4_alpha_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop*savev2_p_re_lu_5_alpha_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop*savev2_p_re_lu_6_alpha_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop*savev2_p_re_lu_7_alpha_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopCsavev2_adam_separable_conv2d_depthwise_kernel_m_read_readvariableopCsavev2_adam_separable_conv2d_pointwise_kernel_m_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop/savev2_adam_p_re_lu_alpha_m_read_readvariableopEsavev2_adam_separable_conv2d_1_depthwise_kernel_m_read_readvariableopEsavev2_adam_separable_conv2d_1_pointwise_kernel_m_read_readvariableop=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop<savev2_adam_batch_normalization_1_beta_m_read_readvariableop1savev2_adam_p_re_lu_1_alpha_m_read_readvariableopEsavev2_adam_separable_conv2d_2_depthwise_kernel_m_read_readvariableopEsavev2_adam_separable_conv2d_2_pointwise_kernel_m_read_readvariableop=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop<savev2_adam_batch_normalization_2_beta_m_read_readvariableop1savev2_adam_p_re_lu_2_alpha_m_read_readvariableopEsavev2_adam_separable_conv2d_3_depthwise_kernel_m_read_readvariableopEsavev2_adam_separable_conv2d_3_pointwise_kernel_m_read_readvariableop=savev2_adam_batch_normalization_3_gamma_m_read_readvariableop<savev2_adam_batch_normalization_3_beta_m_read_readvariableop1savev2_adam_p_re_lu_3_alpha_m_read_readvariableopEsavev2_adam_separable_conv2d_4_depthwise_kernel_m_read_readvariableopEsavev2_adam_separable_conv2d_4_pointwise_kernel_m_read_readvariableop=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop<savev2_adam_batch_normalization_4_beta_m_read_readvariableop1savev2_adam_p_re_lu_4_alpha_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop1savev2_adam_p_re_lu_5_alpha_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop1savev2_adam_p_re_lu_6_alpha_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop1savev2_adam_p_re_lu_7_alpha_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableopCsavev2_adam_separable_conv2d_depthwise_kernel_v_read_readvariableopCsavev2_adam_separable_conv2d_pointwise_kernel_v_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop/savev2_adam_p_re_lu_alpha_v_read_readvariableopEsavev2_adam_separable_conv2d_1_depthwise_kernel_v_read_readvariableopEsavev2_adam_separable_conv2d_1_pointwise_kernel_v_read_readvariableop=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop<savev2_adam_batch_normalization_1_beta_v_read_readvariableop1savev2_adam_p_re_lu_1_alpha_v_read_readvariableopEsavev2_adam_separable_conv2d_2_depthwise_kernel_v_read_readvariableopEsavev2_adam_separable_conv2d_2_pointwise_kernel_v_read_readvariableop=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop<savev2_adam_batch_normalization_2_beta_v_read_readvariableop1savev2_adam_p_re_lu_2_alpha_v_read_readvariableopEsavev2_adam_separable_conv2d_3_depthwise_kernel_v_read_readvariableopEsavev2_adam_separable_conv2d_3_pointwise_kernel_v_read_readvariableop=savev2_adam_batch_normalization_3_gamma_v_read_readvariableop<savev2_adam_batch_normalization_3_beta_v_read_readvariableop1savev2_adam_p_re_lu_3_alpha_v_read_readvariableopEsavev2_adam_separable_conv2d_4_depthwise_kernel_v_read_readvariableopEsavev2_adam_separable_conv2d_4_pointwise_kernel_v_read_readvariableop=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop<savev2_adam_batch_normalization_4_beta_v_read_readvariableop1savev2_adam_p_re_lu_4_alpha_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop1savev2_adam_p_re_lu_5_alpha_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop1savev2_adam_p_re_lu_6_alpha_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop1savev2_adam_p_re_lu_7_alpha_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2Ί
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes‘
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*°

_input_shapes


: ::::::::: : : : : : : : @:@:@:@:@:@:@:@:::::::::::::
:::	@:@:@:@ : : : :: : : : : : : : : ::::::: : : : : : @:@:@:@:@:@:::::::::
:::	@:@:@:@ : : : :::::::: : : : : : @:@:@:@:@:@:::::::::
:::	@:@:@:@ : : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
::,(
&
_output_shapes
::,	(
&
_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:($
"
_output_shapes
:@:,(
&
_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::)%
#
_output_shapes
::-)
'
_output_shapes
::.*
(
_output_shapes
::!

_output_shapes	
::! 

_output_shapes	
::!!

_output_shapes	
::!"

_output_shapes	
::)#%
#
_output_shapes
::&$"
 
_output_shapes
:
:!%

_output_shapes	
::!&

_output_shapes	
::%'!

_output_shapes
:	@: (

_output_shapes
:@: )

_output_shapes
:@:$* 

_output_shapes

:@ : +

_output_shapes
: : ,

_output_shapes
: :$- 

_output_shapes

: : .

_output_shapes
::/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :,8(
&
_output_shapes
::,9(
&
_output_shapes
:: :

_output_shapes
:: ;

_output_shapes
::(<$
"
_output_shapes
::,=(
&
_output_shapes
::,>(
&
_output_shapes
: : ?

_output_shapes
: : @

_output_shapes
: :(A$
"
_output_shapes
: :,B(
&
_output_shapes
: :,C(
&
_output_shapes
: @: D

_output_shapes
:@: E

_output_shapes
:@:(F$
"
_output_shapes
:@:,G(
&
_output_shapes
:@:-H)
'
_output_shapes
:@:!I

_output_shapes	
::!J

_output_shapes	
::)K%
#
_output_shapes
::-L)
'
_output_shapes
::.M*
(
_output_shapes
::!N

_output_shapes	
::!O

_output_shapes	
::)P%
#
_output_shapes
::&Q"
 
_output_shapes
:
:!R

_output_shapes	
::!S

_output_shapes	
::%T!

_output_shapes
:	@: U

_output_shapes
:@: V

_output_shapes
:@:$W 

_output_shapes

:@ : X

_output_shapes
: : Y

_output_shapes
: :$Z 

_output_shapes

: : [

_output_shapes
::,\(
&
_output_shapes
::,](
&
_output_shapes
:: ^

_output_shapes
:: _

_output_shapes
::(`$
"
_output_shapes
::,a(
&
_output_shapes
::,b(
&
_output_shapes
: : c

_output_shapes
: : d

_output_shapes
: :(e$
"
_output_shapes
: :,f(
&
_output_shapes
: :,g(
&
_output_shapes
: @: h

_output_shapes
:@: i

_output_shapes
:@:(j$
"
_output_shapes
:@:,k(
&
_output_shapes
:@:-l)
'
_output_shapes
:@:!m

_output_shapes	
::!n

_output_shapes	
::)o%
#
_output_shapes
::-p)
'
_output_shapes
::.q*
(
_output_shapes
::!r

_output_shapes	
::!s

_output_shapes	
::)t%
#
_output_shapes
::&u"
 
_output_shapes
:
:!v

_output_shapes	
::!w

_output_shapes	
::%x!

_output_shapes
:	@: y

_output_shapes
:@: z

_output_shapes
:@:${ 

_output_shapes

:@ : |

_output_shapes
: : }

_output_shapes
: :$~ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
³

(__inference_p_re_lu_layer_call_fn_103757

inputs
unknown:
identity’StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_p_re_lu_layer_call_and_return_conditional_losses_997562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs

Ώ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_99912

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1κ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ή
Δ
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_104646

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1έ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ή
Β
&__inference_model_layer_call_fn_102404
input_1!
unknown:#
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:#
	unknown_6:#
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: $

unknown_13: $

unknown_14: @

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@ 

unknown_19:@$

unknown_20:@%

unknown_21:@

unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	!

unknown_26:%

unknown_27:&

unknown_28:

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	!

unknown_33:

unknown_34:


unknown_35:	

unknown_36:	

unknown_37:	@

unknown_38:@

unknown_39:@

unknown_40:@ 

unknown_41: 

unknown_42: 

unknown_43: 

unknown_44:
identity’StatefulPartitionedCallΗ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*F
_read_only_resource_inputs(
&$	
 #$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1022122
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:?????????
!
_user_specified_name	input_1
Ύ
F
*__inference_dropout_2_layer_call_fn_105017

inputs
identityΓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1013382
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
Ύ
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_104256

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs


Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_104180

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Κ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Ε
ΐ
$__inference_signature_wrapper_102871
input_1!
unknown:#
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:#
	unknown_6:#
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: $

unknown_13: $

unknown_14: @

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@ 

unknown_19:@$

unknown_20:@%

unknown_21:@

unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	!

unknown_26:%

unknown_27:&

unknown_28:

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	!

unknown_33:

unknown_34:


unknown_35:	

unknown_36:	

unknown_37:	@

unknown_38:@

unknown_39:@

unknown_40:@ 

unknown_41: 

unknown_42: 

unknown_43: 

unknown_44:
identity’StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_995702
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:?????????
!
_user_specified_name	input_1
¦

’
C__inference_p_re_lu_layer_call_and_return_conditional_losses_100912

inputs-
readvariableop_resource:
identity’ReadVariableOpV
ReluReluinputs*
T0*/
_output_shapes
:?????????~~2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:*
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:2
NegW
Neg_1Neginputs*
T0*/
_output_shapes
:?????????~~2
Neg_1]
Relu_1Relu	Neg_1:y:0*
T0*/
_output_shapes
:?????????~~2
Relu_1j
mulMulNeg:y:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????~~2
mulj
addAddV2Relu:activations:0mul:z:0*
T0*/
_output_shapes
:?????????~~2
addj
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????~~2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????~~: 2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
ο
Ό
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_99818

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource: 
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOpΉ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateχ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
separable_conv2d/depthwiseσ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
2
separable_conv2d
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
ώ
Υ
6__inference_batch_normalization_4_layer_call_fn_104574

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity’StatefulPartitionedCall’
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1016702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
η
_
C__inference_flatten_layer_call_and_return_conditional_losses_104715

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs

ΐ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_103938

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1κ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
Γ
₯
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_100452

inputs.
readvariableop_resource:
identity’ReadVariableOpi
ReluReluinputs*
T0*B
_output_shapes0
.:,???????????????????????????2
Relu}
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:*
dtype02
ReadVariableOpW
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:2
Negj
Neg_1Neginputs*
T0*B
_output_shapes0
.:,???????????????????????????2
Neg_1p
Relu_1Relu	Neg_1:y:0*
T0*B
_output_shapes0
.:,???????????????????????????2
Relu_1}
mulMulNeg:y:0Relu_1:activations:0*
T0*B
_output_shapes0
.:,???????????????????????????2
mul}
addAddV2Relu:activations:0mul:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
add}
IdentityIdentityadd:z:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,???????????????????????????: 2 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
ς
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_105027

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
Β
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_104704

inputs
identity
MaxPoolMaxPoolinputs*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
¨

€
E__inference_p_re_lu_1_layer_call_and_return_conditional_losses_104012

inputs-
readvariableop_resource: 
identity’ReadVariableOpV
ReluReluinputs*
T0*/
_output_shapes
:?????????== 2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
: *
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
: 2
NegW
Neg_1Neginputs*
T0*/
_output_shapes
:?????????== 2
Neg_1]
Relu_1Relu	Neg_1:y:0*
T0*/
_output_shapes
:?????????== 2
Relu_1j
mulMulNeg:y:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????== 2
mulj
addAddV2Relu:activations:0mul:z:0*
T0*/
_output_shapes
:?????????== 2
addj
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????== 2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????== : 2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs
 
«.
A__inference_model_layer_call_and_return_conditional_losses_103584

inputsS
9separable_conv2d_separable_conv2d_readvariableop_resource:U
;separable_conv2d_separable_conv2d_readvariableop_1_resource:9
+batch_normalization_readvariableop_resource:;
-batch_normalization_readvariableop_1_resource:J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:5
p_re_lu_readvariableop_resource:U
;separable_conv2d_1_separable_conv2d_readvariableop_resource:W
=separable_conv2d_1_separable_conv2d_readvariableop_1_resource: ;
-batch_normalization_1_readvariableop_resource: =
/batch_normalization_1_readvariableop_1_resource: L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource: 7
!p_re_lu_1_readvariableop_resource: U
;separable_conv2d_2_separable_conv2d_readvariableop_resource: W
=separable_conv2d_2_separable_conv2d_readvariableop_1_resource: @;
-batch_normalization_2_readvariableop_resource:@=
/batch_normalization_2_readvariableop_1_resource:@L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:@7
!p_re_lu_2_readvariableop_resource:@U
;separable_conv2d_3_separable_conv2d_readvariableop_resource:@X
=separable_conv2d_3_separable_conv2d_readvariableop_1_resource:@<
-batch_normalization_3_readvariableop_resource:	>
/batch_normalization_3_readvariableop_1_resource:	M
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	O
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	8
!p_re_lu_3_readvariableop_resource:V
;separable_conv2d_4_separable_conv2d_readvariableop_resource:Y
=separable_conv2d_4_separable_conv2d_readvariableop_1_resource:<
-batch_normalization_4_readvariableop_resource:	>
/batch_normalization_4_readvariableop_1_resource:	M
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	O
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	8
!p_re_lu_4_readvariableop_resource:8
$dense_matmul_readvariableop_resource:
4
%dense_biasadd_readvariableop_resource:	0
!p_re_lu_5_readvariableop_resource:	9
&dense_1_matmul_readvariableop_resource:	@5
'dense_1_biasadd_readvariableop_resource:@/
!p_re_lu_6_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@ 5
'dense_2_biasadd_readvariableop_resource: /
!p_re_lu_7_readvariableop_resource: 8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identity’"batch_normalization/AssignNewValue’$batch_normalization/AssignNewValue_1’3batch_normalization/FusedBatchNormV3/ReadVariableOp’5batch_normalization/FusedBatchNormV3/ReadVariableOp_1’"batch_normalization/ReadVariableOp’$batch_normalization/ReadVariableOp_1’$batch_normalization_1/AssignNewValue’&batch_normalization_1/AssignNewValue_1’5batch_normalization_1/FusedBatchNormV3/ReadVariableOp’7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1’$batch_normalization_1/ReadVariableOp’&batch_normalization_1/ReadVariableOp_1’$batch_normalization_2/AssignNewValue’&batch_normalization_2/AssignNewValue_1’5batch_normalization_2/FusedBatchNormV3/ReadVariableOp’7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1’$batch_normalization_2/ReadVariableOp’&batch_normalization_2/ReadVariableOp_1’$batch_normalization_3/AssignNewValue’&batch_normalization_3/AssignNewValue_1’5batch_normalization_3/FusedBatchNormV3/ReadVariableOp’7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1’$batch_normalization_3/ReadVariableOp’&batch_normalization_3/ReadVariableOp_1’$batch_normalization_4/AssignNewValue’&batch_normalization_4/AssignNewValue_1’5batch_normalization_4/FusedBatchNormV3/ReadVariableOp’7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1’$batch_normalization_4/ReadVariableOp’&batch_normalization_4/ReadVariableOp_1’dense/BiasAdd/ReadVariableOp’dense/MatMul/ReadVariableOp’,dense/bias/Regularizer/Square/ReadVariableOp’.dense/kernel/Regularizer/Square/ReadVariableOp’dense_1/BiasAdd/ReadVariableOp’dense_1/MatMul/ReadVariableOp’.dense_1/bias/Regularizer/Square/ReadVariableOp’0dense_1/kernel/Regularizer/Square/ReadVariableOp’dense_2/BiasAdd/ReadVariableOp’dense_2/MatMul/ReadVariableOp’.dense_2/bias/Regularizer/Square/ReadVariableOp’0dense_2/kernel/Regularizer/Square/ReadVariableOp’dense_3/BiasAdd/ReadVariableOp’dense_3/MatMul/ReadVariableOp’p_re_lu/ReadVariableOp’p_re_lu_1/ReadVariableOp’p_re_lu_2/ReadVariableOp’p_re_lu_3/ReadVariableOp’p_re_lu_4/ReadVariableOp’p_re_lu_5/ReadVariableOp’p_re_lu_6/ReadVariableOp’p_re_lu_7/ReadVariableOp’0separable_conv2d/separable_conv2d/ReadVariableOp’2separable_conv2d/separable_conv2d/ReadVariableOp_1’2separable_conv2d_1/separable_conv2d/ReadVariableOp’4separable_conv2d_1/separable_conv2d/ReadVariableOp_1’2separable_conv2d_2/separable_conv2d/ReadVariableOp’4separable_conv2d_2/separable_conv2d/ReadVariableOp_1’2separable_conv2d_3/separable_conv2d/ReadVariableOp’4separable_conv2d_3/separable_conv2d/ReadVariableOp_1’2separable_conv2d_4/separable_conv2d/ReadVariableOp’4separable_conv2d_4/separable_conv2d/ReadVariableOp_1ζ
0separable_conv2d/separable_conv2d/ReadVariableOpReadVariableOp9separable_conv2d_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype022
0separable_conv2d/separable_conv2d/ReadVariableOpμ
2separable_conv2d/separable_conv2d/ReadVariableOp_1ReadVariableOp;separable_conv2d_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype024
2separable_conv2d/separable_conv2d/ReadVariableOp_1«
'separable_conv2d/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'separable_conv2d/separable_conv2d/Shape³
/separable_conv2d/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      21
/separable_conv2d/separable_conv2d/dilation_rate
+separable_conv2d/separable_conv2d/depthwiseDepthwiseConv2dNativeinputs8separable_conv2d/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
2-
+separable_conv2d/separable_conv2d/depthwise₯
!separable_conv2d/separable_conv2dConv2D4separable_conv2d/separable_conv2d/depthwise:output:0:separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
2#
!separable_conv2d/separable_conv2d°
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02$
"batch_normalization/ReadVariableOpΆ
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype02&
$batch_normalization/ReadVariableOp_1γ
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOpι
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1τ
$batch_normalization/FusedBatchNormV3FusedBatchNormV3*separable_conv2d/separable_conv2d:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2&
$batch_normalization/FusedBatchNormV3¦
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02$
"batch_normalization/AssignNewValue²
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02&
$batch_normalization/AssignNewValue_1
p_re_lu/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????~~2
p_re_lu/Relu
p_re_lu/ReadVariableOpReadVariableOpp_re_lu_readvariableop_resource*"
_output_shapes
:*
dtype02
p_re_lu/ReadVariableOpn
p_re_lu/NegNegp_re_lu/ReadVariableOp:value:0*
T0*"
_output_shapes
:2
p_re_lu/Neg
p_re_lu/Neg_1Neg(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????~~2
p_re_lu/Neg_1u
p_re_lu/Relu_1Relup_re_lu/Neg_1:y:0*
T0*/
_output_shapes
:?????????~~2
p_re_lu/Relu_1
p_re_lu/mulMulp_re_lu/Neg:y:0p_re_lu/Relu_1:activations:0*
T0*/
_output_shapes
:?????????~~2
p_re_lu/mul
p_re_lu/addAddV2p_re_lu/Relu:activations:0p_re_lu/mul:z:0*
T0*/
_output_shapes
:?????????~~2
p_re_lu/add·
max_pooling2d/MaxPoolMaxPoolp_re_lu/add:z:0*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolμ
2separable_conv2d_1/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_1_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2separable_conv2d_1/separable_conv2d/ReadVariableOpς
4separable_conv2d_1/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_1_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype026
4separable_conv2d_1/separable_conv2d/ReadVariableOp_1―
)separable_conv2d_1/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2+
)separable_conv2d_1/separable_conv2d/Shape·
1separable_conv2d_1/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      23
1separable_conv2d_1/separable_conv2d/dilation_rateΆ
-separable_conv2d_1/separable_conv2d/depthwiseDepthwiseConv2dNativemax_pooling2d/MaxPool:output:0:separable_conv2d_1/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==*
paddingVALID*
strides
2/
-separable_conv2d_1/separable_conv2d/depthwise­
#separable_conv2d_1/separable_conv2dConv2D6separable_conv2d_1/separable_conv2d/depthwise:output:0<separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????== *
paddingVALID*
strides
2%
#separable_conv2d_1/separable_conv2dΆ
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
: *
dtype02&
$batch_normalization_1/ReadVariableOpΌ
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&batch_normalization_1/ReadVariableOp_1ι
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpο
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3,separable_conv2d_1/separable_conv2d:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????== : : : : :*
epsilon%o:*
exponential_avg_factor%
Χ#<2(
&batch_normalization_1/FusedBatchNormV3°
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_1/AssignNewValueΌ
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_1/AssignNewValue_1
p_re_lu_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????== 2
p_re_lu_1/Relu
p_re_lu_1/ReadVariableOpReadVariableOp!p_re_lu_1_readvariableop_resource*"
_output_shapes
: *
dtype02
p_re_lu_1/ReadVariableOpt
p_re_lu_1/NegNeg p_re_lu_1/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2
p_re_lu_1/Neg
p_re_lu_1/Neg_1Neg*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????== 2
p_re_lu_1/Neg_1{
p_re_lu_1/Relu_1Relup_re_lu_1/Neg_1:y:0*
T0*/
_output_shapes
:?????????== 2
p_re_lu_1/Relu_1
p_re_lu_1/mulMulp_re_lu_1/Neg:y:0p_re_lu_1/Relu_1:activations:0*
T0*/
_output_shapes
:?????????== 2
p_re_lu_1/mul
p_re_lu_1/addAddV2p_re_lu_1/Relu:activations:0p_re_lu_1/mul:z:0*
T0*/
_output_shapes
:?????????== 2
p_re_lu_1/add½
max_pooling2d_1/MaxPoolMaxPoolp_re_lu_1/add:z:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolμ
2separable_conv2d_2/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_2_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2separable_conv2d_2/separable_conv2d/ReadVariableOpς
4separable_conv2d_2/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_2_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: @*
dtype026
4separable_conv2d_2/separable_conv2d/ReadVariableOp_1―
)separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2+
)separable_conv2d_2/separable_conv2d/Shape·
1separable_conv2d_2/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      23
1separable_conv2d_2/separable_conv2d/dilation_rateΈ
-separable_conv2d_2/separable_conv2d/depthwiseDepthwiseConv2dNative max_pooling2d_1/MaxPool:output:0:separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2/
-separable_conv2d_2/separable_conv2d/depthwise­
#separable_conv2d_2/separable_conv2dConv2D6separable_conv2d_2/separable_conv2d/depthwise:output:0<separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2%
#separable_conv2d_2/separable_conv2dΆ
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_2/ReadVariableOpΌ
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_2/ReadVariableOp_1ι
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpο
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3,separable_conv2d_2/separable_conv2d:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
Χ#<2(
&batch_normalization_2/FusedBatchNormV3°
$batch_normalization_2/AssignNewValueAssignVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource3batch_normalization_2/FusedBatchNormV3:batch_mean:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_2/AssignNewValueΌ
&batch_normalization_2/AssignNewValue_1AssignVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_2/FusedBatchNormV3:batch_variance:08^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_2/AssignNewValue_1
p_re_lu_2/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
p_re_lu_2/Relu
p_re_lu_2/ReadVariableOpReadVariableOp!p_re_lu_2_readvariableop_resource*"
_output_shapes
:@*
dtype02
p_re_lu_2/ReadVariableOpt
p_re_lu_2/NegNeg p_re_lu_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2
p_re_lu_2/Neg
p_re_lu_2/Neg_1Neg*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
p_re_lu_2/Neg_1{
p_re_lu_2/Relu_1Relup_re_lu_2/Neg_1:y:0*
T0*/
_output_shapes
:?????????@2
p_re_lu_2/Relu_1
p_re_lu_2/mulMulp_re_lu_2/Neg:y:0p_re_lu_2/Relu_1:activations:0*
T0*/
_output_shapes
:?????????@2
p_re_lu_2/mul
p_re_lu_2/addAddV2p_re_lu_2/Relu:activations:0p_re_lu_2/mul:z:0*
T0*/
_output_shapes
:?????????@2
p_re_lu_2/add½
max_pooling2d_2/MaxPoolMaxPoolp_re_lu_2/add:z:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolμ
2separable_conv2d_3/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_3_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype024
2separable_conv2d_3/separable_conv2d/ReadVariableOpσ
4separable_conv2d_3/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_3_separable_conv2d_readvariableop_1_resource*'
_output_shapes
:@*
dtype026
4separable_conv2d_3/separable_conv2d/ReadVariableOp_1―
)separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2+
)separable_conv2d_3/separable_conv2d/Shape·
1separable_conv2d_3/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      23
1separable_conv2d_3/separable_conv2d/dilation_rateΈ
-separable_conv2d_3/separable_conv2d/depthwiseDepthwiseConv2dNative max_pooling2d_2/MaxPool:output:0:separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2/
-separable_conv2d_3/separable_conv2d/depthwise?
#separable_conv2d_3/separable_conv2dConv2D6separable_conv2d_3/separable_conv2d/depthwise:output:0<separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2%
#separable_conv2d_3/separable_conv2d·
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:*
dtype02&
$batch_normalization_3/ReadVariableOp½
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:*
dtype02(
&batch_normalization_3/ReadVariableOp_1κ
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpπ
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3,separable_conv2d_3/separable_conv2d:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2(
&batch_normalization_3/FusedBatchNormV3°
$batch_normalization_3/AssignNewValueAssignVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource3batch_normalization_3/FusedBatchNormV3:batch_mean:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_3/AssignNewValueΌ
&batch_normalization_3/AssignNewValue_1AssignVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_3/FusedBatchNormV3:batch_variance:08^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_3/AssignNewValue_1
p_re_lu_3/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????2
p_re_lu_3/Relu
p_re_lu_3/ReadVariableOpReadVariableOp!p_re_lu_3_readvariableop_resource*#
_output_shapes
:*
dtype02
p_re_lu_3/ReadVariableOpu
p_re_lu_3/NegNeg p_re_lu_3/ReadVariableOp:value:0*
T0*#
_output_shapes
:2
p_re_lu_3/Neg
p_re_lu_3/Neg_1Neg*batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????2
p_re_lu_3/Neg_1|
p_re_lu_3/Relu_1Relup_re_lu_3/Neg_1:y:0*
T0*0
_output_shapes
:?????????2
p_re_lu_3/Relu_1
p_re_lu_3/mulMulp_re_lu_3/Neg:y:0p_re_lu_3/Relu_1:activations:0*
T0*0
_output_shapes
:?????????2
p_re_lu_3/mul
p_re_lu_3/addAddV2p_re_lu_3/Relu:activations:0p_re_lu_3/mul:z:0*
T0*0
_output_shapes
:?????????2
p_re_lu_3/addΎ
max_pooling2d_3/MaxPoolMaxPoolp_re_lu_3/add:z:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolν
2separable_conv2d_4/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_4_separable_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype024
2separable_conv2d_4/separable_conv2d/ReadVariableOpτ
4separable_conv2d_4/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_4_separable_conv2d_readvariableop_1_resource*(
_output_shapes
:*
dtype026
4separable_conv2d_4/separable_conv2d/ReadVariableOp_1―
)separable_conv2d_4/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2+
)separable_conv2d_4/separable_conv2d/Shape·
1separable_conv2d_4/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      23
1separable_conv2d_4/separable_conv2d/dilation_rateΉ
-separable_conv2d_4/separable_conv2d/depthwiseDepthwiseConv2dNative max_pooling2d_3/MaxPool:output:0:separable_conv2d_4/separable_conv2d/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2/
-separable_conv2d_4/separable_conv2d/depthwise?
#separable_conv2d_4/separable_conv2dConv2D6separable_conv2d_4/separable_conv2d/depthwise:output:0<separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2%
#separable_conv2d_4/separable_conv2d·
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes	
:*
dtype02&
$batch_normalization_4/ReadVariableOp½
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:*
dtype02(
&batch_normalization_4/ReadVariableOp_1κ
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype027
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpπ
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype029
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3,separable_conv2d_4/separable_conv2d:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2(
&batch_normalization_4/FusedBatchNormV3°
$batch_normalization_4/AssignNewValueAssignVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource3batch_normalization_4/FusedBatchNormV3:batch_mean:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_4/AssignNewValueΌ
&batch_normalization_4/AssignNewValue_1AssignVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_4/FusedBatchNormV3:batch_variance:08^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_4/AssignNewValue_1
p_re_lu_4/ReluRelu*batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????2
p_re_lu_4/Relu
p_re_lu_4/ReadVariableOpReadVariableOp!p_re_lu_4_readvariableop_resource*#
_output_shapes
:*
dtype02
p_re_lu_4/ReadVariableOpu
p_re_lu_4/NegNeg p_re_lu_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:2
p_re_lu_4/Neg
p_re_lu_4/Neg_1Neg*batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????2
p_re_lu_4/Neg_1|
p_re_lu_4/Relu_1Relup_re_lu_4/Neg_1:y:0*
T0*0
_output_shapes
:?????????2
p_re_lu_4/Relu_1
p_re_lu_4/mulMulp_re_lu_4/Neg:y:0p_re_lu_4/Relu_1:activations:0*
T0*0
_output_shapes
:?????????2
p_re_lu_4/mul
p_re_lu_4/addAddV2p_re_lu_4/Relu:activations:0p_re_lu_4/mul:z:0*
T0*0
_output_shapes
:?????????2
p_re_lu_4/addΎ
max_pooling2d_4/MaxPoolMaxPoolp_re_lu_4/add:z:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const
flatten/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:?????????2
flatten/Reshape‘
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense/BiasAdds
p_re_lu_5/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
p_re_lu_5/Relu
p_re_lu_5/ReadVariableOpReadVariableOp!p_re_lu_5_readvariableop_resource*
_output_shapes	
:*
dtype02
p_re_lu_5/ReadVariableOpm
p_re_lu_5/NegNeg p_re_lu_5/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
p_re_lu_5/Negt
p_re_lu_5/Neg_1Negdense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
p_re_lu_5/Neg_1t
p_re_lu_5/Relu_1Relup_re_lu_5/Neg_1:y:0*
T0*(
_output_shapes
:?????????2
p_re_lu_5/Relu_1
p_re_lu_5/mulMulp_re_lu_5/Neg:y:0p_re_lu_5/Relu_1:activations:0*
T0*(
_output_shapes
:?????????2
p_re_lu_5/mul
p_re_lu_5/addAddV2p_re_lu_5/Relu:activations:0p_re_lu_5/mul:z:0*
T0*(
_output_shapes
:?????????2
p_re_lu_5/adds
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Const
dropout/dropout/MulMulp_re_lu_5/add:z:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout/dropout/Mulo
dropout/dropout/ShapeShapep_re_lu_5/add:z:0*
T0*
_output_shapes
:2
dropout/dropout/ShapeΝ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype02.
,dropout/dropout/random_uniform/RandomUniform
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *?2 
dropout/dropout/GreaterEqual/yί
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2
dropout/dropout/GreaterEqual
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout/dropout/Cast
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout/dropout/Mul_1¦
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul€
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp‘
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAddt
p_re_lu_6/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
p_re_lu_6/Relu
p_re_lu_6/ReadVariableOpReadVariableOp!p_re_lu_6_readvariableop_resource*
_output_shapes
:@*
dtype02
p_re_lu_6/ReadVariableOpl
p_re_lu_6/NegNeg p_re_lu_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
p_re_lu_6/Negu
p_re_lu_6/Neg_1Negdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
p_re_lu_6/Neg_1s
p_re_lu_6/Relu_1Relup_re_lu_6/Neg_1:y:0*
T0*'
_output_shapes
:?????????@2
p_re_lu_6/Relu_1
p_re_lu_6/mulMulp_re_lu_6/Neg:y:0p_re_lu_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@2
p_re_lu_6/mul
p_re_lu_6/addAddV2p_re_lu_6/Relu:activations:0p_re_lu_6/mul:z:0*
T0*'
_output_shapes
:?????????@2
p_re_lu_6/addw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUΥ?2
dropout_1/dropout/Const
dropout_1/dropout/MulMulp_re_lu_6/add:z:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_1/dropout/Muls
dropout_1/dropout/ShapeShapep_re_lu_6/add:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ>2"
 dropout_1/dropout/GreaterEqual/yζ
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2 
dropout_1/dropout/GreaterEqual
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_1/dropout/Cast’
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_1/dropout/Mul_1₯
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_2/MatMul/ReadVariableOp 
dense_2/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/MatMul€
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_2/BiasAdd/ReadVariableOp‘
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/BiasAddt
p_re_lu_7/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
p_re_lu_7/Relu
p_re_lu_7/ReadVariableOpReadVariableOp!p_re_lu_7_readvariableop_resource*
_output_shapes
: *
dtype02
p_re_lu_7/ReadVariableOpl
p_re_lu_7/NegNeg p_re_lu_7/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
p_re_lu_7/Negu
p_re_lu_7/Neg_1Negdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
p_re_lu_7/Neg_1s
p_re_lu_7/Relu_1Relup_re_lu_7/Neg_1:y:0*
T0*'
_output_shapes
:????????? 2
p_re_lu_7/Relu_1
p_re_lu_7/mulMulp_re_lu_7/Neg:y:0p_re_lu_7/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
p_re_lu_7/mul
p_re_lu_7/addAddV2p_re_lu_7/Relu:activations:0p_re_lu_7/mul:z:0*
T0*'
_output_shapes
:????????? 2
p_re_lu_7/addw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/dropout/Const
dropout_2/dropout/MulMulp_re_lu_7/add:z:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/dropout/Muls
dropout_2/dropout/ShapeShapep_re_lu_7/add:z:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype020
.dropout_2/dropout/random_uniform/RandomUniform
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>2"
 dropout_2/dropout/GreaterEqual/yζ
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2 
dropout_2/dropout/GreaterEqual
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/dropout/Cast’
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/dropout/Mul_1₯
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_3/MatMul/ReadVariableOp 
dense_3/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul€
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp‘
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_3/SoftmaxΗ
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp―
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense/kernel/Regularizer/mul/x΄
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mulΏ
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp€
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constͺ
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mulΜ
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype022
0dense_1/kernel/Regularizer/Square/ReadVariableOp΄
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2#
!dense_1/kernel/Regularizer/Square
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_1/kernel/Regularizer/ConstΊ
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/Sum
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_1/kernel/Regularizer/mul/xΌ
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/mulΔ
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp©
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@2!
dense_1/bias/Regularizer/Square
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const²
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_1/bias/Regularizer/mul/x΄
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mulΛ
0dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype022
0dense_2/kernel/Regularizer/Square/ReadVariableOp³
!dense_2/kernel/Regularizer/SquareSquare8dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2#
!dense_2/kernel/Regularizer/Square
 dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_2/kernel/Regularizer/ConstΊ
dense_2/kernel/Regularizer/SumSum%dense_2/kernel/Regularizer/Square:y:0)dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/Sum
 dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_2/kernel/Regularizer/mul/xΌ
dense_2/kernel/Regularizer/mulMul)dense_2/kernel/Regularizer/mul/x:output:0'dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/mulΔ
.dense_2/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.dense_2/bias/Regularizer/Square/ReadVariableOp©
dense_2/bias/Regularizer/SquareSquare6dense_2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: 2!
dense_2/bias/Regularizer/Square
dense_2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_2/bias/Regularizer/Const²
dense_2/bias/Regularizer/SumSum#dense_2/bias/Regularizer/Square:y:0'dense_2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/Sum
dense_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_2/bias/Regularizer/mul/x΄
dense_2/bias/Regularizer/mulMul'dense_2/bias/Regularizer/mul/x:output:0%dense_2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/mult
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity²
NoOpNoOp#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1%^batch_normalization_2/AssignNewValue'^batch_normalization_2/AssignNewValue_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1%^batch_normalization_3/AssignNewValue'^batch_normalization_3/AssignNewValue_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1%^batch_normalization_4/AssignNewValue'^batch_normalization_4/AssignNewValue_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp/^dense_1/bias/Regularizer/Square/ReadVariableOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp/^dense_2/bias/Regularizer/Square/ReadVariableOp1^dense_2/kernel/Regularizer/Square/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^p_re_lu/ReadVariableOp^p_re_lu_1/ReadVariableOp^p_re_lu_2/ReadVariableOp^p_re_lu_3/ReadVariableOp^p_re_lu_4/ReadVariableOp^p_re_lu_5/ReadVariableOp^p_re_lu_6/ReadVariableOp^p_re_lu_7/ReadVariableOp1^separable_conv2d/separable_conv2d/ReadVariableOp3^separable_conv2d/separable_conv2d/ReadVariableOp_13^separable_conv2d_1/separable_conv2d/ReadVariableOp5^separable_conv2d_1/separable_conv2d/ReadVariableOp_13^separable_conv2d_2/separable_conv2d/ReadVariableOp5^separable_conv2d_2/separable_conv2d/ReadVariableOp_13^separable_conv2d_3/separable_conv2d/ReadVariableOp5^separable_conv2d_3/separable_conv2d/ReadVariableOp_13^separable_conv2d_4/separable_conv2d/ReadVariableOp5^separable_conv2d_4/separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2P
&batch_normalization_2/AssignNewValue_1&batch_normalization_2/AssignNewValue_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12L
$batch_normalization_3/AssignNewValue$batch_normalization_3/AssignNewValue2P
&batch_normalization_3/AssignNewValue_1&batch_normalization_3/AssignNewValue_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12L
$batch_normalization_4/AssignNewValue$batch_normalization_4/AssignNewValue2P
&batch_normalization_4/AssignNewValue_1&batch_normalization_4/AssignNewValue_12n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2`
.dense_2/bias/Regularizer/Square/ReadVariableOp.dense_2/bias/Regularizer/Square/ReadVariableOp2d
0dense_2/kernel/Regularizer/Square/ReadVariableOp0dense_2/kernel/Regularizer/Square/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp20
p_re_lu/ReadVariableOpp_re_lu/ReadVariableOp24
p_re_lu_1/ReadVariableOpp_re_lu_1/ReadVariableOp24
p_re_lu_2/ReadVariableOpp_re_lu_2/ReadVariableOp24
p_re_lu_3/ReadVariableOpp_re_lu_3/ReadVariableOp24
p_re_lu_4/ReadVariableOpp_re_lu_4/ReadVariableOp24
p_re_lu_5/ReadVariableOpp_re_lu_5/ReadVariableOp24
p_re_lu_6/ReadVariableOpp_re_lu_6/ReadVariableOp24
p_re_lu_7/ReadVariableOpp_re_lu_7/ReadVariableOp2d
0separable_conv2d/separable_conv2d/ReadVariableOp0separable_conv2d/separable_conv2d/ReadVariableOp2h
2separable_conv2d/separable_conv2d/ReadVariableOp_12separable_conv2d/separable_conv2d/ReadVariableOp_12h
2separable_conv2d_1/separable_conv2d/ReadVariableOp2separable_conv2d_1/separable_conv2d/ReadVariableOp2l
4separable_conv2d_1/separable_conv2d/ReadVariableOp_14separable_conv2d_1/separable_conv2d/ReadVariableOp_12h
2separable_conv2d_2/separable_conv2d/ReadVariableOp2separable_conv2d_2/separable_conv2d/ReadVariableOp2l
4separable_conv2d_2/separable_conv2d/ReadVariableOp_14separable_conv2d_2/separable_conv2d/ReadVariableOp_12h
2separable_conv2d_3/separable_conv2d/ReadVariableOp2separable_conv2d_3/separable_conv2d/ReadVariableOp2l
4separable_conv2d_3/separable_conv2d/ReadVariableOp_14separable_conv2d_3/separable_conv2d/ReadVariableOp_12h
2separable_conv2d_4/separable_conv2d/ReadVariableOp2separable_conv2d_4/separable_conv2d/ReadVariableOp2l
4separable_conv2d_4/separable_conv2d/ReadVariableOp_14separable_conv2d_4/separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Ζ
?,
 __inference__wrapped_model_99570
input_1Y
?model_separable_conv2d_separable_conv2d_readvariableop_resource:[
Amodel_separable_conv2d_separable_conv2d_readvariableop_1_resource:?
1model_batch_normalization_readvariableop_resource:A
3model_batch_normalization_readvariableop_1_resource:P
Bmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource:R
Dmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:;
%model_p_re_lu_readvariableop_resource:[
Amodel_separable_conv2d_1_separable_conv2d_readvariableop_resource:]
Cmodel_separable_conv2d_1_separable_conv2d_readvariableop_1_resource: A
3model_batch_normalization_1_readvariableop_resource: C
5model_batch_normalization_1_readvariableop_1_resource: R
Dmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource: T
Fmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource: =
'model_p_re_lu_1_readvariableop_resource: [
Amodel_separable_conv2d_2_separable_conv2d_readvariableop_resource: ]
Cmodel_separable_conv2d_2_separable_conv2d_readvariableop_1_resource: @A
3model_batch_normalization_2_readvariableop_resource:@C
5model_batch_normalization_2_readvariableop_1_resource:@R
Dmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:@T
Fmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:@=
'model_p_re_lu_2_readvariableop_resource:@[
Amodel_separable_conv2d_3_separable_conv2d_readvariableop_resource:@^
Cmodel_separable_conv2d_3_separable_conv2d_readvariableop_1_resource:@B
3model_batch_normalization_3_readvariableop_resource:	D
5model_batch_normalization_3_readvariableop_1_resource:	S
Dmodel_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	U
Fmodel_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	>
'model_p_re_lu_3_readvariableop_resource:\
Amodel_separable_conv2d_4_separable_conv2d_readvariableop_resource:_
Cmodel_separable_conv2d_4_separable_conv2d_readvariableop_1_resource:B
3model_batch_normalization_4_readvariableop_resource:	D
5model_batch_normalization_4_readvariableop_1_resource:	S
Dmodel_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	U
Fmodel_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	>
'model_p_re_lu_4_readvariableop_resource:>
*model_dense_matmul_readvariableop_resource:
:
+model_dense_biasadd_readvariableop_resource:	6
'model_p_re_lu_5_readvariableop_resource:	?
,model_dense_1_matmul_readvariableop_resource:	@;
-model_dense_1_biasadd_readvariableop_resource:@5
'model_p_re_lu_6_readvariableop_resource:@>
,model_dense_2_matmul_readvariableop_resource:@ ;
-model_dense_2_biasadd_readvariableop_resource: 5
'model_p_re_lu_7_readvariableop_resource: >
,model_dense_3_matmul_readvariableop_resource: ;
-model_dense_3_biasadd_readvariableop_resource:
identity’9model/batch_normalization/FusedBatchNormV3/ReadVariableOp’;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1’(model/batch_normalization/ReadVariableOp’*model/batch_normalization/ReadVariableOp_1’;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp’=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1’*model/batch_normalization_1/ReadVariableOp’,model/batch_normalization_1/ReadVariableOp_1’;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp’=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1’*model/batch_normalization_2/ReadVariableOp’,model/batch_normalization_2/ReadVariableOp_1’;model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp’=model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1’*model/batch_normalization_3/ReadVariableOp’,model/batch_normalization_3/ReadVariableOp_1’;model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp’=model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1’*model/batch_normalization_4/ReadVariableOp’,model/batch_normalization_4/ReadVariableOp_1’"model/dense/BiasAdd/ReadVariableOp’!model/dense/MatMul/ReadVariableOp’$model/dense_1/BiasAdd/ReadVariableOp’#model/dense_1/MatMul/ReadVariableOp’$model/dense_2/BiasAdd/ReadVariableOp’#model/dense_2/MatMul/ReadVariableOp’$model/dense_3/BiasAdd/ReadVariableOp’#model/dense_3/MatMul/ReadVariableOp’model/p_re_lu/ReadVariableOp’model/p_re_lu_1/ReadVariableOp’model/p_re_lu_2/ReadVariableOp’model/p_re_lu_3/ReadVariableOp’model/p_re_lu_4/ReadVariableOp’model/p_re_lu_5/ReadVariableOp’model/p_re_lu_6/ReadVariableOp’model/p_re_lu_7/ReadVariableOp’6model/separable_conv2d/separable_conv2d/ReadVariableOp’8model/separable_conv2d/separable_conv2d/ReadVariableOp_1’8model/separable_conv2d_1/separable_conv2d/ReadVariableOp’:model/separable_conv2d_1/separable_conv2d/ReadVariableOp_1’8model/separable_conv2d_2/separable_conv2d/ReadVariableOp’:model/separable_conv2d_2/separable_conv2d/ReadVariableOp_1’8model/separable_conv2d_3/separable_conv2d/ReadVariableOp’:model/separable_conv2d_3/separable_conv2d/ReadVariableOp_1’8model/separable_conv2d_4/separable_conv2d/ReadVariableOp’:model/separable_conv2d_4/separable_conv2d/ReadVariableOp_1ψ
6model/separable_conv2d/separable_conv2d/ReadVariableOpReadVariableOp?model_separable_conv2d_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype028
6model/separable_conv2d/separable_conv2d/ReadVariableOpώ
8model/separable_conv2d/separable_conv2d/ReadVariableOp_1ReadVariableOpAmodel_separable_conv2d_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype02:
8model/separable_conv2d/separable_conv2d/ReadVariableOp_1·
-model/separable_conv2d/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2/
-model/separable_conv2d/separable_conv2d/ShapeΏ
5model/separable_conv2d/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      27
5model/separable_conv2d/separable_conv2d/dilation_rate«
1model/separable_conv2d/separable_conv2d/depthwiseDepthwiseConv2dNativeinput_1>model/separable_conv2d/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
23
1model/separable_conv2d/separable_conv2d/depthwise½
'model/separable_conv2d/separable_conv2dConv2D:model/separable_conv2d/separable_conv2d/depthwise:output:0@model/separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
2)
'model/separable_conv2d/separable_conv2dΒ
(model/batch_normalization/ReadVariableOpReadVariableOp1model_batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02*
(model/batch_normalization/ReadVariableOpΘ
*model/batch_normalization/ReadVariableOp_1ReadVariableOp3model_batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype02,
*model/batch_normalization/ReadVariableOp_1υ
9model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02;
9model/batch_normalization/FusedBatchNormV3/ReadVariableOpϋ
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02=
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1
*model/batch_normalization/FusedBatchNormV3FusedBatchNormV30model/separable_conv2d/separable_conv2d:output:00model/batch_normalization/ReadVariableOp:value:02model/batch_normalization/ReadVariableOp_1:value:0Amodel/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Cmodel/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~:::::*
epsilon%o:*
is_training( 2,
*model/batch_normalization/FusedBatchNormV3
model/p_re_lu/ReluRelu.model/batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????~~2
model/p_re_lu/Relu¦
model/p_re_lu/ReadVariableOpReadVariableOp%model_p_re_lu_readvariableop_resource*"
_output_shapes
:*
dtype02
model/p_re_lu/ReadVariableOp
model/p_re_lu/NegNeg$model/p_re_lu/ReadVariableOp:value:0*
T0*"
_output_shapes
:2
model/p_re_lu/Neg
model/p_re_lu/Neg_1Neg.model/batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????~~2
model/p_re_lu/Neg_1
model/p_re_lu/Relu_1Relumodel/p_re_lu/Neg_1:y:0*
T0*/
_output_shapes
:?????????~~2
model/p_re_lu/Relu_1’
model/p_re_lu/mulMulmodel/p_re_lu/Neg:y:0"model/p_re_lu/Relu_1:activations:0*
T0*/
_output_shapes
:?????????~~2
model/p_re_lu/mul’
model/p_re_lu/addAddV2 model/p_re_lu/Relu:activations:0model/p_re_lu/mul:z:0*
T0*/
_output_shapes
:?????????~~2
model/p_re_lu/addΙ
model/max_pooling2d/MaxPoolMaxPoolmodel/p_re_lu/add:z:0*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d/MaxPoolώ
8model/separable_conv2d_1/separable_conv2d/ReadVariableOpReadVariableOpAmodel_separable_conv2d_1_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02:
8model/separable_conv2d_1/separable_conv2d/ReadVariableOp
:model/separable_conv2d_1/separable_conv2d/ReadVariableOp_1ReadVariableOpCmodel_separable_conv2d_1_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype02<
:model/separable_conv2d_1/separable_conv2d/ReadVariableOp_1»
/model/separable_conv2d_1/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            21
/model/separable_conv2d_1/separable_conv2d/ShapeΓ
7model/separable_conv2d_1/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      29
7model/separable_conv2d_1/separable_conv2d/dilation_rateΞ
3model/separable_conv2d_1/separable_conv2d/depthwiseDepthwiseConv2dNative$model/max_pooling2d/MaxPool:output:0@model/separable_conv2d_1/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==*
paddingVALID*
strides
25
3model/separable_conv2d_1/separable_conv2d/depthwiseΕ
)model/separable_conv2d_1/separable_conv2dConv2D<model/separable_conv2d_1/separable_conv2d/depthwise:output:0Bmodel/separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????== *
paddingVALID*
strides
2+
)model/separable_conv2d_1/separable_conv2dΘ
*model/batch_normalization_1/ReadVariableOpReadVariableOp3model_batch_normalization_1_readvariableop_resource*
_output_shapes
: *
dtype02,
*model/batch_normalization_1/ReadVariableOpΞ
,model/batch_normalization_1/ReadVariableOp_1ReadVariableOp5model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
: *
dtype02.
,model/batch_normalization_1/ReadVariableOp_1ϋ
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02=
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02?
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1
,model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV32model/separable_conv2d_1/separable_conv2d:output:02model/batch_normalization_1/ReadVariableOp:value:04model/batch_normalization_1/ReadVariableOp_1:value:0Cmodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????== : : : : :*
epsilon%o:*
is_training( 2.
,model/batch_normalization_1/FusedBatchNormV3 
model/p_re_lu_1/ReluRelu0model/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????== 2
model/p_re_lu_1/Relu¬
model/p_re_lu_1/ReadVariableOpReadVariableOp'model_p_re_lu_1_readvariableop_resource*"
_output_shapes
: *
dtype02 
model/p_re_lu_1/ReadVariableOp
model/p_re_lu_1/NegNeg&model/p_re_lu_1/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2
model/p_re_lu_1/Neg‘
model/p_re_lu_1/Neg_1Neg0model/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????== 2
model/p_re_lu_1/Neg_1
model/p_re_lu_1/Relu_1Relumodel/p_re_lu_1/Neg_1:y:0*
T0*/
_output_shapes
:?????????== 2
model/p_re_lu_1/Relu_1ͺ
model/p_re_lu_1/mulMulmodel/p_re_lu_1/Neg:y:0$model/p_re_lu_1/Relu_1:activations:0*
T0*/
_output_shapes
:?????????== 2
model/p_re_lu_1/mulͺ
model/p_re_lu_1/addAddV2"model/p_re_lu_1/Relu:activations:0model/p_re_lu_1/mul:z:0*
T0*/
_output_shapes
:?????????== 2
model/p_re_lu_1/addΟ
model/max_pooling2d_1/MaxPoolMaxPoolmodel/p_re_lu_1/add:z:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_1/MaxPoolώ
8model/separable_conv2d_2/separable_conv2d/ReadVariableOpReadVariableOpAmodel_separable_conv2d_2_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02:
8model/separable_conv2d_2/separable_conv2d/ReadVariableOp
:model/separable_conv2d_2/separable_conv2d/ReadVariableOp_1ReadVariableOpCmodel_separable_conv2d_2_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: @*
dtype02<
:model/separable_conv2d_2/separable_conv2d/ReadVariableOp_1»
/model/separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             21
/model/separable_conv2d_2/separable_conv2d/ShapeΓ
7model/separable_conv2d_2/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      29
7model/separable_conv2d_2/separable_conv2d/dilation_rateΠ
3model/separable_conv2d_2/separable_conv2d/depthwiseDepthwiseConv2dNative&model/max_pooling2d_1/MaxPool:output:0@model/separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
25
3model/separable_conv2d_2/separable_conv2d/depthwiseΕ
)model/separable_conv2d_2/separable_conv2dConv2D<model/separable_conv2d_2/separable_conv2d/depthwise:output:0Bmodel/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2+
)model/separable_conv2d_2/separable_conv2dΘ
*model/batch_normalization_2/ReadVariableOpReadVariableOp3model_batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model/batch_normalization_2/ReadVariableOpΞ
,model/batch_normalization_2/ReadVariableOp_1ReadVariableOp5model_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02.
,model/batch_normalization_2/ReadVariableOp_1ϋ
;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02=
;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp
=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02?
=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1
,model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV32model/separable_conv2d_2/separable_conv2d:output:02model/batch_normalization_2/ReadVariableOp:value:04model/batch_normalization_2/ReadVariableOp_1:value:0Cmodel/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o:*
is_training( 2.
,model/batch_normalization_2/FusedBatchNormV3 
model/p_re_lu_2/ReluRelu0model/batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
model/p_re_lu_2/Relu¬
model/p_re_lu_2/ReadVariableOpReadVariableOp'model_p_re_lu_2_readvariableop_resource*"
_output_shapes
:@*
dtype02 
model/p_re_lu_2/ReadVariableOp
model/p_re_lu_2/NegNeg&model/p_re_lu_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2
model/p_re_lu_2/Neg‘
model/p_re_lu_2/Neg_1Neg0model/batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
model/p_re_lu_2/Neg_1
model/p_re_lu_2/Relu_1Relumodel/p_re_lu_2/Neg_1:y:0*
T0*/
_output_shapes
:?????????@2
model/p_re_lu_2/Relu_1ͺ
model/p_re_lu_2/mulMulmodel/p_re_lu_2/Neg:y:0$model/p_re_lu_2/Relu_1:activations:0*
T0*/
_output_shapes
:?????????@2
model/p_re_lu_2/mulͺ
model/p_re_lu_2/addAddV2"model/p_re_lu_2/Relu:activations:0model/p_re_lu_2/mul:z:0*
T0*/
_output_shapes
:?????????@2
model/p_re_lu_2/addΟ
model/max_pooling2d_2/MaxPoolMaxPoolmodel/p_re_lu_2/add:z:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_2/MaxPoolώ
8model/separable_conv2d_3/separable_conv2d/ReadVariableOpReadVariableOpAmodel_separable_conv2d_3_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02:
8model/separable_conv2d_3/separable_conv2d/ReadVariableOp
:model/separable_conv2d_3/separable_conv2d/ReadVariableOp_1ReadVariableOpCmodel_separable_conv2d_3_separable_conv2d_readvariableop_1_resource*'
_output_shapes
:@*
dtype02<
:model/separable_conv2d_3/separable_conv2d/ReadVariableOp_1»
/model/separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      21
/model/separable_conv2d_3/separable_conv2d/ShapeΓ
7model/separable_conv2d_3/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      29
7model/separable_conv2d_3/separable_conv2d/dilation_rateΠ
3model/separable_conv2d_3/separable_conv2d/depthwiseDepthwiseConv2dNative&model/max_pooling2d_2/MaxPool:output:0@model/separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
25
3model/separable_conv2d_3/separable_conv2d/depthwiseΖ
)model/separable_conv2d_3/separable_conv2dConv2D<model/separable_conv2d_3/separable_conv2d/depthwise:output:0Bmodel/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2+
)model/separable_conv2d_3/separable_conv2dΙ
*model/batch_normalization_3/ReadVariableOpReadVariableOp3model_batch_normalization_3_readvariableop_resource*
_output_shapes	
:*
dtype02,
*model/batch_normalization_3/ReadVariableOpΟ
,model/batch_normalization_3/ReadVariableOp_1ReadVariableOp5model_batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:*
dtype02.
,model/batch_normalization_3/ReadVariableOp_1ό
;model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02=
;model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp
=model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02?
=model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1£
,model/batch_normalization_3/FusedBatchNormV3FusedBatchNormV32model/separable_conv2d_3/separable_conv2d:output:02model/batch_normalization_3/ReadVariableOp:value:04model/batch_normalization_3/ReadVariableOp_1:value:0Cmodel/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
is_training( 2.
,model/batch_normalization_3/FusedBatchNormV3‘
model/p_re_lu_3/ReluRelu0model/batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????2
model/p_re_lu_3/Relu­
model/p_re_lu_3/ReadVariableOpReadVariableOp'model_p_re_lu_3_readvariableop_resource*#
_output_shapes
:*
dtype02 
model/p_re_lu_3/ReadVariableOp
model/p_re_lu_3/NegNeg&model/p_re_lu_3/ReadVariableOp:value:0*
T0*#
_output_shapes
:2
model/p_re_lu_3/Neg’
model/p_re_lu_3/Neg_1Neg0model/batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????2
model/p_re_lu_3/Neg_1
model/p_re_lu_3/Relu_1Relumodel/p_re_lu_3/Neg_1:y:0*
T0*0
_output_shapes
:?????????2
model/p_re_lu_3/Relu_1«
model/p_re_lu_3/mulMulmodel/p_re_lu_3/Neg:y:0$model/p_re_lu_3/Relu_1:activations:0*
T0*0
_output_shapes
:?????????2
model/p_re_lu_3/mul«
model/p_re_lu_3/addAddV2"model/p_re_lu_3/Relu:activations:0model/p_re_lu_3/mul:z:0*
T0*0
_output_shapes
:?????????2
model/p_re_lu_3/addΠ
model/max_pooling2d_3/MaxPoolMaxPoolmodel/p_re_lu_3/add:z:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_3/MaxPool?
8model/separable_conv2d_4/separable_conv2d/ReadVariableOpReadVariableOpAmodel_separable_conv2d_4_separable_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02:
8model/separable_conv2d_4/separable_conv2d/ReadVariableOp
:model/separable_conv2d_4/separable_conv2d/ReadVariableOp_1ReadVariableOpCmodel_separable_conv2d_4_separable_conv2d_readvariableop_1_resource*(
_output_shapes
:*
dtype02<
:model/separable_conv2d_4/separable_conv2d/ReadVariableOp_1»
/model/separable_conv2d_4/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            21
/model/separable_conv2d_4/separable_conv2d/ShapeΓ
7model/separable_conv2d_4/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      29
7model/separable_conv2d_4/separable_conv2d/dilation_rateΡ
3model/separable_conv2d_4/separable_conv2d/depthwiseDepthwiseConv2dNative&model/max_pooling2d_3/MaxPool:output:0@model/separable_conv2d_4/separable_conv2d/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
25
3model/separable_conv2d_4/separable_conv2d/depthwiseΖ
)model/separable_conv2d_4/separable_conv2dConv2D<model/separable_conv2d_4/separable_conv2d/depthwise:output:0Bmodel/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2+
)model/separable_conv2d_4/separable_conv2dΙ
*model/batch_normalization_4/ReadVariableOpReadVariableOp3model_batch_normalization_4_readvariableop_resource*
_output_shapes	
:*
dtype02,
*model/batch_normalization_4/ReadVariableOpΟ
,model/batch_normalization_4/ReadVariableOp_1ReadVariableOp5model_batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:*
dtype02.
,model/batch_normalization_4/ReadVariableOp_1ό
;model/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02=
;model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp
=model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02?
=model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1£
,model/batch_normalization_4/FusedBatchNormV3FusedBatchNormV32model/separable_conv2d_4/separable_conv2d:output:02model/batch_normalization_4/ReadVariableOp:value:04model/batch_normalization_4/ReadVariableOp_1:value:0Cmodel/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
is_training( 2.
,model/batch_normalization_4/FusedBatchNormV3‘
model/p_re_lu_4/ReluRelu0model/batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????2
model/p_re_lu_4/Relu­
model/p_re_lu_4/ReadVariableOpReadVariableOp'model_p_re_lu_4_readvariableop_resource*#
_output_shapes
:*
dtype02 
model/p_re_lu_4/ReadVariableOp
model/p_re_lu_4/NegNeg&model/p_re_lu_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:2
model/p_re_lu_4/Neg’
model/p_re_lu_4/Neg_1Neg0model/batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????2
model/p_re_lu_4/Neg_1
model/p_re_lu_4/Relu_1Relumodel/p_re_lu_4/Neg_1:y:0*
T0*0
_output_shapes
:?????????2
model/p_re_lu_4/Relu_1«
model/p_re_lu_4/mulMulmodel/p_re_lu_4/Neg:y:0$model/p_re_lu_4/Relu_1:activations:0*
T0*0
_output_shapes
:?????????2
model/p_re_lu_4/mul«
model/p_re_lu_4/addAddV2"model/p_re_lu_4/Relu:activations:0model/p_re_lu_4/mul:z:0*
T0*0
_output_shapes
:?????????2
model/p_re_lu_4/addΠ
model/max_pooling2d_4/MaxPoolMaxPoolmodel/p_re_lu_4/add:z:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_4/MaxPool{
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
model/flatten/Const²
model/flatten/ReshapeReshape&model/max_pooling2d_4/MaxPool:output:0model/flatten/Const:output:0*
T0*(
_output_shapes
:?????????2
model/flatten/Reshape³
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!model/dense/MatMul/ReadVariableOp°
model/dense/MatMulMatMulmodel/flatten/Reshape:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
model/dense/MatMul±
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"model/dense/BiasAdd/ReadVariableOp²
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
model/dense/BiasAdd
model/p_re_lu_5/ReluRelumodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
model/p_re_lu_5/Relu₯
model/p_re_lu_5/ReadVariableOpReadVariableOp'model_p_re_lu_5_readvariableop_resource*
_output_shapes	
:*
dtype02 
model/p_re_lu_5/ReadVariableOp
model/p_re_lu_5/NegNeg&model/p_re_lu_5/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
model/p_re_lu_5/Neg
model/p_re_lu_5/Neg_1Negmodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
model/p_re_lu_5/Neg_1
model/p_re_lu_5/Relu_1Relumodel/p_re_lu_5/Neg_1:y:0*
T0*(
_output_shapes
:?????????2
model/p_re_lu_5/Relu_1£
model/p_re_lu_5/mulMulmodel/p_re_lu_5/Neg:y:0$model/p_re_lu_5/Relu_1:activations:0*
T0*(
_output_shapes
:?????????2
model/p_re_lu_5/mul£
model/p_re_lu_5/addAddV2"model/p_re_lu_5/Relu:activations:0model/p_re_lu_5/mul:z:0*
T0*(
_output_shapes
:?????????2
model/p_re_lu_5/add
model/dropout/IdentityIdentitymodel/p_re_lu_5/add:z:0*
T0*(
_output_shapes
:?????????2
model/dropout/IdentityΈ
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02%
#model/dense_1/MatMul/ReadVariableOpΆ
model/dense_1/MatMulMatMulmodel/dropout/Identity:output:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model/dense_1/MatMulΆ
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$model/dense_1/BiasAdd/ReadVariableOpΉ
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model/dense_1/BiasAdd
model/p_re_lu_6/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model/p_re_lu_6/Relu€
model/p_re_lu_6/ReadVariableOpReadVariableOp'model_p_re_lu_6_readvariableop_resource*
_output_shapes
:@*
dtype02 
model/p_re_lu_6/ReadVariableOp~
model/p_re_lu_6/NegNeg&model/p_re_lu_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
model/p_re_lu_6/Neg
model/p_re_lu_6/Neg_1Negmodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model/p_re_lu_6/Neg_1
model/p_re_lu_6/Relu_1Relumodel/p_re_lu_6/Neg_1:y:0*
T0*'
_output_shapes
:?????????@2
model/p_re_lu_6/Relu_1’
model/p_re_lu_6/mulMulmodel/p_re_lu_6/Neg:y:0$model/p_re_lu_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@2
model/p_re_lu_6/mul’
model/p_re_lu_6/addAddV2"model/p_re_lu_6/Relu:activations:0model/p_re_lu_6/mul:z:0*
T0*'
_output_shapes
:?????????@2
model/p_re_lu_6/add
model/dropout_1/IdentityIdentitymodel/p_re_lu_6/add:z:0*
T0*'
_output_shapes
:?????????@2
model/dropout_1/Identity·
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02%
#model/dense_2/MatMul/ReadVariableOpΈ
model/dense_2/MatMulMatMul!model/dropout_1/Identity:output:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model/dense_2/MatMulΆ
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02&
$model/dense_2/BiasAdd/ReadVariableOpΉ
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model/dense_2/BiasAdd
model/p_re_lu_7/ReluRelumodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model/p_re_lu_7/Relu€
model/p_re_lu_7/ReadVariableOpReadVariableOp'model_p_re_lu_7_readvariableop_resource*
_output_shapes
: *
dtype02 
model/p_re_lu_7/ReadVariableOp~
model/p_re_lu_7/NegNeg&model/p_re_lu_7/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
model/p_re_lu_7/Neg
model/p_re_lu_7/Neg_1Negmodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model/p_re_lu_7/Neg_1
model/p_re_lu_7/Relu_1Relumodel/p_re_lu_7/Neg_1:y:0*
T0*'
_output_shapes
:????????? 2
model/p_re_lu_7/Relu_1’
model/p_re_lu_7/mulMulmodel/p_re_lu_7/Neg:y:0$model/p_re_lu_7/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
model/p_re_lu_7/mul’
model/p_re_lu_7/addAddV2"model/p_re_lu_7/Relu:activations:0model/p_re_lu_7/mul:z:0*
T0*'
_output_shapes
:????????? 2
model/p_re_lu_7/add
model/dropout_2/IdentityIdentitymodel/p_re_lu_7/add:z:0*
T0*'
_output_shapes
:????????? 2
model/dropout_2/Identity·
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02%
#model/dense_3/MatMul/ReadVariableOpΈ
model/dense_3/MatMulMatMul!model/dropout_2/Identity:output:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/dense_3/MatMulΆ
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/dense_3/BiasAdd/ReadVariableOpΉ
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/dense_3/BiasAdd
model/dense_3/SoftmaxSoftmaxmodel/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model/dense_3/Softmaxz
IdentityIdentitymodel/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp:^model/batch_normalization/FusedBatchNormV3/ReadVariableOp<^model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1)^model/batch_normalization/ReadVariableOp+^model/batch_normalization/ReadVariableOp_1<^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1+^model/batch_normalization_1/ReadVariableOp-^model/batch_normalization_1/ReadVariableOp_1<^model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1+^model/batch_normalization_2/ReadVariableOp-^model/batch_normalization_2/ReadVariableOp_1<^model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1+^model/batch_normalization_3/ReadVariableOp-^model/batch_normalization_3/ReadVariableOp_1<^model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1+^model/batch_normalization_4/ReadVariableOp-^model/batch_normalization_4/ReadVariableOp_1#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp^model/p_re_lu/ReadVariableOp^model/p_re_lu_1/ReadVariableOp^model/p_re_lu_2/ReadVariableOp^model/p_re_lu_3/ReadVariableOp^model/p_re_lu_4/ReadVariableOp^model/p_re_lu_5/ReadVariableOp^model/p_re_lu_6/ReadVariableOp^model/p_re_lu_7/ReadVariableOp7^model/separable_conv2d/separable_conv2d/ReadVariableOp9^model/separable_conv2d/separable_conv2d/ReadVariableOp_19^model/separable_conv2d_1/separable_conv2d/ReadVariableOp;^model/separable_conv2d_1/separable_conv2d/ReadVariableOp_19^model/separable_conv2d_2/separable_conv2d/ReadVariableOp;^model/separable_conv2d_2/separable_conv2d/ReadVariableOp_19^model/separable_conv2d_3/separable_conv2d/ReadVariableOp;^model/separable_conv2d_3/separable_conv2d/ReadVariableOp_19^model/separable_conv2d_4/separable_conv2d/ReadVariableOp;^model/separable_conv2d_4/separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2v
9model/batch_normalization/FusedBatchNormV3/ReadVariableOp9model/batch_normalization/FusedBatchNormV3/ReadVariableOp2z
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12T
(model/batch_normalization/ReadVariableOp(model/batch_normalization/ReadVariableOp2X
*model/batch_normalization/ReadVariableOp_1*model/batch_normalization/ReadVariableOp_12z
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12X
*model/batch_normalization_1/ReadVariableOp*model/batch_normalization_1/ReadVariableOp2\
,model/batch_normalization_1/ReadVariableOp_1,model/batch_normalization_1/ReadVariableOp_12z
;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12X
*model/batch_normalization_2/ReadVariableOp*model/batch_normalization_2/ReadVariableOp2\
,model/batch_normalization_2/ReadVariableOp_1,model/batch_normalization_2/ReadVariableOp_12z
;model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12X
*model/batch_normalization_3/ReadVariableOp*model/batch_normalization_3/ReadVariableOp2\
,model/batch_normalization_3/ReadVariableOp_1,model/batch_normalization_3/ReadVariableOp_12z
;model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12X
*model/batch_normalization_4/ReadVariableOp*model/batch_normalization_4/ReadVariableOp2\
,model/batch_normalization_4/ReadVariableOp_1,model/batch_normalization_4/ReadVariableOp_12H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp2<
model/p_re_lu/ReadVariableOpmodel/p_re_lu/ReadVariableOp2@
model/p_re_lu_1/ReadVariableOpmodel/p_re_lu_1/ReadVariableOp2@
model/p_re_lu_2/ReadVariableOpmodel/p_re_lu_2/ReadVariableOp2@
model/p_re_lu_3/ReadVariableOpmodel/p_re_lu_3/ReadVariableOp2@
model/p_re_lu_4/ReadVariableOpmodel/p_re_lu_4/ReadVariableOp2@
model/p_re_lu_5/ReadVariableOpmodel/p_re_lu_5/ReadVariableOp2@
model/p_re_lu_6/ReadVariableOpmodel/p_re_lu_6/ReadVariableOp2@
model/p_re_lu_7/ReadVariableOpmodel/p_re_lu_7/ReadVariableOp2p
6model/separable_conv2d/separable_conv2d/ReadVariableOp6model/separable_conv2d/separable_conv2d/ReadVariableOp2t
8model/separable_conv2d/separable_conv2d/ReadVariableOp_18model/separable_conv2d/separable_conv2d/ReadVariableOp_12t
8model/separable_conv2d_1/separable_conv2d/ReadVariableOp8model/separable_conv2d_1/separable_conv2d/ReadVariableOp2x
:model/separable_conv2d_1/separable_conv2d/ReadVariableOp_1:model/separable_conv2d_1/separable_conv2d/ReadVariableOp_12t
8model/separable_conv2d_2/separable_conv2d/ReadVariableOp8model/separable_conv2d_2/separable_conv2d/ReadVariableOp2x
:model/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:model/separable_conv2d_2/separable_conv2d/ReadVariableOp_12t
8model/separable_conv2d_3/separable_conv2d/ReadVariableOp8model/separable_conv2d_3/separable_conv2d/ReadVariableOp2x
:model/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:model/separable_conv2d_3/separable_conv2d/ReadVariableOp_12t
8model/separable_conv2d_4/separable_conv2d/ReadVariableOp8model/separable_conv2d_4/separable_conv2d/ReadVariableOp2x
:model/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:model/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:Z V
1
_output_shapes
:?????????
!
_user_specified_name	input_1
½	
Ρ
6__inference_batch_normalization_1_layer_call_fn_103876

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity’StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_999122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
β

P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_99868

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ά
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ή
Δ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_101735

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1έ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
Π	

E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_104904

inputs%
readvariableop_resource:@
identity’ReadVariableOpN
ReluReluinputs*
T0*'
_output_shapes
:?????????@2
Relut
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpN
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:@2
NegO
Neg_1Neginputs*
T0*'
_output_shapes
:?????????@2
Neg_1U
Relu_1Relu	Neg_1:y:0*
T0*'
_output_shapes
:?????????@2
Relu_1b
mulMulNeg:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????@2
mulb
addAddV2Relu:activations:0mul:z:0*
T0*'
_output_shapes
:?????????@2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????@: 2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
Π	

E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_101279

inputs%
readvariableop_resource:@
identity’ReadVariableOpN
ReluReluinputs*
T0*'
_output_shapes
:?????????@2
Relut
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpN
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:@2
NegO
Neg_1Neginputs*
T0*'
_output_shapes
:?????????@2
Neg_1U
Relu_1Relu	Neg_1:y:0*
T0*'
_output_shapes
:?????????@2
Relu_1b
mulMulNeg:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????@2
mulb
addAddV2Relu:activations:0mul:z:0*
T0*'
_output_shapes
:?????????@2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????@: 2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs

»
L__inference_separable_conv2d_layer_call_and_return_conditional_losses_100868

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource:
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOpΉ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateε
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
2
separable_conv2d/depthwiseα
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
2
separable_conv2d|
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*/
_output_shapes
:?????????~~2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
€
°
__inference_loss_fn_2_105092L
9dense_1_kernel_regularizer_square_readvariableop_resource:	@
identity’0dense_1/kernel/Regularizer/Square/ReadVariableOpί
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_1_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	@*
dtype022
0dense_1/kernel/Regularizer/Square/ReadVariableOp΄
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2#
!dense_1/kernel/Regularizer/Square
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_1/kernel/Regularizer/ConstΊ
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/Sum
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_1/kernel/Regularizer/mul/xΌ
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/mull
IdentityIdentity"dense_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp
²
b
C__inference_dropout_layer_call_and_return_conditional_losses_101599

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΅
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *?2
dropout/GreaterEqual/yΏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ζ
J
.__inference_max_pooling2d_layer_call_fn_103798

inputs
identityΟ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1009202
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????~~:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
Ψ
z
*__inference_p_re_lu_6_layer_call_fn_104873

inputs
unknown:@
identity’StatefulPartitionedCallθ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_1007862
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
΅
‘
B__inference_p_re_lu_layer_call_and_return_conditional_losses_99756

inputs-
readvariableop_resource:
identity’ReadVariableOph
ReluReluinputs*
T0*A
_output_shapes/
-:+???????????????????????????2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:*
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:2
Negi
Neg_1Neginputs*
T0*A
_output_shapes/
-:+???????????????????????????2
Neg_1o
Relu_1Relu	Neg_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Relu_1|
mulMulNeg:y:0Relu_1:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????2
mul|
addAddV2Relu:activations:0mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2
add|
IdentityIdentityadd:z:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????: 2 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs

τ
C__inference_dense_3_layer_call_and_return_conditional_losses_101351

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
έ
§
__inference_loss_fn_3_105103E
7dense_1_bias_regularizer_square_readvariableop_resource:@
identity’.dense_1/bias/Regularizer/Square/ReadVariableOpΤ
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp7dense_1_bias_regularizer_square_readvariableop_resource*
_output_shapes
:@*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp©
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@2!
dense_1/bias/Regularizer/Square
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const²
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_1/bias/Regularizer/mul/x΄
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mulj
IdentityIdentity dense_1/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp/^dense_1/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp

Ύ
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_101063

inputsB
(separable_conv2d_readvariableop_resource:@E
*separable_conv2d_readvariableop_1_resource:@
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
separable_conv2d/ReadVariableOpΊ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*'
_output_shapes
:@*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateε
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
separable_conv2d/depthwiseβ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2
separable_conv2d}
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*0
_output_shapes
:?????????2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Ύ	
Ρ
6__inference_batch_normalization_2_layer_call_fn_104100

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity’StatefulPartitionedCall³
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
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1001442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
Έ
€
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_104224

inputs-
readvariableop_resource:@
identity’ReadVariableOph
ReluReluinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:@*
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:@2
Negi
Neg_1Neginputs*
T0*A
_output_shapes/
-:+???????????????????????????@2
Neg_1o
Relu_1Relu	Neg_1:y:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu_1|
mulMulNeg:y:0Relu_1:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
mul|
addAddV2Relu:activations:0mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
add|
IdentityIdentityadd:z:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????@: 2 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
π

*__inference_p_re_lu_2_layer_call_fn_104212

inputs
unknown:@
identity’StatefulPartitionedCallπ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_1010422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
 
ΐ
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_104522

inputsC
(separable_conv2d_readvariableop_resource:F
*separable_conv2d_readvariableop_1_resource:
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1΄
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOp»
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateζ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2
separable_conv2d/depthwiseβ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2
separable_conv2d}
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*0
_output_shapes
:?????????2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
³

₯
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_101107

inputs.
readvariableop_resource:
identity’ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:?????????2
Relu}
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:*
dtype02
ReadVariableOpW
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:?????????2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:?????????2
Relu_1k
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:?????????2
mulk
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:?????????2
addk
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
½

*__inference_p_re_lu_4_layer_call_fn_104653

inputs
unknown:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_1006842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,???????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Χ
L
0__inference_max_pooling2d_1_layer_call_fn_104017

inputs
identityμ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1000212
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Δ
Ω
C__inference_dense_1_layer_call_and_return_conditional_losses_104866

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’.dense_1/bias/Regularizer/Square/ReadVariableOp’0dense_1/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddΔ
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype022
0dense_1/kernel/Regularizer/Square/ReadVariableOp΄
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2#
!dense_1/kernel/Regularizer/Square
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_1/kernel/Regularizer/ConstΊ
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/Sum
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_1/kernel/Regularizer/mul/xΌ
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/mulΌ
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp©
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@2!
dense_1/bias/Regularizer/Square
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const²
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_1/bias/Regularizer/mul/x΄
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityγ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_1/bias/Regularizer/Square/ReadVariableOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ζ
z
*__inference_p_re_lu_6_layer_call_fn_104880

inputs
unknown:@
identity’StatefulPartitionedCallθ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_1012792
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????@: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
Β
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_104480

inputs
identity
MaxPoolMaxPoolinputs*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
·
£
D__inference_p_re_lu_1_layer_call_and_return_conditional_losses_99988

inputs-
readvariableop_resource: 
identity’ReadVariableOph
ReluReluinputs*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
: *
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
: 2
Negi
Neg_1Neginputs*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Neg_1o
Relu_1Relu	Neg_1:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Relu_1|
mulMulNeg:y:0Relu_1:activations:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
mul|
addAddV2Relu:activations:0mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
add|
IdentityIdentityadd:z:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+??????????????????????????? : 2 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
σ
 
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_100564

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1α
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
ύ	

E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_100786

inputs%
readvariableop_resource:@
identity’ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:??????????????????2
Relut
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpN
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:@2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:??????????????????2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:??????????????????2
Relu_1b
mulMulNeg:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????@2
mulb
addAddV2Relu:activations:0mul:z:0*
T0*'
_output_shapes
:?????????@2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
ωΪ

A__inference_model_layer_call_and_return_conditional_losses_102212

inputs1
separable_conv2d_102052:1
separable_conv2d_102054:(
batch_normalization_102057:(
batch_normalization_102059:(
batch_normalization_102061:(
batch_normalization_102063:$
p_re_lu_102066:3
separable_conv2d_1_102070:3
separable_conv2d_1_102072: *
batch_normalization_1_102075: *
batch_normalization_1_102077: *
batch_normalization_1_102079: *
batch_normalization_1_102081: &
p_re_lu_1_102084: 3
separable_conv2d_2_102088: 3
separable_conv2d_2_102090: @*
batch_normalization_2_102093:@*
batch_normalization_2_102095:@*
batch_normalization_2_102097:@*
batch_normalization_2_102099:@&
p_re_lu_2_102102:@3
separable_conv2d_3_102106:@4
separable_conv2d_3_102108:@+
batch_normalization_3_102111:	+
batch_normalization_3_102113:	+
batch_normalization_3_102115:	+
batch_normalization_3_102117:	'
p_re_lu_3_102120:4
separable_conv2d_4_102124:5
separable_conv2d_4_102126:+
batch_normalization_4_102129:	+
batch_normalization_4_102131:	+
batch_normalization_4_102133:	+
batch_normalization_4_102135:	'
p_re_lu_4_102138: 
dense_102143:

dense_102145:	
p_re_lu_5_102148:	!
dense_1_102152:	@
dense_1_102154:@
p_re_lu_6_102157:@ 
dense_2_102161:@ 
dense_2_102163: 
p_re_lu_7_102166:  
dense_3_102170: 
dense_3_102172:
identity’+batch_normalization/StatefulPartitionedCall’-batch_normalization_1/StatefulPartitionedCall’-batch_normalization_2/StatefulPartitionedCall’-batch_normalization_3/StatefulPartitionedCall’-batch_normalization_4/StatefulPartitionedCall’dense/StatefulPartitionedCall’,dense/bias/Regularizer/Square/ReadVariableOp’.dense/kernel/Regularizer/Square/ReadVariableOp’dense_1/StatefulPartitionedCall’.dense_1/bias/Regularizer/Square/ReadVariableOp’0dense_1/kernel/Regularizer/Square/ReadVariableOp’dense_2/StatefulPartitionedCall’.dense_2/bias/Regularizer/Square/ReadVariableOp’0dense_2/kernel/Regularizer/Square/ReadVariableOp’dense_3/StatefulPartitionedCall’dropout/StatefulPartitionedCall’!dropout_1/StatefulPartitionedCall’!dropout_2/StatefulPartitionedCall’p_re_lu/StatefulPartitionedCall’!p_re_lu_1/StatefulPartitionedCall’!p_re_lu_2/StatefulPartitionedCall’!p_re_lu_3/StatefulPartitionedCall’!p_re_lu_4/StatefulPartitionedCall’!p_re_lu_5/StatefulPartitionedCall’!p_re_lu_6/StatefulPartitionedCall’!p_re_lu_7/StatefulPartitionedCall’(separable_conv2d/StatefulPartitionedCall’*separable_conv2d_1/StatefulPartitionedCall’*separable_conv2d_2/StatefulPartitionedCall’*separable_conv2d_3/StatefulPartitionedCall’*separable_conv2d_4/StatefulPartitionedCallΔ
(separable_conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsseparable_conv2d_102052separable_conv2d_102054*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_separable_conv2d_layer_call_and_return_conditional_losses_1008682*
(separable_conv2d/StatefulPartitionedCallΈ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall1separable_conv2d/StatefulPartitionedCall:output:0batch_normalization_102057batch_normalization_102059batch_normalization_102061batch_normalization_102063*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_1019302-
+batch_normalization/StatefulPartitionedCall³
p_re_lu/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0p_re_lu_102066*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_p_re_lu_layer_call_and_return_conditional_losses_1009122!
p_re_lu/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCall(p_re_lu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_1009202
max_pooling2d/PartitionedCallξ
*separable_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0separable_conv2d_1_102070separable_conv2d_1_102072*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_1009332,
*separable_conv2d_1/StatefulPartitionedCallΘ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_102075batch_normalization_1_102077batch_normalization_1_102079batch_normalization_1_102081*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1018652/
-batch_normalization_1/StatefulPartitionedCall½
!p_re_lu_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0p_re_lu_1_102084*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_1_layer_call_and_return_conditional_losses_1009772#
!p_re_lu_1/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall*p_re_lu_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1009852!
max_pooling2d_1/PartitionedCallπ
*separable_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0separable_conv2d_2_102088separable_conv2d_2_102090*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_1009982,
*separable_conv2d_2/StatefulPartitionedCallΘ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_102093batch_normalization_2_102095batch_normalization_2_102097batch_normalization_2_102099*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1018002/
-batch_normalization_2/StatefulPartitionedCall½
!p_re_lu_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0p_re_lu_2_102102*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_1010422#
!p_re_lu_2/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall*p_re_lu_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1010502!
max_pooling2d_2/PartitionedCallρ
*separable_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0separable_conv2d_3_102106separable_conv2d_3_102108*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_1010632,
*separable_conv2d_3/StatefulPartitionedCallΙ
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_3/StatefulPartitionedCall:output:0batch_normalization_3_102111batch_normalization_3_102113batch_normalization_3_102115batch_normalization_3_102117*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1017352/
-batch_normalization_3/StatefulPartitionedCallΎ
!p_re_lu_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0p_re_lu_3_102120*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_1011072#
!p_re_lu_3/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall*p_re_lu_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1011152!
max_pooling2d_3/PartitionedCallρ
*separable_conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0separable_conv2d_4_102124separable_conv2d_4_102126*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_1011282,
*separable_conv2d_4/StatefulPartitionedCallΙ
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_4/StatefulPartitionedCall:output:0batch_normalization_4_102129batch_normalization_4_102131batch_normalization_4_102133batch_normalization_4_102135*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1016702/
-batch_normalization_4/StatefulPartitionedCallΎ
!p_re_lu_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0p_re_lu_4_102138*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_1011722#
!p_re_lu_4/StatefulPartitionedCall
max_pooling2d_4/PartitionedCallPartitionedCall*p_re_lu_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1011802!
max_pooling2d_4/PartitionedCallτ
flatten/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1011882
flatten/PartitionedCall 
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_102143dense_102145*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1012122
dense/StatefulPartitionedCall¦
!p_re_lu_5/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0p_re_lu_5_102148*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_1012292#
!p_re_lu_5/StatefulPartitionedCall
dropout/StatefulPartitionedCallStatefulPartitionedCall*p_re_lu_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1015992!
dropout/StatefulPartitionedCall±
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_102152dense_1_102154*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_1012622!
dense_1/StatefulPartitionedCall§
!p_re_lu_6/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0p_re_lu_6_102157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_1012792#
!p_re_lu_6/StatefulPartitionedCall΅
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall*p_re_lu_6/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1015592#
!dropout_1/StatefulPartitionedCall³
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_102161dense_2_102163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1013122!
dense_2/StatefulPartitionedCall§
!p_re_lu_7/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0p_re_lu_7_102166*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_1013292#
!p_re_lu_7/StatefulPartitionedCall·
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall*p_re_lu_7/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1015192#
!dropout_2/StatefulPartitionedCall³
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_3_102170dense_3_102172*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1013512!
dense_3/StatefulPartitionedCall―
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_102143* 
_output_shapes
:
*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp―
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense/kernel/Regularizer/mul/x΄
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mul¦
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_102145*
_output_shapes	
:*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp€
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constͺ
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mul΄
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_102152*
_output_shapes
:	@*
dtype022
0dense_1/kernel/Regularizer/Square/ReadVariableOp΄
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2#
!dense_1/kernel/Regularizer/Square
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_1/kernel/Regularizer/ConstΊ
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/Sum
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_1/kernel/Regularizer/mul/xΌ
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/mul«
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_102154*
_output_shapes
:@*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp©
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@2!
dense_1/bias/Regularizer/Square
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const²
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_1/bias/Regularizer/mul/x΄
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mul³
0dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_102161*
_output_shapes

:@ *
dtype022
0dense_2/kernel/Regularizer/Square/ReadVariableOp³
!dense_2/kernel/Regularizer/SquareSquare8dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2#
!dense_2/kernel/Regularizer/Square
 dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_2/kernel/Regularizer/ConstΊ
dense_2/kernel/Regularizer/SumSum%dense_2/kernel/Regularizer/Square:y:0)dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/Sum
 dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_2/kernel/Regularizer/mul/xΌ
dense_2/kernel/Regularizer/mulMul)dense_2/kernel/Regularizer/mul/x:output:0'dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/mul«
.dense_2/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_102163*
_output_shapes
: *
dtype020
.dense_2/bias/Regularizer/Square/ReadVariableOp©
dense_2/bias/Regularizer/SquareSquare6dense_2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: 2!
dense_2/bias/Regularizer/Square
dense_2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_2/bias/Regularizer/Const²
dense_2/bias/Regularizer/SumSum#dense_2/bias/Regularizer/Square:y:0'dense_2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/Sum
dense_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_2/bias/Regularizer/mul/x΄
dense_2/bias/Regularizer/mulMul'dense_2/bias/Regularizer/mul/x:output:0%dense_2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/mul
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

IdentityΡ

NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall^dense/StatefulPartitionedCall-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall/^dense_1/bias/Regularizer/Square/ReadVariableOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall/^dense_2/bias/Regularizer/Square/ReadVariableOp1^dense_2/kernel/Regularizer/Square/ReadVariableOp ^dense_3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall ^p_re_lu/StatefulPartitionedCall"^p_re_lu_1/StatefulPartitionedCall"^p_re_lu_2/StatefulPartitionedCall"^p_re_lu_3/StatefulPartitionedCall"^p_re_lu_4/StatefulPartitionedCall"^p_re_lu_5/StatefulPartitionedCall"^p_re_lu_6/StatefulPartitionedCall"^p_re_lu_7/StatefulPartitionedCall)^separable_conv2d/StatefulPartitionedCall+^separable_conv2d_1/StatefulPartitionedCall+^separable_conv2d_2/StatefulPartitionedCall+^separable_conv2d_3/StatefulPartitionedCall+^separable_conv2d_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2`
.dense_2/bias/Regularizer/Square/ReadVariableOp.dense_2/bias/Regularizer/Square/ReadVariableOp2d
0dense_2/kernel/Regularizer/Square/ReadVariableOp0dense_2/kernel/Regularizer/Square/ReadVariableOp2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2B
p_re_lu/StatefulPartitionedCallp_re_lu/StatefulPartitionedCall2F
!p_re_lu_1/StatefulPartitionedCall!p_re_lu_1/StatefulPartitionedCall2F
!p_re_lu_2/StatefulPartitionedCall!p_re_lu_2/StatefulPartitionedCall2F
!p_re_lu_3/StatefulPartitionedCall!p_re_lu_3/StatefulPartitionedCall2F
!p_re_lu_4/StatefulPartitionedCall!p_re_lu_4/StatefulPartitionedCall2F
!p_re_lu_5/StatefulPartitionedCall!p_re_lu_5/StatefulPartitionedCall2F
!p_re_lu_6/StatefulPartitionedCall!p_re_lu_6/StatefulPartitionedCall2F
!p_re_lu_7/StatefulPartitionedCall!p_re_lu_7/StatefulPartitionedCall2T
(separable_conv2d/StatefulPartitionedCall(separable_conv2d/StatefulPartitionedCall2X
*separable_conv2d_1/StatefulPartitionedCall*separable_conv2d_1/StatefulPartitionedCall2X
*separable_conv2d_2/StatefulPartitionedCall*separable_conv2d_2/StatefulPartitionedCall2X
*separable_conv2d_3/StatefulPartitionedCall*separable_conv2d_3/StatefulPartitionedCall2X
*separable_conv2d_4/StatefulPartitionedCall*separable_conv2d_4/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ύ
²
1__inference_separable_conv2d_layer_call_fn_103593

inputs!
unknown:#
	unknown_0:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_995862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
Ί
²
1__inference_separable_conv2d_layer_call_fn_103602

inputs!
unknown:#
	unknown_0:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_separable_conv2d_layer_call_and_return_conditional_losses_1008682
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????~~2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ή
Δ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_104422

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1έ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
Θ	
Υ
6__inference_batch_normalization_4_layer_call_fn_104535

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity’StatefulPartitionedCallΆ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1005642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
°
€
__inference_loss_fn_1_105081D
5dense_bias_regularizer_square_readvariableop_resource:	
identity’,dense/bias/Regularizer/Square/ReadVariableOpΟ
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOp5dense_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp€
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constͺ
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mulh
IdentityIdentitydense/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity}
NoOpNoOp-^dense/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp
ύ	

E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_100826

inputs%
readvariableop_resource: 
identity’ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:??????????????????2
Relut
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpN
NegNegReadVariableOp:value:0*
T0*
_output_shapes
: 2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:??????????????????2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:??????????????????2
Relu_1b
mulMulNeg:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mulb
addAddV2Relu:activations:0mul:z:0*
T0*'
_output_shapes
:????????? 2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
ς

&__inference_dense_layer_call_fn_104736

inputs
unknown:

	unknown_0:	
identity’StatefulPartitionedCallς
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1012122
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
·

*__inference_p_re_lu_1_layer_call_fn_103981

inputs
unknown: 
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_p_re_lu_1_layer_call_and_return_conditional_losses_999882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+??????????????????????????? : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
Γ
₯
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_100684

inputs.
readvariableop_resource:
identity’ReadVariableOpi
ReluReluinputs*
T0*B
_output_shapes0
.:,???????????????????????????2
Relu}
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:*
dtype02
ReadVariableOpW
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:2
Negj
Neg_1Neginputs*
T0*B
_output_shapes0
.:,???????????????????????????2
Neg_1p
Relu_1Relu	Neg_1:y:0*
T0*B
_output_shapes0
.:,???????????????????????????2
Relu_1}
mulMulNeg:y:0Relu_1:activations:0*
T0*B
_output_shapes0
.:,???????????????????????????2
mul}
addAddV2Relu:activations:0mul:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
add}
IdentityIdentityadd:z:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,???????????????????????????: 2 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
ς
Ο
4__inference_batch_normalization_layer_call_fn_103678

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_1019302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????~~2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????~~: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
Χ
L
0__inference_max_pooling2d_4_layer_call_fn_104689

inputs
identityμ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1007172
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

½
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_104074

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource: @
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
separable_conv2d/ReadVariableOpΉ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: @*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateε
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
separable_conv2d/depthwiseα
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
separable_conv2d|
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
³

₯
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_104460

inputs.
readvariableop_resource:
identity’ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:?????????2
Relu}
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:*
dtype02
ReadVariableOpW
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:?????????2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:?????????2
Relu_1k
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:?????????2
mulk
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:?????????2
addk
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
η
_
C__inference_flatten_layer_call_and_return_conditional_losses_101188

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs

½
N__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_103850

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource: 
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOpΉ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateε
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==*
paddingVALID*
strides
2
separable_conv2d/depthwiseα
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????== *
paddingVALID*
strides
2
separable_conv2d|
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*/
_output_shapes
:?????????== 2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs


Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_100956

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Κ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????== : : : : :*
epsilon%o:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????== 2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????== : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs
α

O__inference_batch_normalization_layer_call_and_return_conditional_losses_103696

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ά
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
½

*__inference_p_re_lu_3_layer_call_fn_104429

inputs
unknown:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_1004522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,???????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
‘
―
__inference_loss_fn_4_105114K
9dense_2_kernel_regularizer_square_readvariableop_resource:@ 
identity’0dense_2/kernel/Regularizer/Square/ReadVariableOpή
0dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_2_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:@ *
dtype022
0dense_2/kernel/Regularizer/Square/ReadVariableOp³
!dense_2/kernel/Regularizer/SquareSquare8dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2#
!dense_2/kernel/Regularizer/Square
 dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_2/kernel/Regularizer/ConstΊ
dense_2/kernel/Regularizer/SumSum%dense_2/kernel/Regularizer/Square:y:0)dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/Sum
 dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_2/kernel/Regularizer/mul/xΌ
dense_2/kernel/Regularizer/mulMul)dense_2/kernel/Regularizer/mul/x:output:0'dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/mull
IdentityIdentity"dense_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp1^dense_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_2/kernel/Regularizer/Square/ReadVariableOp0dense_2/kernel/Regularizer/Square/ReadVariableOp
Λ
{
*__inference_p_re_lu_5_layer_call_fn_104772

inputs
unknown:	
identity’StatefulPartitionedCallι
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_1012292
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
«
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_100485

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
©
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_103803

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Γ
₯
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_104448

inputs.
readvariableop_resource:
identity’ReadVariableOpi
ReluReluinputs*
T0*B
_output_shapes0
.:,???????????????????????????2
Relu}
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:*
dtype02
ReadVariableOpW
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:2
Negj
Neg_1Neginputs*
T0*B
_output_shapes0
.:,???????????????????????????2
Neg_1p
Relu_1Relu	Neg_1:y:0*
T0*B
_output_shapes0
.:,???????????????????????????2
Relu_1}
mulMulNeg:y:0Relu_1:activations:0*
T0*B
_output_shapes0
.:,???????????????????????????2
mul}
addAddV2Relu:activations:0mul:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
add}
IdentityIdentityadd:z:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,???????????????????????????: 2 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
ͺ
 
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_101086

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ο
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
§
Δ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_100376

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ο
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,???????????????????????????:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Ό
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_100920

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????~~:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
Π	

E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_101329

inputs%
readvariableop_resource: 
identity’ReadVariableOpN
ReluReluinputs*
T0*'
_output_shapes
:????????? 2
Relut
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpN
NegNegReadVariableOp:value:0*
T0*
_output_shapes
: 2
NegO
Neg_1Neginputs*
T0*'
_output_shapes
:????????? 2
Neg_1U
Relu_1Relu	Neg_1:y:0*
T0*'
_output_shapes
:????????? 2
Relu_1b
mulMulNeg:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mulb
addAddV2Relu:activations:0mul:z:0*
T0*'
_output_shapes
:????????? 2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:????????? : 2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
τ
Ο
4__inference_batch_normalization_layer_call_fn_103665

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall‘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_1008912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????~~2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????~~: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
Ϋ
Α
&__inference_model_layer_call_fn_103065

inputs!
unknown:#
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:#
	unknown_6:#
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: $

unknown_13: $

unknown_14: @

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@ 

unknown_19:@$

unknown_20:@%

unknown_21:@

unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	!

unknown_26:%

unknown_27:&

unknown_28:

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	!

unknown_33:

unknown_34:


unknown_35:	

unknown_36:	

unknown_37:	@

unknown_38:@

unknown_39:@

unknown_40:@ 

unknown_41: 

unknown_42: 

unknown_43: 

unknown_44:
identity’StatefulPartitionedCallΖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*F
_read_only_resource_inputs(
&$	
 #$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1022122
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Ύ
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_104032

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????== :W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs
Θ	
Υ
6__inference_batch_normalization_3_layer_call_fn_104311

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity’StatefulPartitionedCallΆ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1003322
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
¨

€
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_104236

inputs-
readvariableop_resource:@
identity’ReadVariableOpV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:@*
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:@2
NegW
Neg_1Neginputs*
T0*/
_output_shapes
:?????????@2
Neg_1]
Relu_1Relu	Neg_1:y:0*
T0*/
_output_shapes
:?????????@2
Relu_1j
mulMulNeg:y:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????@2
mulj
addAddV2Relu:activations:0mul:z:0*
T0*/
_output_shapes
:?????????@2
addj
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: 2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
ω
Υ
A__inference_dense_layer_call_and_return_conditional_losses_101212

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’,dense/bias/Regularizer/Square/ReadVariableOp’.dense/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAddΑ
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp―
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense/kernel/Regularizer/mul/x΄
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mulΉ
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp€
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constͺ
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mull
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityί
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ί
΄
3__inference_separable_conv2d_1_layer_call_fn_103826

inputs!
unknown:#
	unknown_0: 
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_1009332
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????== 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
π
½
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_100050

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource: @
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
separable_conv2d/ReadVariableOpΉ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: @*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateχ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingVALID*
strides
2
separable_conv2d/depthwiseσ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
2
separable_conv2d
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs

τ
C__inference_dense_3_layer_call_and_return_conditional_losses_105059

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
ϋ
ΐ
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_100514

inputsC
(separable_conv2d_readvariableop_resource:F
*separable_conv2d_readvariableop_1_resource:
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1΄
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOp»
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateψ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingVALID*
strides
2
separable_conv2d/depthwiseτ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingVALID*
strides
2
separable_conv2d
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
«
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_100717

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
«
g
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_100253

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
¨

€
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_101042

inputs-
readvariableop_resource:@
identity’ReadVariableOpV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:@*
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:@2
NegW
Neg_1Neginputs*
T0*/
_output_shapes
:?????????@2
Neg_1]
Relu_1Relu	Neg_1:y:0*
T0*/
_output_shapes
:?????????@2
Relu_1j
mulMulNeg:y:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????@2
mulj
addAddV2Relu:activations:0mul:z:0*
T0*/
_output_shapes
:?????????@2
addj
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: 2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
ξ
L
0__inference_max_pooling2d_3_layer_call_fn_104470

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1011152
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
Ύ
F
*__inference_dropout_1_layer_call_fn_104909

inputs
identityΓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1012882
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
²
b
C__inference_dropout_layer_call_and_return_conditional_losses_104823

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΅
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *?2
dropout/GreaterEqual/yΏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
φ
Ρ
6__inference_batch_normalization_1_layer_call_fn_103902

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity’StatefulPartitionedCall‘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1018652
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????== 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????== : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs
«
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_101519

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΄
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>2
dropout/GreaterEqual/yΎ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
¨
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_99789

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
½
΅
3__inference_separable_conv2d_3_layer_call_fn_104274

inputs!
unknown:@$
	unknown_0:@
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_1010632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
¨

€
E__inference_p_re_lu_1_layer_call_and_return_conditional_losses_100977

inputs-
readvariableop_resource: 
identity’ReadVariableOpV
ReluReluinputs*
T0*/
_output_shapes
:?????????== 2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
: *
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
: 2
NegW
Neg_1Neginputs*
T0*/
_output_shapes
:?????????== 2
Neg_1]
Relu_1Relu	Neg_1:y:0*
T0*/
_output_shapes
:?????????== 2
Relu_1j
mulMulNeg:y:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????== 2
mulj
addAddV2Relu:activations:0mul:z:0*
T0*/
_output_shapes
:?????????== 2
addj
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????== 2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????== : 2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs
Ζ
z
*__inference_p_re_lu_7_layer_call_fn_104988

inputs
unknown: 
identity’StatefulPartitionedCallθ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_1013292
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:????????? : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
Ζ	
Υ
6__inference_batch_normalization_4_layer_call_fn_104548

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity’StatefulPartitionedCall΄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1006082
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Ύ
Ψ
C__inference_dense_2_layer_call_and_return_conditional_losses_104974

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOp’.dense_2/bias/Regularizer/Square/ReadVariableOp’0dense_2/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddΓ
0dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype022
0dense_2/kernel/Regularizer/Square/ReadVariableOp³
!dense_2/kernel/Regularizer/SquareSquare8dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2#
!dense_2/kernel/Regularizer/Square
 dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_2/kernel/Regularizer/ConstΊ
dense_2/kernel/Regularizer/SumSum%dense_2/kernel/Regularizer/Square:y:0)dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/Sum
 dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_2/kernel/Regularizer/mul/xΌ
dense_2/kernel/Regularizer/mulMul)dense_2/kernel/Regularizer/mul/x:output:0'dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/mulΌ
.dense_2/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.dense_2/bias/Regularizer/Square/ReadVariableOp©
dense_2/bias/Regularizer/SquareSquare6dense_2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: 2!
dense_2/bias/Regularizer/Square
dense_2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_2/bias/Regularizer/Const²
dense_2/bias/Regularizer/SumSum#dense_2/bias/Regularizer/Square:y:0'dense_2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/Sum
dense_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_2/bias/Regularizer/mul/x΄
dense_2/bias/Regularizer/mulMul'dense_2/bias/Regularizer/mul/x:output:0%dense_2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityγ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_2/bias/Regularizer/Square/ReadVariableOp1^dense_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_2/bias/Regularizer/Square/ReadVariableOp.dense_2/bias/Regularizer/Square/ReadVariableOp2d
0dense_2/kernel/Regularizer/Square/ReadVariableOp0dense_2/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
κ
L
0__inference_max_pooling2d_2_layer_call_fn_104246

inputs
identityΡ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1010502
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
¦

’
C__inference_p_re_lu_layer_call_and_return_conditional_losses_103788

inputs-
readvariableop_resource:
identity’ReadVariableOpV
ReluReluinputs*
T0*/
_output_shapes
:?????????~~2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:*
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:2
NegW
Neg_1Neginputs*
T0*/
_output_shapes
:?????????~~2
Neg_1]
Relu_1Relu	Neg_1:y:0*
T0*/
_output_shapes
:?????????~~2
Relu_1j
mulMulNeg:y:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????~~2
mulj
addAddV2Relu:activations:0mul:z:0*
T0*/
_output_shapes
:?????????~~2
addj
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????~~2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????~~: 2 
ReadVariableOpReadVariableOp:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
ξ
L
0__inference_max_pooling2d_4_layer_call_fn_104694

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1011802
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ͺ
 
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_101151

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ο
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ϋ
ΐ
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_104510

inputsC
(separable_conv2d_readvariableop_resource:F
*separable_conv2d_readvariableop_1_resource:
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1΄
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOp»
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*(
_output_shapes
:*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateψ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingVALID*
strides
2
separable_conv2d/depthwiseτ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingVALID*
strides
2
separable_conv2d
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,???????????????????????????: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs



E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_104784

inputs&
readvariableop_resource:	
identity’ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:??????????????????2
Reluu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOpO
NegNegReadVariableOp:value:0*
T0*
_output_shapes	
:2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:??????????????????2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:??????????????????2
Relu_1c
mulMulNeg:y:0Relu_1:activations:0*
T0*(
_output_shapes
:?????????2
mulc
addAddV2Relu:activations:0mul:z:0*
T0*(
_output_shapes
:?????????2
addc
IdentityIdentityadd:z:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
Ώ	
Ρ
6__inference_batch_normalization_1_layer_call_fn_103863

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity’StatefulPartitionedCall΄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_998682
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ͺ
 
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_104404

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ο
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
Π	

E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_105012

inputs%
readvariableop_resource: 
identity’ReadVariableOpN
ReluReluinputs*
T0*'
_output_shapes
:????????? 2
Relut
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpN
NegNegReadVariableOp:value:0*
T0*
_output_shapes
: 2
NegO
Neg_1Neginputs*
T0*'
_output_shapes
:????????? 2
Neg_1U
Relu_1Relu	Neg_1:y:0*
T0*'
_output_shapes
:????????? 2
Relu_1b
mulMulNeg:y:0Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
mulb
addAddV2Relu:activations:0mul:z:0*
T0*'
_output_shapes
:????????? 2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:????????? : 2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
υ

*__inference_p_re_lu_4_layer_call_fn_104660

inputs
unknown:
identity’StatefulPartitionedCallρ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_1011722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
«
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_104699

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
τ
Ύ
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_100282

inputsB
(separable_conv2d_readvariableop_resource:@E
*separable_conv2d_readvariableop_1_resource:@
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
separable_conv2d/ReadVariableOpΊ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*'
_output_shapes
:@*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateχ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingVALID*
strides
2
separable_conv2d/depthwiseτ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*B
_output_shapes0
.:,???????????????????????????*
paddingVALID*
strides
2
separable_conv2d
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
ξ
»
L__inference_separable_conv2d_layer_call_and_return_conditional_losses_103614

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource:
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOpΉ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateχ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
separable_conv2d/depthwiseσ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
separable_conv2d
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
J
.__inference_max_pooling2d_layer_call_fn_103793

inputs
identityι
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_997892
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ͺ
 
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_104628

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ο
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
Μ
Ύ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101930

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ψ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????~~2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????~~: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs
ν
Ί
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_99586

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource:
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOpΉ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateχ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
separable_conv2d/depthwiseσ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
separable_conv2d
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs

Ύ
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_104298

inputsB
(separable_conv2d_readvariableop_resource:@E
*separable_conv2d_readvariableop_1_resource:@
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
separable_conv2d/ReadVariableOpΊ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*'
_output_shapes
:@*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateε
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
separable_conv2d/depthwiseβ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2
separable_conv2d}
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*0
_output_shapes
:?????????2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Ϋ
{
*__inference_p_re_lu_5_layer_call_fn_104765

inputs
unknown:	
identity’StatefulPartitionedCallι
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_1007462
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
ς
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_104919

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
Α
·
3__inference_separable_conv2d_4_layer_call_fn_104498

inputs"
unknown:%
	unknown_0:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_1011282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
	
Υ
6__inference_batch_normalization_4_layer_call_fn_104561

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity’StatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1011512
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ύ	

E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_104892

inputs%
readvariableop_resource:@
identity’ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:??????????????????2
Relut
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpN
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:@2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:??????????????????2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:??????????????????2
Relu_1b
mulMulNeg:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????@2
mulb
addAddV2Relu:activations:0mul:z:0*
T0*'
_output_shapes
:?????????@2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
φ
­
__inference_loss_fn_0_105070K
7dense_kernel_regularizer_square_readvariableop_resource:

identity’.dense/kernel/Regularizer/Square/ReadVariableOpΪ
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7dense_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp―
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense/kernel/Regularizer/mul/x΄
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mulj
IdentityIdentity dense/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp
έ
§
__inference_loss_fn_5_105125E
7dense_2_bias_regularizer_square_readvariableop_resource: 
identity’.dense_2/bias/Regularizer/Square/ReadVariableOpΤ
.dense_2/bias/Regularizer/Square/ReadVariableOpReadVariableOp7dense_2_bias_regularizer_square_readvariableop_resource*
_output_shapes
: *
dtype020
.dense_2/bias/Regularizer/Square/ReadVariableOp©
dense_2/bias/Regularizer/SquareSquare6dense_2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: 2!
dense_2/bias/Regularizer/Square
dense_2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_2/bias/Regularizer/Const²
dense_2/bias/Regularizer/SumSum#dense_2/bias/Regularizer/Square:y:0'dense_2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/Sum
dense_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_2/bias/Regularizer/mul/x΄
dense_2/bias/Regularizer/mulMul'dense_2/bias/Regularizer/mul/x:output:0%dense_2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/mulj
IdentityIdentity dense_2/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp/^dense_2/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_2/bias/Regularizer/Square/ReadVariableOp.dense_2/bias/Regularizer/Square/ReadVariableOp
Ξ
ΐ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_103974

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ψ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????== : : : : :*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????== 2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????== : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs
«
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_100021

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
	
΄
3__inference_separable_conv2d_2_layer_call_fn_104041

inputs!
unknown: #
	unknown_0: @
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_1000502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs

½
N__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_100933

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource: 
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOpΉ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateε
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==*
paddingVALID*
strides
2
separable_conv2d/depthwiseα
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????== *
paddingVALID*
strides
2
separable_conv2d|
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*/
_output_shapes
:?????????== 2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:W S
/
_output_shapes
:???????????
 
_user_specified_nameinputs
Γ
₯
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_104672

inputs.
readvariableop_resource:
identity’ReadVariableOpi
ReluReluinputs*
T0*B
_output_shapes0
.:,???????????????????????????2
Relu}
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:*
dtype02
ReadVariableOpW
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:2
Negj
Neg_1Neginputs*
T0*B
_output_shapes0
.:,???????????????????????????2
Neg_1p
Relu_1Relu	Neg_1:y:0*
T0*B
_output_shapes0
.:,???????????????????????????2
Relu_1}
mulMulNeg:y:0Relu_1:activations:0*
T0*B
_output_shapes0
.:,???????????????????????????2
mul}
addAddV2Relu:activations:0mul:z:0*
T0*B
_output_shapes0
.:,???????????????????????????2
add}
IdentityIdentityadd:z:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,???????????????????????????: 2 
ReadVariableOpReadVariableOp:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
Ή	
Ο
4__inference_batch_normalization_layer_call_fn_103652

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_996802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
ή
Δ
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_101670

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype02
ReadVariableOp_1¨
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1έ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:?????????2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
«
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_104475

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ο

(__inference_dense_3_layer_call_fn_105048

inputs
unknown: 
	unknown_0:
identity’StatefulPartitionedCallσ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1013512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
θ
Β
&__inference_model_layer_call_fn_101489
input_1!
unknown:#
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:#
	unknown_6:#
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: $

unknown_13: $

unknown_14: @

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@ 

unknown_19:@$

unknown_20:@%

unknown_21:@

unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	!

unknown_26:%

unknown_27:&

unknown_28:

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	!

unknown_33:

unknown_34:


unknown_35:	

unknown_36:	

unknown_37:	@

unknown_38:@

unknown_39:@

unknown_40:@ 

unknown_41: 

unknown_42: 

unknown_43: 

unknown_44:
identity’StatefulPartitionedCallΡ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1013942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:?????????
!
_user_specified_name	input_1
¬ί
+
A__inference_model_layer_call_and_return_conditional_losses_103314

inputsS
9separable_conv2d_separable_conv2d_readvariableop_resource:U
;separable_conv2d_separable_conv2d_readvariableop_1_resource:9
+batch_normalization_readvariableop_resource:;
-batch_normalization_readvariableop_1_resource:J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:5
p_re_lu_readvariableop_resource:U
;separable_conv2d_1_separable_conv2d_readvariableop_resource:W
=separable_conv2d_1_separable_conv2d_readvariableop_1_resource: ;
-batch_normalization_1_readvariableop_resource: =
/batch_normalization_1_readvariableop_1_resource: L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource: 7
!p_re_lu_1_readvariableop_resource: U
;separable_conv2d_2_separable_conv2d_readvariableop_resource: W
=separable_conv2d_2_separable_conv2d_readvariableop_1_resource: @;
-batch_normalization_2_readvariableop_resource:@=
/batch_normalization_2_readvariableop_1_resource:@L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:@7
!p_re_lu_2_readvariableop_resource:@U
;separable_conv2d_3_separable_conv2d_readvariableop_resource:@X
=separable_conv2d_3_separable_conv2d_readvariableop_1_resource:@<
-batch_normalization_3_readvariableop_resource:	>
/batch_normalization_3_readvariableop_1_resource:	M
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	O
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	8
!p_re_lu_3_readvariableop_resource:V
;separable_conv2d_4_separable_conv2d_readvariableop_resource:Y
=separable_conv2d_4_separable_conv2d_readvariableop_1_resource:<
-batch_normalization_4_readvariableop_resource:	>
/batch_normalization_4_readvariableop_1_resource:	M
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	O
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	8
!p_re_lu_4_readvariableop_resource:8
$dense_matmul_readvariableop_resource:
4
%dense_biasadd_readvariableop_resource:	0
!p_re_lu_5_readvariableop_resource:	9
&dense_1_matmul_readvariableop_resource:	@5
'dense_1_biasadd_readvariableop_resource:@/
!p_re_lu_6_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@ 5
'dense_2_biasadd_readvariableop_resource: /
!p_re_lu_7_readvariableop_resource: 8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identity’3batch_normalization/FusedBatchNormV3/ReadVariableOp’5batch_normalization/FusedBatchNormV3/ReadVariableOp_1’"batch_normalization/ReadVariableOp’$batch_normalization/ReadVariableOp_1’5batch_normalization_1/FusedBatchNormV3/ReadVariableOp’7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1’$batch_normalization_1/ReadVariableOp’&batch_normalization_1/ReadVariableOp_1’5batch_normalization_2/FusedBatchNormV3/ReadVariableOp’7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1’$batch_normalization_2/ReadVariableOp’&batch_normalization_2/ReadVariableOp_1’5batch_normalization_3/FusedBatchNormV3/ReadVariableOp’7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1’$batch_normalization_3/ReadVariableOp’&batch_normalization_3/ReadVariableOp_1’5batch_normalization_4/FusedBatchNormV3/ReadVariableOp’7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1’$batch_normalization_4/ReadVariableOp’&batch_normalization_4/ReadVariableOp_1’dense/BiasAdd/ReadVariableOp’dense/MatMul/ReadVariableOp’,dense/bias/Regularizer/Square/ReadVariableOp’.dense/kernel/Regularizer/Square/ReadVariableOp’dense_1/BiasAdd/ReadVariableOp’dense_1/MatMul/ReadVariableOp’.dense_1/bias/Regularizer/Square/ReadVariableOp’0dense_1/kernel/Regularizer/Square/ReadVariableOp’dense_2/BiasAdd/ReadVariableOp’dense_2/MatMul/ReadVariableOp’.dense_2/bias/Regularizer/Square/ReadVariableOp’0dense_2/kernel/Regularizer/Square/ReadVariableOp’dense_3/BiasAdd/ReadVariableOp’dense_3/MatMul/ReadVariableOp’p_re_lu/ReadVariableOp’p_re_lu_1/ReadVariableOp’p_re_lu_2/ReadVariableOp’p_re_lu_3/ReadVariableOp’p_re_lu_4/ReadVariableOp’p_re_lu_5/ReadVariableOp’p_re_lu_6/ReadVariableOp’p_re_lu_7/ReadVariableOp’0separable_conv2d/separable_conv2d/ReadVariableOp’2separable_conv2d/separable_conv2d/ReadVariableOp_1’2separable_conv2d_1/separable_conv2d/ReadVariableOp’4separable_conv2d_1/separable_conv2d/ReadVariableOp_1’2separable_conv2d_2/separable_conv2d/ReadVariableOp’4separable_conv2d_2/separable_conv2d/ReadVariableOp_1’2separable_conv2d_3/separable_conv2d/ReadVariableOp’4separable_conv2d_3/separable_conv2d/ReadVariableOp_1’2separable_conv2d_4/separable_conv2d/ReadVariableOp’4separable_conv2d_4/separable_conv2d/ReadVariableOp_1ζ
0separable_conv2d/separable_conv2d/ReadVariableOpReadVariableOp9separable_conv2d_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype022
0separable_conv2d/separable_conv2d/ReadVariableOpμ
2separable_conv2d/separable_conv2d/ReadVariableOp_1ReadVariableOp;separable_conv2d_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype024
2separable_conv2d/separable_conv2d/ReadVariableOp_1«
'separable_conv2d/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'separable_conv2d/separable_conv2d/Shape³
/separable_conv2d/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      21
/separable_conv2d/separable_conv2d/dilation_rate
+separable_conv2d/separable_conv2d/depthwiseDepthwiseConv2dNativeinputs8separable_conv2d/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
2-
+separable_conv2d/separable_conv2d/depthwise₯
!separable_conv2d/separable_conv2dConv2D4separable_conv2d/separable_conv2d/depthwise:output:0:separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
2#
!separable_conv2d/separable_conv2d°
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02$
"batch_normalization/ReadVariableOpΆ
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype02&
$batch_normalization/ReadVariableOp_1γ
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOpι
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ζ
$batch_normalization/FusedBatchNormV3FusedBatchNormV3*separable_conv2d/separable_conv2d:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~:::::*
epsilon%o:*
is_training( 2&
$batch_normalization/FusedBatchNormV3
p_re_lu/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????~~2
p_re_lu/Relu
p_re_lu/ReadVariableOpReadVariableOpp_re_lu_readvariableop_resource*"
_output_shapes
:*
dtype02
p_re_lu/ReadVariableOpn
p_re_lu/NegNegp_re_lu/ReadVariableOp:value:0*
T0*"
_output_shapes
:2
p_re_lu/Neg
p_re_lu/Neg_1Neg(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????~~2
p_re_lu/Neg_1u
p_re_lu/Relu_1Relup_re_lu/Neg_1:y:0*
T0*/
_output_shapes
:?????????~~2
p_re_lu/Relu_1
p_re_lu/mulMulp_re_lu/Neg:y:0p_re_lu/Relu_1:activations:0*
T0*/
_output_shapes
:?????????~~2
p_re_lu/mul
p_re_lu/addAddV2p_re_lu/Relu:activations:0p_re_lu/mul:z:0*
T0*/
_output_shapes
:?????????~~2
p_re_lu/add·
max_pooling2d/MaxPoolMaxPoolp_re_lu/add:z:0*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolμ
2separable_conv2d_1/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_1_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype024
2separable_conv2d_1/separable_conv2d/ReadVariableOpς
4separable_conv2d_1/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_1_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype026
4separable_conv2d_1/separable_conv2d/ReadVariableOp_1―
)separable_conv2d_1/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2+
)separable_conv2d_1/separable_conv2d/Shape·
1separable_conv2d_1/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      23
1separable_conv2d_1/separable_conv2d/dilation_rateΆ
-separable_conv2d_1/separable_conv2d/depthwiseDepthwiseConv2dNativemax_pooling2d/MaxPool:output:0:separable_conv2d_1/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????==*
paddingVALID*
strides
2/
-separable_conv2d_1/separable_conv2d/depthwise­
#separable_conv2d_1/separable_conv2dConv2D6separable_conv2d_1/separable_conv2d/depthwise:output:0<separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????== *
paddingVALID*
strides
2%
#separable_conv2d_1/separable_conv2dΆ
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
: *
dtype02&
$batch_normalization_1/ReadVariableOpΌ
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&batch_normalization_1/ReadVariableOp_1ι
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpο
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1τ
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3,separable_conv2d_1/separable_conv2d:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????== : : : : :*
epsilon%o:*
is_training( 2(
&batch_normalization_1/FusedBatchNormV3
p_re_lu_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????== 2
p_re_lu_1/Relu
p_re_lu_1/ReadVariableOpReadVariableOp!p_re_lu_1_readvariableop_resource*"
_output_shapes
: *
dtype02
p_re_lu_1/ReadVariableOpt
p_re_lu_1/NegNeg p_re_lu_1/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2
p_re_lu_1/Neg
p_re_lu_1/Neg_1Neg*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????== 2
p_re_lu_1/Neg_1{
p_re_lu_1/Relu_1Relup_re_lu_1/Neg_1:y:0*
T0*/
_output_shapes
:?????????== 2
p_re_lu_1/Relu_1
p_re_lu_1/mulMulp_re_lu_1/Neg:y:0p_re_lu_1/Relu_1:activations:0*
T0*/
_output_shapes
:?????????== 2
p_re_lu_1/mul
p_re_lu_1/addAddV2p_re_lu_1/Relu:activations:0p_re_lu_1/mul:z:0*
T0*/
_output_shapes
:?????????== 2
p_re_lu_1/add½
max_pooling2d_1/MaxPoolMaxPoolp_re_lu_1/add:z:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolμ
2separable_conv2d_2/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_2_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2separable_conv2d_2/separable_conv2d/ReadVariableOpς
4separable_conv2d_2/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_2_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: @*
dtype026
4separable_conv2d_2/separable_conv2d/ReadVariableOp_1―
)separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2+
)separable_conv2d_2/separable_conv2d/Shape·
1separable_conv2d_2/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      23
1separable_conv2d_2/separable_conv2d/dilation_rateΈ
-separable_conv2d_2/separable_conv2d/depthwiseDepthwiseConv2dNative max_pooling2d_1/MaxPool:output:0:separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2/
-separable_conv2d_2/separable_conv2d/depthwise­
#separable_conv2d_2/separable_conv2dConv2D6separable_conv2d_2/separable_conv2d/depthwise:output:0<separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2%
#separable_conv2d_2/separable_conv2dΆ
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_2/ReadVariableOpΌ
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_2/ReadVariableOp_1ι
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpο
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1τ
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3,separable_conv2d_2/separable_conv2d:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o:*
is_training( 2(
&batch_normalization_2/FusedBatchNormV3
p_re_lu_2/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
p_re_lu_2/Relu
p_re_lu_2/ReadVariableOpReadVariableOp!p_re_lu_2_readvariableop_resource*"
_output_shapes
:@*
dtype02
p_re_lu_2/ReadVariableOpt
p_re_lu_2/NegNeg p_re_lu_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:@2
p_re_lu_2/Neg
p_re_lu_2/Neg_1Neg*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
p_re_lu_2/Neg_1{
p_re_lu_2/Relu_1Relup_re_lu_2/Neg_1:y:0*
T0*/
_output_shapes
:?????????@2
p_re_lu_2/Relu_1
p_re_lu_2/mulMulp_re_lu_2/Neg:y:0p_re_lu_2/Relu_1:activations:0*
T0*/
_output_shapes
:?????????@2
p_re_lu_2/mul
p_re_lu_2/addAddV2p_re_lu_2/Relu:activations:0p_re_lu_2/mul:z:0*
T0*/
_output_shapes
:?????????@2
p_re_lu_2/add½
max_pooling2d_2/MaxPoolMaxPoolp_re_lu_2/add:z:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolμ
2separable_conv2d_3/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_3_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype024
2separable_conv2d_3/separable_conv2d/ReadVariableOpσ
4separable_conv2d_3/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_3_separable_conv2d_readvariableop_1_resource*'
_output_shapes
:@*
dtype026
4separable_conv2d_3/separable_conv2d/ReadVariableOp_1―
)separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2+
)separable_conv2d_3/separable_conv2d/Shape·
1separable_conv2d_3/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      23
1separable_conv2d_3/separable_conv2d/dilation_rateΈ
-separable_conv2d_3/separable_conv2d/depthwiseDepthwiseConv2dNative max_pooling2d_2/MaxPool:output:0:separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2/
-separable_conv2d_3/separable_conv2d/depthwise?
#separable_conv2d_3/separable_conv2dConv2D6separable_conv2d_3/separable_conv2d/depthwise:output:0<separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2%
#separable_conv2d_3/separable_conv2d·
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:*
dtype02&
$batch_normalization_3/ReadVariableOp½
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:*
dtype02(
&batch_normalization_3/ReadVariableOp_1κ
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpπ
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ω
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3,separable_conv2d_3/separable_conv2d:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
is_training( 2(
&batch_normalization_3/FusedBatchNormV3
p_re_lu_3/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????2
p_re_lu_3/Relu
p_re_lu_3/ReadVariableOpReadVariableOp!p_re_lu_3_readvariableop_resource*#
_output_shapes
:*
dtype02
p_re_lu_3/ReadVariableOpu
p_re_lu_3/NegNeg p_re_lu_3/ReadVariableOp:value:0*
T0*#
_output_shapes
:2
p_re_lu_3/Neg
p_re_lu_3/Neg_1Neg*batch_normalization_3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????2
p_re_lu_3/Neg_1|
p_re_lu_3/Relu_1Relup_re_lu_3/Neg_1:y:0*
T0*0
_output_shapes
:?????????2
p_re_lu_3/Relu_1
p_re_lu_3/mulMulp_re_lu_3/Neg:y:0p_re_lu_3/Relu_1:activations:0*
T0*0
_output_shapes
:?????????2
p_re_lu_3/mul
p_re_lu_3/addAddV2p_re_lu_3/Relu:activations:0p_re_lu_3/mul:z:0*
T0*0
_output_shapes
:?????????2
p_re_lu_3/addΎ
max_pooling2d_3/MaxPoolMaxPoolp_re_lu_3/add:z:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolν
2separable_conv2d_4/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_4_separable_conv2d_readvariableop_resource*'
_output_shapes
:*
dtype024
2separable_conv2d_4/separable_conv2d/ReadVariableOpτ
4separable_conv2d_4/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_4_separable_conv2d_readvariableop_1_resource*(
_output_shapes
:*
dtype026
4separable_conv2d_4/separable_conv2d/ReadVariableOp_1―
)separable_conv2d_4/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2+
)separable_conv2d_4/separable_conv2d/Shape·
1separable_conv2d_4/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      23
1separable_conv2d_4/separable_conv2d/dilation_rateΉ
-separable_conv2d_4/separable_conv2d/depthwiseDepthwiseConv2dNative max_pooling2d_3/MaxPool:output:0:separable_conv2d_4/separable_conv2d/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2/
-separable_conv2d_4/separable_conv2d/depthwise?
#separable_conv2d_4/separable_conv2dConv2D6separable_conv2d_4/separable_conv2d/depthwise:output:0<separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0*
T0*0
_output_shapes
:?????????*
paddingVALID*
strides
2%
#separable_conv2d_4/separable_conv2d·
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes	
:*
dtype02&
$batch_normalization_4/ReadVariableOp½
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:*
dtype02(
&batch_normalization_4/ReadVariableOp_1κ
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype027
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpπ
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype029
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ω
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3,separable_conv2d_4/separable_conv2d:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????:::::*
epsilon%o:*
is_training( 2(
&batch_normalization_4/FusedBatchNormV3
p_re_lu_4/ReluRelu*batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????2
p_re_lu_4/Relu
p_re_lu_4/ReadVariableOpReadVariableOp!p_re_lu_4_readvariableop_resource*#
_output_shapes
:*
dtype02
p_re_lu_4/ReadVariableOpu
p_re_lu_4/NegNeg p_re_lu_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:2
p_re_lu_4/Neg
p_re_lu_4/Neg_1Neg*batch_normalization_4/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????2
p_re_lu_4/Neg_1|
p_re_lu_4/Relu_1Relup_re_lu_4/Neg_1:y:0*
T0*0
_output_shapes
:?????????2
p_re_lu_4/Relu_1
p_re_lu_4/mulMulp_re_lu_4/Neg:y:0p_re_lu_4/Relu_1:activations:0*
T0*0
_output_shapes
:?????????2
p_re_lu_4/mul
p_re_lu_4/addAddV2p_re_lu_4/Relu:activations:0p_re_lu_4/mul:z:0*
T0*0
_output_shapes
:?????????2
p_re_lu_4/addΎ
max_pooling2d_4/MaxPoolMaxPoolp_re_lu_4/add:z:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const
flatten/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:?????????2
flatten/Reshape‘
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense/BiasAdds
p_re_lu_5/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
p_re_lu_5/Relu
p_re_lu_5/ReadVariableOpReadVariableOp!p_re_lu_5_readvariableop_resource*
_output_shapes	
:*
dtype02
p_re_lu_5/ReadVariableOpm
p_re_lu_5/NegNeg p_re_lu_5/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
p_re_lu_5/Negt
p_re_lu_5/Neg_1Negdense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
p_re_lu_5/Neg_1t
p_re_lu_5/Relu_1Relup_re_lu_5/Neg_1:y:0*
T0*(
_output_shapes
:?????????2
p_re_lu_5/Relu_1
p_re_lu_5/mulMulp_re_lu_5/Neg:y:0p_re_lu_5/Relu_1:activations:0*
T0*(
_output_shapes
:?????????2
p_re_lu_5/mul
p_re_lu_5/addAddV2p_re_lu_5/Relu:activations:0p_re_lu_5/mul:z:0*
T0*(
_output_shapes
:?????????2
p_re_lu_5/addv
dropout/IdentityIdentityp_re_lu_5/add:z:0*
T0*(
_output_shapes
:?????????2
dropout/Identity¦
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul€
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp‘
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAddt
p_re_lu_6/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
p_re_lu_6/Relu
p_re_lu_6/ReadVariableOpReadVariableOp!p_re_lu_6_readvariableop_resource*
_output_shapes
:@*
dtype02
p_re_lu_6/ReadVariableOpl
p_re_lu_6/NegNeg p_re_lu_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
p_re_lu_6/Negu
p_re_lu_6/Neg_1Negdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
p_re_lu_6/Neg_1s
p_re_lu_6/Relu_1Relup_re_lu_6/Neg_1:y:0*
T0*'
_output_shapes
:?????????@2
p_re_lu_6/Relu_1
p_re_lu_6/mulMulp_re_lu_6/Neg:y:0p_re_lu_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@2
p_re_lu_6/mul
p_re_lu_6/addAddV2p_re_lu_6/Relu:activations:0p_re_lu_6/mul:z:0*
T0*'
_output_shapes
:?????????@2
p_re_lu_6/addy
dropout_1/IdentityIdentityp_re_lu_6/add:z:0*
T0*'
_output_shapes
:?????????@2
dropout_1/Identity₯
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_2/MatMul/ReadVariableOp 
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/MatMul€
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_2/BiasAdd/ReadVariableOp‘
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/BiasAddt
p_re_lu_7/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
p_re_lu_7/Relu
p_re_lu_7/ReadVariableOpReadVariableOp!p_re_lu_7_readvariableop_resource*
_output_shapes
: *
dtype02
p_re_lu_7/ReadVariableOpl
p_re_lu_7/NegNeg p_re_lu_7/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
p_re_lu_7/Negu
p_re_lu_7/Neg_1Negdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
p_re_lu_7/Neg_1s
p_re_lu_7/Relu_1Relup_re_lu_7/Neg_1:y:0*
T0*'
_output_shapes
:????????? 2
p_re_lu_7/Relu_1
p_re_lu_7/mulMulp_re_lu_7/Neg:y:0p_re_lu_7/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
p_re_lu_7/mul
p_re_lu_7/addAddV2p_re_lu_7/Relu:activations:0p_re_lu_7/mul:z:0*
T0*'
_output_shapes
:????????? 2
p_re_lu_7/addy
dropout_2/IdentityIdentityp_re_lu_7/add:z:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Identity₯
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_3/MatMul/ReadVariableOp 
dense_3/MatMulMatMuldropout_2/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul€
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp‘
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_3/SoftmaxΗ
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype020
.dense/kernel/Regularizer/Square/ReadVariableOp―
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2!
dense/kernel/Regularizer/Square
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
dense/kernel/Regularizer/Const²
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/Sum
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense/kernel/Regularizer/mul/x΄
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/kernel/Regularizer/mulΏ
,dense/bias/Regularizer/Square/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,dense/bias/Regularizer/Square/ReadVariableOp€
dense/bias/Regularizer/SquareSquare4dense/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
dense/bias/Regularizer/Square
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/bias/Regularizer/Constͺ
dense/bias/Regularizer/SumSum!dense/bias/Regularizer/Square:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/Sum
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2
dense/bias/Regularizer/mul/x¬
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense/bias/Regularizer/mulΜ
0dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype022
0dense_1/kernel/Regularizer/Square/ReadVariableOp΄
!dense_1/kernel/Regularizer/SquareSquare8dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@2#
!dense_1/kernel/Regularizer/Square
 dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_1/kernel/Regularizer/ConstΊ
dense_1/kernel/Regularizer/SumSum%dense_1/kernel/Regularizer/Square:y:0)dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/Sum
 dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_1/kernel/Regularizer/mul/xΌ
dense_1/kernel/Regularizer/mulMul)dense_1/kernel/Regularizer/mul/x:output:0'dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_1/kernel/Regularizer/mulΔ
.dense_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.dense_1/bias/Regularizer/Square/ReadVariableOp©
dense_1/bias/Regularizer/SquareSquare6dense_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@2!
dense_1/bias/Regularizer/Square
dense_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_1/bias/Regularizer/Const²
dense_1/bias/Regularizer/SumSum#dense_1/bias/Regularizer/Square:y:0'dense_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/Sum
dense_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_1/bias/Regularizer/mul/x΄
dense_1/bias/Regularizer/mulMul'dense_1/bias/Regularizer/mul/x:output:0%dense_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_1/bias/Regularizer/mulΛ
0dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype022
0dense_2/kernel/Regularizer/Square/ReadVariableOp³
!dense_2/kernel/Regularizer/SquareSquare8dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2#
!dense_2/kernel/Regularizer/Square
 dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_2/kernel/Regularizer/ConstΊ
dense_2/kernel/Regularizer/SumSum%dense_2/kernel/Regularizer/Square:y:0)dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/Sum
 dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dense_2/kernel/Regularizer/mul/xΌ
dense_2/kernel/Regularizer/mulMul)dense_2/kernel/Regularizer/mul/x:output:0'dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_2/kernel/Regularizer/mulΔ
.dense_2/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.dense_2/bias/Regularizer/Square/ReadVariableOp©
dense_2/bias/Regularizer/SquareSquare6dense_2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: 2!
dense_2/bias/Regularizer/Square
dense_2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_2/bias/Regularizer/Const²
dense_2/bias/Regularizer/SumSum#dense_2/bias/Regularizer/Square:y:0'dense_2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/Sum
dense_2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2 
dense_2/bias/Regularizer/mul/x΄
dense_2/bias/Regularizer/mulMul'dense_2/bias/Regularizer/mul/x:output:0%dense_2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_2/bias/Regularizer/mult
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity¦
NoOpNoOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp-^dense/bias/Regularizer/Square/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp/^dense_1/bias/Regularizer/Square/ReadVariableOp1^dense_1/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp/^dense_2/bias/Regularizer/Square/ReadVariableOp1^dense_2/kernel/Regularizer/Square/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^p_re_lu/ReadVariableOp^p_re_lu_1/ReadVariableOp^p_re_lu_2/ReadVariableOp^p_re_lu_3/ReadVariableOp^p_re_lu_4/ReadVariableOp^p_re_lu_5/ReadVariableOp^p_re_lu_6/ReadVariableOp^p_re_lu_7/ReadVariableOp1^separable_conv2d/separable_conv2d/ReadVariableOp3^separable_conv2d/separable_conv2d/ReadVariableOp_13^separable_conv2d_1/separable_conv2d/ReadVariableOp5^separable_conv2d_1/separable_conv2d/ReadVariableOp_13^separable_conv2d_2/separable_conv2d/ReadVariableOp5^separable_conv2d_2/separable_conv2d/ReadVariableOp_13^separable_conv2d_3/separable_conv2d/ReadVariableOp5^separable_conv2d_3/separable_conv2d/ReadVariableOp_13^separable_conv2d_4/separable_conv2d/ReadVariableOp5^separable_conv2d_4/separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes{
y:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2\
,dense/bias/Regularizer/Square/ReadVariableOp,dense/bias/Regularizer/Square/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2`
.dense_1/bias/Regularizer/Square/ReadVariableOp.dense_1/bias/Regularizer/Square/ReadVariableOp2d
0dense_1/kernel/Regularizer/Square/ReadVariableOp0dense_1/kernel/Regularizer/Square/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2`
.dense_2/bias/Regularizer/Square/ReadVariableOp.dense_2/bias/Regularizer/Square/ReadVariableOp2d
0dense_2/kernel/Regularizer/Square/ReadVariableOp0dense_2/kernel/Regularizer/Square/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp20
p_re_lu/ReadVariableOpp_re_lu/ReadVariableOp24
p_re_lu_1/ReadVariableOpp_re_lu_1/ReadVariableOp24
p_re_lu_2/ReadVariableOpp_re_lu_2/ReadVariableOp24
p_re_lu_3/ReadVariableOpp_re_lu_3/ReadVariableOp24
p_re_lu_4/ReadVariableOpp_re_lu_4/ReadVariableOp24
p_re_lu_5/ReadVariableOpp_re_lu_5/ReadVariableOp24
p_re_lu_6/ReadVariableOpp_re_lu_6/ReadVariableOp24
p_re_lu_7/ReadVariableOpp_re_lu_7/ReadVariableOp2d
0separable_conv2d/separable_conv2d/ReadVariableOp0separable_conv2d/separable_conv2d/ReadVariableOp2h
2separable_conv2d/separable_conv2d/ReadVariableOp_12separable_conv2d/separable_conv2d/ReadVariableOp_12h
2separable_conv2d_1/separable_conv2d/ReadVariableOp2separable_conv2d_1/separable_conv2d/ReadVariableOp2l
4separable_conv2d_1/separable_conv2d/ReadVariableOp_14separable_conv2d_1/separable_conv2d/ReadVariableOp_12h
2separable_conv2d_2/separable_conv2d/ReadVariableOp2separable_conv2d_2/separable_conv2d/ReadVariableOp2l
4separable_conv2d_2/separable_conv2d/ReadVariableOp_14separable_conv2d_2/separable_conv2d/ReadVariableOp_12h
2separable_conv2d_3/separable_conv2d/ReadVariableOp2separable_conv2d_3/separable_conv2d/ReadVariableOp2l
4separable_conv2d_3/separable_conv2d/ReadVariableOp_14separable_conv2d_3/separable_conv2d/ReadVariableOp_12h
2separable_conv2d_4/separable_conv2d/ReadVariableOp2separable_conv2d_4/separable_conv2d/ReadVariableOp2l
4separable_conv2d_4/separable_conv2d/ReadVariableOp_14separable_conv2d_4/separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Ό
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_103808

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????~~:W S
/
_output_shapes
:?????????~~
 
_user_specified_nameinputs

ΐ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_100144

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1κ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
Ύ
g
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_100985

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????== :W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs

Ύ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_103714

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1κ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
Ϋ	

E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_101229

inputs&
readvariableop_resource:	
identity’ReadVariableOpO
ReluReluinputs*
T0*(
_output_shapes
:?????????2
Reluu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOpO
NegNegReadVariableOp:value:0*
T0*
_output_shapes	
:2
NegP
Neg_1Neginputs*
T0*(
_output_shapes
:?????????2
Neg_1V
Relu_1Relu	Neg_1:y:0*
T0*(
_output_shapes
:?????????2
Relu_1c
mulMulNeg:y:0Relu_1:activations:0*
T0*(
_output_shapes
:?????????2
mulc
addAddV2Relu:activations:0mul:z:0*
T0*(
_output_shapes
:?????????2
addc
IdentityIdentityadd:z:0^NoOp*
T0*(
_output_shapes
:?????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:?????????: 2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
γ

Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_103920

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ά
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ώ
Υ
6__inference_batch_normalization_3_layer_call_fn_104350

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity’StatefulPartitionedCall’
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1017352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
«
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_101559

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUΥ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape΄
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ>2
dropout/GreaterEqual/yΎ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
ΐ	
Ρ
6__inference_batch_normalization_2_layer_call_fn_104087

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity’StatefulPartitionedCall΅
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
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1001002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
ς
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_101338

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
υ

*__inference_p_re_lu_3_layer_call_fn_104436

inputs
unknown:
identity’StatefulPartitionedCallρ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_1011072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
³

₯
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_104684

inputs.
readvariableop_resource:
identity’ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:?????????2
Relu}
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:*
dtype02
ReadVariableOpW
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:?????????2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:?????????2
Relu_1k
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:?????????2
mulk
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:?????????2
addk
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:?????????2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
Ζ	
Υ
6__inference_batch_normalization_3_layer_call_fn_104324

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity’StatefulPartitionedCall΄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1003762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,???????????????????????????
 
_user_specified_nameinputs
γ

Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_100100

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ά
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
Ξ
ΐ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_104198

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity’AssignNewValue’AssignNewValue_1’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ψ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
Χ#<2
FusedBatchNormV3Β
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueΞ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityά
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
τ
a
C__inference_dropout_layer_call_and_return_conditional_losses_101238

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Έ
€
E__inference_p_re_lu_1_layer_call_and_return_conditional_losses_104000

inputs-
readvariableop_resource: 
identity’ReadVariableOph
ReluReluinputs*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
: *
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
: 2
Negi
Neg_1Neginputs*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Neg_1o
Relu_1Relu	Neg_1:y:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Relu_1|
mulMulNeg:y:0Relu_1:activations:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
mul|
addAddV2Relu:activations:0mul:z:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
add|
IdentityIdentityadd:z:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+??????????????????????????? : 2 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ψ
Ρ
6__inference_batch_normalization_1_layer_call_fn_103889

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity’StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????== *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1009562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????== 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????== : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????== 
 
_user_specified_nameinputs

»
L__inference_separable_conv2d_layer_call_and_return_conditional_losses_103626

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource:
identity’separable_conv2d/ReadVariableOp’!separable_conv2d/ReadVariableOp_1³
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
separable_conv2d/ReadVariableOpΉ
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype02#
!separable_conv2d/ReadVariableOp_1
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
separable_conv2d/Shape
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateε
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
2
separable_conv2d/depthwiseα
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:?????????~~*
paddingVALID*
strides
2
separable_conv2d|
IdentityIdentityseparable_conv2d:output:0^NoOp*
T0*/
_output_shapes
:?????????~~2

Identity
NoOpNoOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
γ

Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_104144

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity’FusedBatchNormV3/ReadVariableOp’!FusedBatchNormV3/ReadVariableOp_1’ReadVariableOp’ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ά
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o:*
is_training( 2
FusedBatchNormV3
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

IdentityΈ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
Χ
L
0__inference_max_pooling2d_3_layer_call_fn_104465

inputs
identityμ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1004852
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
 
c
*__inference_dropout_2_layer_call_fn_105022

inputs
identity’StatefulPartitionedCallΫ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1015192
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*΄
serving_default 
E
input_1:
serving_default_input_1:0?????????;
dense_30
StatefulPartitionedCall:0?????????tensorflow/serving/predict:Υ
δ	
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer_with_weights-8
layer-11
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer_with_weights-12
layer-17
layer_with_weights-13
layer-18
layer_with_weights-14
layer-19
layer-20
layer-21
layer_with_weights-15
layer-22
layer_with_weights-16
layer-23
layer-24
layer_with_weights-17
layer-25
layer_with_weights-18
layer-26
layer-27
layer_with_weights-19
layer-28
layer_with_weights-20
layer-29
layer-30
 layer_with_weights-21
 layer-31
!	optimizer
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&
signatures
Τ__call__
+Υ&call_and_return_all_conditional_losses
Φ_default_save_signature"
_tf_keras_network
6
'_init_input_shape"
_tf_keras_input_layer
Σ
(depthwise_kernel
)pointwise_kernel
*	variables
+regularization_losses
,trainable_variables
-	keras_api
Χ__call__
+Ψ&call_and_return_all_conditional_losses"
_tf_keras_layer
μ
.axis
	/gamma
0beta
1moving_mean
2moving_variance
3	variables
4regularization_losses
5trainable_variables
6	keras_api
Ω__call__
+Ϊ&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
7shared_axes
	8alpha
9	variables
:regularization_losses
;trainable_variables
<	keras_api
Ϋ__call__
+ά&call_and_return_all_conditional_losses"
_tf_keras_layer
§
=	variables
>regularization_losses
?trainable_variables
@	keras_api
έ__call__
+ή&call_and_return_all_conditional_losses"
_tf_keras_layer
Σ
Adepthwise_kernel
Bpointwise_kernel
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
ί__call__
+ΰ&call_and_return_all_conditional_losses"
_tf_keras_layer
μ
Gaxis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
α__call__
+β&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
Pshared_axes
	Qalpha
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
γ__call__
+δ&call_and_return_all_conditional_losses"
_tf_keras_layer
§
V	variables
Wregularization_losses
Xtrainable_variables
Y	keras_api
ε__call__
+ζ&call_and_return_all_conditional_losses"
_tf_keras_layer
Σ
Zdepthwise_kernel
[pointwise_kernel
\	variables
]regularization_losses
^trainable_variables
_	keras_api
η__call__
+θ&call_and_return_all_conditional_losses"
_tf_keras_layer
μ
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
ι__call__
+κ&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
ishared_axes
	jalpha
k	variables
lregularization_losses
mtrainable_variables
n	keras_api
λ__call__
+μ&call_and_return_all_conditional_losses"
_tf_keras_layer
§
o	variables
pregularization_losses
qtrainable_variables
r	keras_api
ν__call__
+ξ&call_and_return_all_conditional_losses"
_tf_keras_layer
Σ
sdepthwise_kernel
tpointwise_kernel
u	variables
vregularization_losses
wtrainable_variables
x	keras_api
ο__call__
+π&call_and_return_all_conditional_losses"
_tf_keras_layer
ξ
yaxis
	zgamma
{beta
|moving_mean
}moving_variance
~	variables
regularization_losses
trainable_variables
	keras_api
ρ__call__
+ς&call_and_return_all_conditional_losses"
_tf_keras_layer
Ι
shared_axes

alpha
	variables
regularization_losses
trainable_variables
	keras_api
σ__call__
+τ&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
regularization_losses
trainable_variables
	keras_api
υ__call__
+φ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ω
depthwise_kernel
pointwise_kernel
	variables
regularization_losses
trainable_variables
	keras_api
χ__call__
+ψ&call_and_return_all_conditional_losses"
_tf_keras_layer
υ
	axis

gamma
	beta
moving_mean
moving_variance
	variables
regularization_losses
trainable_variables
	keras_api
ω__call__
+ϊ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ι
shared_axes

alpha
	variables
regularization_losses
trainable_variables
 	keras_api
ϋ__call__
+ό&call_and_return_all_conditional_losses"
_tf_keras_layer
«
‘	variables
’regularization_losses
£trainable_variables
€	keras_api
ύ__call__
+ώ&call_and_return_all_conditional_losses"
_tf_keras_layer
«
₯	variables
¦regularization_losses
§trainable_variables
¨	keras_api
?__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
©kernel
	ͺbias
«	variables
¬regularization_losses
­trainable_variables
?	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
·

―alpha
°	variables
±regularization_losses
²trainable_variables
³	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
΄	variables
΅regularization_losses
Άtrainable_variables
·	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
Έkernel
	Ήbias
Ί	variables
»regularization_losses
Όtrainable_variables
½	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
·

Ύalpha
Ώ	variables
ΐregularization_losses
Αtrainable_variables
Β	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
Γ	variables
Δregularization_losses
Εtrainable_variables
Ζ	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
Ηkernel
	Θbias
Ι	variables
Κregularization_losses
Λtrainable_variables
Μ	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
·

Νalpha
Ξ	variables
Οregularization_losses
Πtrainable_variables
Ρ	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
?	variables
Σregularization_losses
Τtrainable_variables
Υ	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
Φkernel
	Χbias
Ψ	variables
Ωregularization_losses
Ϊtrainable_variables
Ϋ	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Κ
	άiter
έbeta_1
ήbeta_2

ίdecay
ΰlearning_rate(m)m/m0m8mAmBmHmImQmZm[mambmjmsmtmzm{m	m	m 	m‘	m’	m£	m€	©m₯	ͺm¦	―m§	Έm¨	Ήm©	Ύmͺ	Ηm«	Θm¬	Νm­	Φm?	Χm―(v°)v±/v²0v³8v΄Av΅BvΆHv·IvΈQvΉZvΊ[v»avΌbv½jvΎsvΏtvΐzvΑ{vΒ	vΓ	vΔ	vΕ	vΖ	vΗ	vΘ	©vΙ	ͺvΚ	―vΛ	ΈvΜ	ΉvΝ	ΎvΞ	ΗvΟ	ΘvΠ	ΝvΡ	Φv?	ΧvΣ"
	optimizer

(0
)1
/2
03
14
25
86
A7
B8
H9
I10
J11
K12
Q13
Z14
[15
a16
b17
c18
d19
j20
s21
t22
z23
{24
|25
}26
27
28
29
30
31
32
33
34
©35
ͺ36
―37
Έ38
Ή39
Ύ40
Η41
Θ42
Ν43
Φ44
Χ45"
trackable_list_wrapper
Η
(0
)1
/2
03
84
A5
B6
H7
I8
Q9
Z10
[11
a12
b13
j14
s15
t16
z17
{18
19
20
21
22
23
24
©25
ͺ26
―27
Έ28
Ή29
Ύ30
Η31
Θ32
Ν33
Φ34
Χ35"
trackable_list_wrapper
P
0
1
2
3
4
5"
trackable_list_wrapper
Σ
"	variables
αnon_trainable_variables
βmetrics
γlayers
 δlayer_regularization_losses
#trainable_variables
εlayer_metrics
$regularization_losses
Τ__call__
Φ_default_save_signature
+Υ&call_and_return_all_conditional_losses
'Υ"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
 "
trackable_list_wrapper
;:92!separable_conv2d/depthwise_kernel
;:92!separable_conv2d/pointwise_kernel
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
΅
*	variables
ζmetrics
ηlayers
 θlayer_regularization_losses
+regularization_losses
,trainable_variables
ιlayer_metrics
κnon_trainable_variables
Χ__call__
+Ψ&call_and_return_all_conditional_losses
'Ψ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
':%2batch_normalization/gamma
&:$2batch_normalization/beta
/:- (2batch_normalization/moving_mean
3:1 (2#batch_normalization/moving_variance
<
/0
01
12
23"
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
΅
3	variables
λmetrics
μlayers
 νlayer_regularization_losses
4regularization_losses
5trainable_variables
ξlayer_metrics
οnon_trainable_variables
Ω__call__
+Ϊ&call_and_return_all_conditional_losses
'Ϊ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
#:!2p_re_lu/alpha
'
80"
trackable_list_wrapper
 "
trackable_list_wrapper
'
80"
trackable_list_wrapper
΅
9	variables
πmetrics
ρlayers
 ςlayer_regularization_losses
:regularization_losses
;trainable_variables
σlayer_metrics
τnon_trainable_variables
Ϋ__call__
+ά&call_and_return_all_conditional_losses
'ά"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
΅
=	variables
υmetrics
φlayers
 χlayer_regularization_losses
>regularization_losses
?trainable_variables
ψlayer_metrics
ωnon_trainable_variables
έ__call__
+ή&call_and_return_all_conditional_losses
'ή"call_and_return_conditional_losses"
_generic_user_object
=:;2#separable_conv2d_1/depthwise_kernel
=:; 2#separable_conv2d_1/pointwise_kernel
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
΅
C	variables
ϊmetrics
ϋlayers
 όlayer_regularization_losses
Dregularization_losses
Etrainable_variables
ύlayer_metrics
ώnon_trainable_variables
ί__call__
+ΰ&call_and_return_all_conditional_losses
'ΰ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):' 2batch_normalization_1/gamma
(:& 2batch_normalization_1/beta
1:/  (2!batch_normalization_1/moving_mean
5:3  (2%batch_normalization_1/moving_variance
<
H0
I1
J2
K3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
΅
L	variables
?metrics
layers
 layer_regularization_losses
Mregularization_losses
Ntrainable_variables
layer_metrics
non_trainable_variables
α__call__
+β&call_and_return_all_conditional_losses
'β"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
%:# 2p_re_lu_1/alpha
'
Q0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
Q0"
trackable_list_wrapper
΅
R	variables
metrics
layers
 layer_regularization_losses
Sregularization_losses
Ttrainable_variables
layer_metrics
non_trainable_variables
γ__call__
+δ&call_and_return_all_conditional_losses
'δ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
΅
V	variables
metrics
layers
 layer_regularization_losses
Wregularization_losses
Xtrainable_variables
layer_metrics
non_trainable_variables
ε__call__
+ζ&call_and_return_all_conditional_losses
'ζ"call_and_return_conditional_losses"
_generic_user_object
=:; 2#separable_conv2d_2/depthwise_kernel
=:; @2#separable_conv2d_2/pointwise_kernel
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
΅
\	variables
metrics
layers
 layer_regularization_losses
]regularization_losses
^trainable_variables
layer_metrics
non_trainable_variables
η__call__
+θ&call_and_return_all_conditional_losses
'θ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'@2batch_normalization_2/gamma
(:&@2batch_normalization_2/beta
1:/@ (2!batch_normalization_2/moving_mean
5:3@ (2%batch_normalization_2/moving_variance
<
a0
b1
c2
d3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
΅
e	variables
metrics
layers
 layer_regularization_losses
fregularization_losses
gtrainable_variables
layer_metrics
non_trainable_variables
ι__call__
+κ&call_and_return_all_conditional_losses
'κ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
%:#@2p_re_lu_2/alpha
'
j0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
j0"
trackable_list_wrapper
΅
k	variables
metrics
layers
 layer_regularization_losses
lregularization_losses
mtrainable_variables
layer_metrics
non_trainable_variables
λ__call__
+μ&call_and_return_all_conditional_losses
'μ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
΅
o	variables
metrics
layers
 layer_regularization_losses
pregularization_losses
qtrainable_variables
 layer_metrics
‘non_trainable_variables
ν__call__
+ξ&call_and_return_all_conditional_losses
'ξ"call_and_return_conditional_losses"
_generic_user_object
=:;@2#separable_conv2d_3/depthwise_kernel
>:<@2#separable_conv2d_3/pointwise_kernel
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
΅
u	variables
’metrics
£layers
 €layer_regularization_losses
vregularization_losses
wtrainable_variables
₯layer_metrics
¦non_trainable_variables
ο__call__
+π&call_and_return_all_conditional_losses
'π"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_3/gamma
):'2batch_normalization_3/beta
2:0 (2!batch_normalization_3/moving_mean
6:4 (2%batch_normalization_3/moving_variance
<
z0
{1
|2
}3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
Ά
~	variables
§metrics
¨layers
 ©layer_regularization_losses
regularization_losses
trainable_variables
ͺlayer_metrics
«non_trainable_variables
ρ__call__
+ς&call_and_return_all_conditional_losses
'ς"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
&:$2p_re_lu_3/alpha
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
Έ
	variables
¬metrics
­layers
 ?layer_regularization_losses
regularization_losses
trainable_variables
―layer_metrics
°non_trainable_variables
σ__call__
+τ&call_and_return_all_conditional_losses
'τ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
	variables
±metrics
²layers
 ³layer_regularization_losses
regularization_losses
trainable_variables
΄layer_metrics
΅non_trainable_variables
υ__call__
+φ&call_and_return_all_conditional_losses
'φ"call_and_return_conditional_losses"
_generic_user_object
>:<2#separable_conv2d_4/depthwise_kernel
?:=2#separable_conv2d_4/pointwise_kernel
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
Έ
	variables
Άmetrics
·layers
 Έlayer_regularization_losses
regularization_losses
trainable_variables
Ήlayer_metrics
Ίnon_trainable_variables
χ__call__
+ψ&call_and_return_all_conditional_losses
'ψ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_4/gamma
):'2batch_normalization_4/beta
2:0 (2!batch_normalization_4/moving_mean
6:4 (2%batch_normalization_4/moving_variance
@
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
Έ
	variables
»metrics
Όlayers
 ½layer_regularization_losses
regularization_losses
trainable_variables
Ύlayer_metrics
Ώnon_trainable_variables
ω__call__
+ϊ&call_and_return_all_conditional_losses
'ϊ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
&:$2p_re_lu_4/alpha
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
Έ
	variables
ΐmetrics
Αlayers
 Βlayer_regularization_losses
regularization_losses
trainable_variables
Γlayer_metrics
Δnon_trainable_variables
ϋ__call__
+ό&call_and_return_all_conditional_losses
'ό"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
‘	variables
Εmetrics
Ζlayers
 Ηlayer_regularization_losses
’regularization_losses
£trainable_variables
Θlayer_metrics
Ιnon_trainable_variables
ύ__call__
+ώ&call_and_return_all_conditional_losses
'ώ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
₯	variables
Κmetrics
Λlayers
 Μlayer_regularization_losses
¦regularization_losses
§trainable_variables
Νlayer_metrics
Ξnon_trainable_variables
?__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 :
2dense/kernel
:2
dense/bias
0
©0
ͺ1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
©0
ͺ1"
trackable_list_wrapper
Έ
«	variables
Οmetrics
Πlayers
 Ρlayer_regularization_losses
¬regularization_losses
­trainable_variables
?layer_metrics
Σnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:2p_re_lu_5/alpha
(
―0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
―0"
trackable_list_wrapper
Έ
°	variables
Τmetrics
Υlayers
 Φlayer_regularization_losses
±regularization_losses
²trainable_variables
Χlayer_metrics
Ψnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
΄	variables
Ωmetrics
Ϊlayers
 Ϋlayer_regularization_losses
΅regularization_losses
Άtrainable_variables
άlayer_metrics
έnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
!:	@2dense_1/kernel
:@2dense_1/bias
0
Έ0
Ή1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
Έ0
Ή1"
trackable_list_wrapper
Έ
Ί	variables
ήmetrics
ίlayers
 ΰlayer_regularization_losses
»regularization_losses
Όtrainable_variables
αlayer_metrics
βnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:@2p_re_lu_6/alpha
(
Ύ0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
Ύ0"
trackable_list_wrapper
Έ
Ώ	variables
γmetrics
δlayers
 εlayer_regularization_losses
ΐregularization_losses
Αtrainable_variables
ζlayer_metrics
ηnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Γ	variables
θmetrics
ιlayers
 κlayer_regularization_losses
Δregularization_losses
Εtrainable_variables
λlayer_metrics
μnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 :@ 2dense_2/kernel
: 2dense_2/bias
0
Η0
Θ1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
0
Η0
Θ1"
trackable_list_wrapper
Έ
Ι	variables
νmetrics
ξlayers
 οlayer_regularization_losses
Κregularization_losses
Λtrainable_variables
πlayer_metrics
ρnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
: 2p_re_lu_7/alpha
(
Ν0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
Ν0"
trackable_list_wrapper
Έ
Ξ	variables
ςmetrics
σlayers
 τlayer_regularization_losses
Οregularization_losses
Πtrainable_variables
υlayer_metrics
φnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
?	variables
χmetrics
ψlayers
 ωlayer_regularization_losses
Σregularization_losses
Τtrainable_variables
ϊlayer_metrics
ϋnon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_3/kernel
:2dense_3/bias
0
Φ0
Χ1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Φ0
Χ1"
trackable_list_wrapper
Έ
Ψ	variables
όmetrics
ύlayers
 ώlayer_regularization_losses
Ωregularization_losses
Ϊtrainable_variables
?layer_metrics
non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
h
10
21
J2
K3
c4
d5
|6
}7
8
9"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31"
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
.
10
21"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
J0
K1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
c0
d1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
|0
}1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
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
0
0
1"
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
0
0
1"
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
@:>2(Adam/separable_conv2d/depthwise_kernel/m
@:>2(Adam/separable_conv2d/pointwise_kernel/m
,:*2 Adam/batch_normalization/gamma/m
+:)2Adam/batch_normalization/beta/m
(:&2Adam/p_re_lu/alpha/m
B:@2*Adam/separable_conv2d_1/depthwise_kernel/m
B:@ 2*Adam/separable_conv2d_1/pointwise_kernel/m
.:, 2"Adam/batch_normalization_1/gamma/m
-:+ 2!Adam/batch_normalization_1/beta/m
*:( 2Adam/p_re_lu_1/alpha/m
B:@ 2*Adam/separable_conv2d_2/depthwise_kernel/m
B:@ @2*Adam/separable_conv2d_2/pointwise_kernel/m
.:,@2"Adam/batch_normalization_2/gamma/m
-:+@2!Adam/batch_normalization_2/beta/m
*:(@2Adam/p_re_lu_2/alpha/m
B:@@2*Adam/separable_conv2d_3/depthwise_kernel/m
C:A@2*Adam/separable_conv2d_3/pointwise_kernel/m
/:-2"Adam/batch_normalization_3/gamma/m
.:,2!Adam/batch_normalization_3/beta/m
+:)2Adam/p_re_lu_3/alpha/m
C:A2*Adam/separable_conv2d_4/depthwise_kernel/m
D:B2*Adam/separable_conv2d_4/pointwise_kernel/m
/:-2"Adam/batch_normalization_4/gamma/m
.:,2!Adam/batch_normalization_4/beta/m
+:)2Adam/p_re_lu_4/alpha/m
%:#
2Adam/dense/kernel/m
:2Adam/dense/bias/m
#:!2Adam/p_re_lu_5/alpha/m
&:$	@2Adam/dense_1/kernel/m
:@2Adam/dense_1/bias/m
": @2Adam/p_re_lu_6/alpha/m
%:#@ 2Adam/dense_2/kernel/m
: 2Adam/dense_2/bias/m
":  2Adam/p_re_lu_7/alpha/m
%:# 2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
@:>2(Adam/separable_conv2d/depthwise_kernel/v
@:>2(Adam/separable_conv2d/pointwise_kernel/v
,:*2 Adam/batch_normalization/gamma/v
+:)2Adam/batch_normalization/beta/v
(:&2Adam/p_re_lu/alpha/v
B:@2*Adam/separable_conv2d_1/depthwise_kernel/v
B:@ 2*Adam/separable_conv2d_1/pointwise_kernel/v
.:, 2"Adam/batch_normalization_1/gamma/v
-:+ 2!Adam/batch_normalization_1/beta/v
*:( 2Adam/p_re_lu_1/alpha/v
B:@ 2*Adam/separable_conv2d_2/depthwise_kernel/v
B:@ @2*Adam/separable_conv2d_2/pointwise_kernel/v
.:,@2"Adam/batch_normalization_2/gamma/v
-:+@2!Adam/batch_normalization_2/beta/v
*:(@2Adam/p_re_lu_2/alpha/v
B:@@2*Adam/separable_conv2d_3/depthwise_kernel/v
C:A@2*Adam/separable_conv2d_3/pointwise_kernel/v
/:-2"Adam/batch_normalization_3/gamma/v
.:,2!Adam/batch_normalization_3/beta/v
+:)2Adam/p_re_lu_3/alpha/v
C:A2*Adam/separable_conv2d_4/depthwise_kernel/v
D:B2*Adam/separable_conv2d_4/pointwise_kernel/v
/:-2"Adam/batch_normalization_4/gamma/v
.:,2!Adam/batch_normalization_4/beta/v
+:)2Adam/p_re_lu_4/alpha/v
%:#
2Adam/dense/kernel/v
:2Adam/dense/bias/v
#:!2Adam/p_re_lu_5/alpha/v
&:$	@2Adam/dense_1/kernel/v
:@2Adam/dense_1/bias/v
": @2Adam/p_re_lu_6/alpha/v
%:#@ 2Adam/dense_2/kernel/v
: 2Adam/dense_2/bias/v
":  2Adam/p_re_lu_7/alpha/v
%:# 2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
ζ2γ
&__inference_model_layer_call_fn_101489
&__inference_model_layer_call_fn_102968
&__inference_model_layer_call_fn_103065
&__inference_model_layer_call_fn_102404ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
?2Ο
A__inference_model_layer_call_and_return_conditional_losses_103314
A__inference_model_layer_call_and_return_conditional_losses_103584
A__inference_model_layer_call_and_return_conditional_losses_102567
A__inference_model_layer_call_and_return_conditional_losses_102730ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΛBΘ
 __inference__wrapped_model_99570input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
1__inference_separable_conv2d_layer_call_fn_103593
1__inference_separable_conv2d_layer_call_fn_103602’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Δ2Α
L__inference_separable_conv2d_layer_call_and_return_conditional_losses_103614
L__inference_separable_conv2d_layer_call_and_return_conditional_losses_103626’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
4__inference_batch_normalization_layer_call_fn_103639
4__inference_batch_normalization_layer_call_fn_103652
4__inference_batch_normalization_layer_call_fn_103665
4__inference_batch_normalization_layer_call_fn_103678΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ώ2ϋ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_103696
O__inference_batch_normalization_layer_call_and_return_conditional_losses_103714
O__inference_batch_normalization_layer_call_and_return_conditional_losses_103732
O__inference_batch_normalization_layer_call_and_return_conditional_losses_103750΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ό2ω
(__inference_p_re_lu_layer_call_fn_103757
(__inference_p_re_lu_layer_call_fn_103764’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
²2―
C__inference_p_re_lu_layer_call_and_return_conditional_losses_103776
C__inference_p_re_lu_layer_call_and_return_conditional_losses_103788’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
.__inference_max_pooling2d_layer_call_fn_103793
.__inference_max_pooling2d_layer_call_fn_103798’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ύ2»
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_103803
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_103808’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
3__inference_separable_conv2d_1_layer_call_fn_103817
3__inference_separable_conv2d_1_layer_call_fn_103826’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Θ2Ε
N__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_103838
N__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_103850’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
6__inference_batch_normalization_1_layer_call_fn_103863
6__inference_batch_normalization_1_layer_call_fn_103876
6__inference_batch_normalization_1_layer_call_fn_103889
6__inference_batch_normalization_1_layer_call_fn_103902΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_103920
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_103938
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_103956
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_103974΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2ύ
*__inference_p_re_lu_1_layer_call_fn_103981
*__inference_p_re_lu_1_layer_call_fn_103988’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ά2³
E__inference_p_re_lu_1_layer_call_and_return_conditional_losses_104000
E__inference_p_re_lu_1_layer_call_and_return_conditional_losses_104012’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
0__inference_max_pooling2d_1_layer_call_fn_104017
0__inference_max_pooling2d_1_layer_call_fn_104022’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Β2Ώ
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_104027
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_104032’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
3__inference_separable_conv2d_2_layer_call_fn_104041
3__inference_separable_conv2d_2_layer_call_fn_104050’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Θ2Ε
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_104062
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_104074’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
6__inference_batch_normalization_2_layer_call_fn_104087
6__inference_batch_normalization_2_layer_call_fn_104100
6__inference_batch_normalization_2_layer_call_fn_104113
6__inference_batch_normalization_2_layer_call_fn_104126΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_104144
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_104162
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_104180
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_104198΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2ύ
*__inference_p_re_lu_2_layer_call_fn_104205
*__inference_p_re_lu_2_layer_call_fn_104212’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ά2³
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_104224
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_104236’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
0__inference_max_pooling2d_2_layer_call_fn_104241
0__inference_max_pooling2d_2_layer_call_fn_104246’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Β2Ώ
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_104251
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_104256’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
3__inference_separable_conv2d_3_layer_call_fn_104265
3__inference_separable_conv2d_3_layer_call_fn_104274’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Θ2Ε
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_104286
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_104298’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
6__inference_batch_normalization_3_layer_call_fn_104311
6__inference_batch_normalization_3_layer_call_fn_104324
6__inference_batch_normalization_3_layer_call_fn_104337
6__inference_batch_normalization_3_layer_call_fn_104350΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_104368
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_104386
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_104404
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_104422΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2ύ
*__inference_p_re_lu_3_layer_call_fn_104429
*__inference_p_re_lu_3_layer_call_fn_104436’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ά2³
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_104448
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_104460’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
0__inference_max_pooling2d_3_layer_call_fn_104465
0__inference_max_pooling2d_3_layer_call_fn_104470’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Β2Ώ
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_104475
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_104480’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
3__inference_separable_conv2d_4_layer_call_fn_104489
3__inference_separable_conv2d_4_layer_call_fn_104498’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Θ2Ε
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_104510
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_104522’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
6__inference_batch_normalization_4_layer_call_fn_104535
6__inference_batch_normalization_4_layer_call_fn_104548
6__inference_batch_normalization_4_layer_call_fn_104561
6__inference_batch_normalization_4_layer_call_fn_104574΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_104592
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_104610
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_104628
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_104646΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2ύ
*__inference_p_re_lu_4_layer_call_fn_104653
*__inference_p_re_lu_4_layer_call_fn_104660’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ά2³
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_104672
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_104684’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
0__inference_max_pooling2d_4_layer_call_fn_104689
0__inference_max_pooling2d_4_layer_call_fn_104694’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Β2Ώ
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_104699
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_104704’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
?2Ο
(__inference_flatten_layer_call_fn_104709’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ν2κ
C__inference_flatten_layer_call_and_return_conditional_losses_104715’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Π2Ν
&__inference_dense_layer_call_fn_104736’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
λ2θ
A__inference_dense_layer_call_and_return_conditional_losses_104758’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2ύ
*__inference_p_re_lu_5_layer_call_fn_104765
*__inference_p_re_lu_5_layer_call_fn_104772’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ά2³
E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_104784
E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_104796’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
(__inference_dropout_layer_call_fn_104801
(__inference_dropout_layer_call_fn_104806΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Δ2Α
C__inference_dropout_layer_call_and_return_conditional_losses_104811
C__inference_dropout_layer_call_and_return_conditional_losses_104823΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
?2Ο
(__inference_dense_1_layer_call_fn_104844’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ν2κ
C__inference_dense_1_layer_call_and_return_conditional_losses_104866’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2ύ
*__inference_p_re_lu_6_layer_call_fn_104873
*__inference_p_re_lu_6_layer_call_fn_104880’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ά2³
E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_104892
E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_104904’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
*__inference_dropout_1_layer_call_fn_104909
*__inference_dropout_1_layer_call_fn_104914΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_1_layer_call_and_return_conditional_losses_104919
E__inference_dropout_1_layer_call_and_return_conditional_losses_104931΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
?2Ο
(__inference_dense_2_layer_call_fn_104952’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ν2κ
C__inference_dense_2_layer_call_and_return_conditional_losses_104974’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2ύ
*__inference_p_re_lu_7_layer_call_fn_104981
*__inference_p_re_lu_7_layer_call_fn_104988’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ά2³
E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_105000
E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_105012’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
2
*__inference_dropout_2_layer_call_fn_105017
*__inference_dropout_2_layer_call_fn_105022΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_2_layer_call_and_return_conditional_losses_105027
E__inference_dropout_2_layer_call_and_return_conditional_losses_105039΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
?2Ο
(__inference_dense_3_layer_call_fn_105048’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ν2κ
C__inference_dense_3_layer_call_and_return_conditional_losses_105059’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
³2°
__inference_loss_fn_0_105070
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *’ 
³2°
__inference_loss_fn_1_105081
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *’ 
³2°
__inference_loss_fn_2_105092
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *’ 
³2°
__inference_loss_fn_3_105103
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *’ 
³2°
__inference_loss_fn_4_105114
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *’ 
³2°
__inference_loss_fn_5_105125
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *’ 
ΛBΘ
$__inference_signature_wrapper_102871input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 Χ
 __inference__wrapped_model_99570²A()/0128ABHIJKQZ[abcdjstz{|}©ͺ―ΈΉΎΗΘΝΦΧ:’7
0’-
+(
input_1?????????
ͺ "1ͺ.
,
dense_3!
dense_3?????????μ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_103920HIJKM’J
C’@
:7
inputs+??????????????????????????? 
p 
ͺ "?’<
52
0+??????????????????????????? 
 μ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_103938HIJKM’J
C’@
:7
inputs+??????????????????????????? 
p
ͺ "?’<
52
0+??????????????????????????? 
 Η
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_103956rHIJK;’8
1’.
(%
inputs?????????== 
p 
ͺ "-’*
# 
0?????????== 
 Η
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_103974rHIJK;’8
1’.
(%
inputs?????????== 
p
ͺ "-’*
# 
0?????????== 
 Δ
6__inference_batch_normalization_1_layer_call_fn_103863HIJKM’J
C’@
:7
inputs+??????????????????????????? 
p 
ͺ "2/+??????????????????????????? Δ
6__inference_batch_normalization_1_layer_call_fn_103876HIJKM’J
C’@
:7
inputs+??????????????????????????? 
p
ͺ "2/+??????????????????????????? 
6__inference_batch_normalization_1_layer_call_fn_103889eHIJK;’8
1’.
(%
inputs?????????== 
p 
ͺ " ?????????== 
6__inference_batch_normalization_1_layer_call_fn_103902eHIJK;’8
1’.
(%
inputs?????????== 
p
ͺ " ?????????== μ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_104144abcdM’J
C’@
:7
inputs+???????????????????????????@
p 
ͺ "?’<
52
0+???????????????????????????@
 μ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_104162abcdM’J
C’@
:7
inputs+???????????????????????????@
p
ͺ "?’<
52
0+???????????????????????????@
 Η
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_104180rabcd;’8
1’.
(%
inputs?????????@
p 
ͺ "-’*
# 
0?????????@
 Η
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_104198rabcd;’8
1’.
(%
inputs?????????@
p
ͺ "-’*
# 
0?????????@
 Δ
6__inference_batch_normalization_2_layer_call_fn_104087abcdM’J
C’@
:7
inputs+???????????????????????????@
p 
ͺ "2/+???????????????????????????@Δ
6__inference_batch_normalization_2_layer_call_fn_104100abcdM’J
C’@
:7
inputs+???????????????????????????@
p
ͺ "2/+???????????????????????????@
6__inference_batch_normalization_2_layer_call_fn_104113eabcd;’8
1’.
(%
inputs?????????@
p 
ͺ " ?????????@
6__inference_batch_normalization_2_layer_call_fn_104126eabcd;’8
1’.
(%
inputs?????????@
p
ͺ " ?????????@ξ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_104368z{|}N’K
D’A
;8
inputs,???????????????????????????
p 
ͺ "@’=
63
0,???????????????????????????
 ξ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_104386z{|}N’K
D’A
;8
inputs,???????????????????????????
p
ͺ "@’=
63
0,???????????????????????????
 Ι
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_104404tz{|}<’9
2’/
)&
inputs?????????
p 
ͺ ".’+
$!
0?????????
 Ι
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_104422tz{|}<’9
2’/
)&
inputs?????????
p
ͺ ".’+
$!
0?????????
 Ζ
6__inference_batch_normalization_3_layer_call_fn_104311z{|}N’K
D’A
;8
inputs,???????????????????????????
p 
ͺ "30,???????????????????????????Ζ
6__inference_batch_normalization_3_layer_call_fn_104324z{|}N’K
D’A
;8
inputs,???????????????????????????
p
ͺ "30,???????????????????????????‘
6__inference_batch_normalization_3_layer_call_fn_104337gz{|}<’9
2’/
)&
inputs?????????
p 
ͺ "!?????????‘
6__inference_batch_normalization_3_layer_call_fn_104350gz{|}<’9
2’/
)&
inputs?????????
p
ͺ "!?????????ς
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_104592N’K
D’A
;8
inputs,???????????????????????????
p 
ͺ "@’=
63
0,???????????????????????????
 ς
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_104610N’K
D’A
;8
inputs,???????????????????????????
p
ͺ "@’=
63
0,???????????????????????????
 Ν
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_104628x<’9
2’/
)&
inputs?????????
p 
ͺ ".’+
$!
0?????????
 Ν
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_104646x<’9
2’/
)&
inputs?????????
p
ͺ ".’+
$!
0?????????
 Κ
6__inference_batch_normalization_4_layer_call_fn_104535N’K
D’A
;8
inputs,???????????????????????????
p 
ͺ "30,???????????????????????????Κ
6__inference_batch_normalization_4_layer_call_fn_104548N’K
D’A
;8
inputs,???????????????????????????
p
ͺ "30,???????????????????????????₯
6__inference_batch_normalization_4_layer_call_fn_104561k<’9
2’/
)&
inputs?????????
p 
ͺ "!?????????₯
6__inference_batch_normalization_4_layer_call_fn_104574k<’9
2’/
)&
inputs?????????
p
ͺ "!?????????κ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_103696/012M’J
C’@
:7
inputs+???????????????????????????
p 
ͺ "?’<
52
0+???????????????????????????
 κ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_103714/012M’J
C’@
:7
inputs+???????????????????????????
p
ͺ "?’<
52
0+???????????????????????????
 Ε
O__inference_batch_normalization_layer_call_and_return_conditional_losses_103732r/012;’8
1’.
(%
inputs?????????~~
p 
ͺ "-’*
# 
0?????????~~
 Ε
O__inference_batch_normalization_layer_call_and_return_conditional_losses_103750r/012;’8
1’.
(%
inputs?????????~~
p
ͺ "-’*
# 
0?????????~~
 Β
4__inference_batch_normalization_layer_call_fn_103639/012M’J
C’@
:7
inputs+???????????????????????????
p 
ͺ "2/+???????????????????????????Β
4__inference_batch_normalization_layer_call_fn_103652/012M’J
C’@
:7
inputs+???????????????????????????
p
ͺ "2/+???????????????????????????
4__inference_batch_normalization_layer_call_fn_103665e/012;’8
1’.
(%
inputs?????????~~
p 
ͺ " ?????????~~
4__inference_batch_normalization_layer_call_fn_103678e/012;’8
1’.
(%
inputs?????????~~
p
ͺ " ?????????~~¦
C__inference_dense_1_layer_call_and_return_conditional_losses_104866_ΈΉ0’-
&’#
!
inputs?????????
ͺ "%’"

0?????????@
 ~
(__inference_dense_1_layer_call_fn_104844RΈΉ0’-
&’#
!
inputs?????????
ͺ "?????????@₯
C__inference_dense_2_layer_call_and_return_conditional_losses_104974^ΗΘ/’,
%’"
 
inputs?????????@
ͺ "%’"

0????????? 
 }
(__inference_dense_2_layer_call_fn_104952QΗΘ/’,
%’"
 
inputs?????????@
ͺ "????????? ₯
C__inference_dense_3_layer_call_and_return_conditional_losses_105059^ΦΧ/’,
%’"
 
inputs????????? 
ͺ "%’"

0?????????
 }
(__inference_dense_3_layer_call_fn_105048QΦΧ/’,
%’"
 
inputs????????? 
ͺ "?????????₯
A__inference_dense_layer_call_and_return_conditional_losses_104758`©ͺ0’-
&’#
!
inputs?????????
ͺ "&’#

0?????????
 }
&__inference_dense_layer_call_fn_104736S©ͺ0’-
&’#
!
inputs?????????
ͺ "?????????₯
E__inference_dropout_1_layer_call_and_return_conditional_losses_104919\3’0
)’&
 
inputs?????????@
p 
ͺ "%’"

0?????????@
 ₯
E__inference_dropout_1_layer_call_and_return_conditional_losses_104931\3’0
)’&
 
inputs?????????@
p
ͺ "%’"

0?????????@
 }
*__inference_dropout_1_layer_call_fn_104909O3’0
)’&
 
inputs?????????@
p 
ͺ "?????????@}
*__inference_dropout_1_layer_call_fn_104914O3’0
)’&
 
inputs?????????@
p
ͺ "?????????@₯
E__inference_dropout_2_layer_call_and_return_conditional_losses_105027\3’0
)’&
 
inputs????????? 
p 
ͺ "%’"

0????????? 
 ₯
E__inference_dropout_2_layer_call_and_return_conditional_losses_105039\3’0
)’&
 
inputs????????? 
p
ͺ "%’"

0????????? 
 }
*__inference_dropout_2_layer_call_fn_105017O3’0
)’&
 
inputs????????? 
p 
ͺ "????????? }
*__inference_dropout_2_layer_call_fn_105022O3’0
)’&
 
inputs????????? 
p
ͺ "????????? ₯
C__inference_dropout_layer_call_and_return_conditional_losses_104811^4’1
*’'
!
inputs?????????
p 
ͺ "&’#

0?????????
 ₯
C__inference_dropout_layer_call_and_return_conditional_losses_104823^4’1
*’'
!
inputs?????????
p
ͺ "&’#

0?????????
 }
(__inference_dropout_layer_call_fn_104801Q4’1
*’'
!
inputs?????????
p 
ͺ "?????????}
(__inference_dropout_layer_call_fn_104806Q4’1
*’'
!
inputs?????????
p
ͺ "?????????©
C__inference_flatten_layer_call_and_return_conditional_losses_104715b8’5
.’+
)&
inputs?????????
ͺ "&’#

0?????????
 
(__inference_flatten_layer_call_fn_104709U8’5
.’+
)&
inputs?????????
ͺ "?????????<
__inference_loss_fn_0_105070©’

’ 
ͺ " <
__inference_loss_fn_1_105081ͺ’

’ 
ͺ " <
__inference_loss_fn_2_105092Έ’

’ 
ͺ " <
__inference_loss_fn_3_105103Ή’

’ 
ͺ " <
__inference_loss_fn_4_105114Η’

’ 
ͺ " <
__inference_loss_fn_5_105125Θ’

’ 
ͺ " ξ
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_104027R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 ·
K__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_104032h7’4
-’*
(%
inputs?????????== 
ͺ "-’*
# 
0????????? 
 Ζ
0__inference_max_pooling2d_1_layer_call_fn_104017R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????
0__inference_max_pooling2d_1_layer_call_fn_104022[7’4
-’*
(%
inputs?????????== 
ͺ " ????????? ξ
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_104251R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 ·
K__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_104256h7’4
-’*
(%
inputs?????????@
ͺ "-’*
# 
0?????????@
 Ζ
0__inference_max_pooling2d_2_layer_call_fn_104241R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????
0__inference_max_pooling2d_2_layer_call_fn_104246[7’4
-’*
(%
inputs?????????@
ͺ " ?????????@ξ
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_104475R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ή
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_104480j8’5
.’+
)&
inputs?????????
ͺ ".’+
$!
0?????????
 Ζ
0__inference_max_pooling2d_3_layer_call_fn_104465R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????
0__inference_max_pooling2d_3_layer_call_fn_104470]8’5
.’+
)&
inputs?????????
ͺ "!?????????ξ
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_104699R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ή
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_104704j8’5
.’+
)&
inputs?????????
ͺ ".’+
$!
0?????????
 Ζ
0__inference_max_pooling2d_4_layer_call_fn_104689R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????
0__inference_max_pooling2d_4_layer_call_fn_104694]8’5
.’+
)&
inputs?????????
ͺ "!?????????μ
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_103803R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 ΅
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_103808h7’4
-’*
(%
inputs?????????~~
ͺ "-’*
# 
0???????????
 Δ
.__inference_max_pooling2d_layer_call_fn_103793R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????
.__inference_max_pooling2d_layer_call_fn_103798[7’4
-’*
(%
inputs?????????~~
ͺ " ???????????τ
A__inference_model_layer_call_and_return_conditional_losses_102567?A()/0128ABHIJKQZ[abcdjstz{|}©ͺ―ΈΉΎΗΘΝΦΧB’?
8’5
+(
input_1?????????
p 

 
ͺ "%’"

0?????????
 τ
A__inference_model_layer_call_and_return_conditional_losses_102730?A()/0128ABHIJKQZ[abcdjstz{|}©ͺ―ΈΉΎΗΘΝΦΧB’?
8’5
+(
input_1?????????
p

 
ͺ "%’"

0?????????
 σ
A__inference_model_layer_call_and_return_conditional_losses_103314­A()/0128ABHIJKQZ[abcdjstz{|}©ͺ―ΈΉΎΗΘΝΦΧA’>
7’4
*'
inputs?????????
p 

 
ͺ "%’"

0?????????
 σ
A__inference_model_layer_call_and_return_conditional_losses_103584­A()/0128ABHIJKQZ[abcdjstz{|}©ͺ―ΈΉΎΗΘΝΦΧA’>
7’4
*'
inputs?????????
p

 
ͺ "%’"

0?????????
 Μ
&__inference_model_layer_call_fn_101489‘A()/0128ABHIJKQZ[abcdjstz{|}©ͺ―ΈΉΎΗΘΝΦΧB’?
8’5
+(
input_1?????????
p 

 
ͺ "?????????Μ
&__inference_model_layer_call_fn_102404‘A()/0128ABHIJKQZ[abcdjstz{|}©ͺ―ΈΉΎΗΘΝΦΧB’?
8’5
+(
input_1?????????
p

 
ͺ "?????????Λ
&__inference_model_layer_call_fn_102968 A()/0128ABHIJKQZ[abcdjstz{|}©ͺ―ΈΉΎΗΘΝΦΧA’>
7’4
*'
inputs?????????
p 

 
ͺ "?????????Λ
&__inference_model_layer_call_fn_103065 A()/0128ABHIJKQZ[abcdjstz{|}©ͺ―ΈΉΎΗΘΝΦΧA’>
7’4
*'
inputs?????????
p

 
ͺ "?????????Ω
E__inference_p_re_lu_1_layer_call_and_return_conditional_losses_104000QI’F
?’<
:7
inputs+??????????????????????????? 
ͺ "?’<
52
0+??????????????????????????? 
 ΄
E__inference_p_re_lu_1_layer_call_and_return_conditional_losses_104012kQ7’4
-’*
(%
inputs?????????== 
ͺ "-’*
# 
0?????????== 
 ±
*__inference_p_re_lu_1_layer_call_fn_103981QI’F
?’<
:7
inputs+??????????????????????????? 
ͺ "2/+??????????????????????????? 
*__inference_p_re_lu_1_layer_call_fn_103988^Q7’4
-’*
(%
inputs?????????== 
ͺ " ?????????== Ω
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_104224jI’F
?’<
:7
inputs+???????????????????????????@
ͺ "?’<
52
0+???????????????????????????@
 ΄
E__inference_p_re_lu_2_layer_call_and_return_conditional_losses_104236kj7’4
-’*
(%
inputs?????????@
ͺ "-’*
# 
0?????????@
 ±
*__inference_p_re_lu_2_layer_call_fn_104205jI’F
?’<
:7
inputs+???????????????????????????@
ͺ "2/+???????????????????????????@
*__inference_p_re_lu_2_layer_call_fn_104212^j7’4
-’*
(%
inputs?????????@
ͺ " ?????????@ά
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_104448J’G
@’=
;8
inputs,???????????????????????????
ͺ "@’=
63
0,???????????????????????????
 ·
E__inference_p_re_lu_3_layer_call_and_return_conditional_losses_104460n8’5
.’+
)&
inputs?????????
ͺ ".’+
$!
0?????????
 ΄
*__inference_p_re_lu_3_layer_call_fn_104429J’G
@’=
;8
inputs,???????????????????????????
ͺ "30,???????????????????????????
*__inference_p_re_lu_3_layer_call_fn_104436a8’5
.’+
)&
inputs?????????
ͺ "!?????????ά
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_104672J’G
@’=
;8
inputs,???????????????????????????
ͺ "@’=
63
0,???????????????????????????
 ·
E__inference_p_re_lu_4_layer_call_and_return_conditional_losses_104684n8’5
.’+
)&
inputs?????????
ͺ ".’+
$!
0?????????
 ΄
*__inference_p_re_lu_4_layer_call_fn_104653J’G
@’=
;8
inputs,???????????????????????????
ͺ "30,???????????????????????????
*__inference_p_re_lu_4_layer_call_fn_104660a8’5
.’+
)&
inputs?????????
ͺ "!?????????―
E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_104784f―8’5
.’+
)&
inputs??????????????????
ͺ "&’#

0?????????
 §
E__inference_p_re_lu_5_layer_call_and_return_conditional_losses_104796^―0’-
&’#
!
inputs?????????
ͺ "&’#

0?????????
 
*__inference_p_re_lu_5_layer_call_fn_104765Y―8’5
.’+
)&
inputs??????????????????
ͺ "?????????
*__inference_p_re_lu_5_layer_call_fn_104772Q―0’-
&’#
!
inputs?????????
ͺ "??????????
E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_104892eΎ8’5
.’+
)&
inputs??????????????????
ͺ "%’"

0?????????@
 ₯
E__inference_p_re_lu_6_layer_call_and_return_conditional_losses_104904\Ύ/’,
%’"
 
inputs?????????@
ͺ "%’"

0?????????@
 
*__inference_p_re_lu_6_layer_call_fn_104873XΎ8’5
.’+
)&
inputs??????????????????
ͺ "?????????@}
*__inference_p_re_lu_6_layer_call_fn_104880OΎ/’,
%’"
 
inputs?????????@
ͺ "?????????@?
E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_105000eΝ8’5
.’+
)&
inputs??????????????????
ͺ "%’"

0????????? 
 ₯
E__inference_p_re_lu_7_layer_call_and_return_conditional_losses_105012\Ν/’,
%’"
 
inputs????????? 
ͺ "%’"

0????????? 
 
*__inference_p_re_lu_7_layer_call_fn_104981XΝ8’5
.’+
)&
inputs??????????????????
ͺ "????????? }
*__inference_p_re_lu_7_layer_call_fn_104988OΝ/’,
%’"
 
inputs????????? 
ͺ "????????? Χ
C__inference_p_re_lu_layer_call_and_return_conditional_losses_1037768I’F
?’<
:7
inputs+???????????????????????????
ͺ "?’<
52
0+???????????????????????????
 ²
C__inference_p_re_lu_layer_call_and_return_conditional_losses_103788k87’4
-’*
(%
inputs?????????~~
ͺ "-’*
# 
0?????????~~
 ―
(__inference_p_re_lu_layer_call_fn_1037578I’F
?’<
:7
inputs+???????????????????????????
ͺ "2/+???????????????????????????
(__inference_p_re_lu_layer_call_fn_103764^87’4
-’*
(%
inputs?????????~~
ͺ " ?????????~~γ
N__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_103838ABI’F
?’<
:7
inputs+???????????????????????????
ͺ "?’<
52
0+??????????????????????????? 
 Ύ
N__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_103850lAB7’4
-’*
(%
inputs???????????
ͺ "-’*
# 
0?????????== 
 »
3__inference_separable_conv2d_1_layer_call_fn_103817ABI’F
?’<
:7
inputs+???????????????????????????
ͺ "2/+??????????????????????????? 
3__inference_separable_conv2d_1_layer_call_fn_103826_AB7’4
-’*
(%
inputs???????????
ͺ " ?????????== γ
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_104062Z[I’F
?’<
:7
inputs+??????????????????????????? 
ͺ "?’<
52
0+???????????????????????????@
 Ύ
N__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_104074lZ[7’4
-’*
(%
inputs????????? 
ͺ "-’*
# 
0?????????@
 »
3__inference_separable_conv2d_2_layer_call_fn_104041Z[I’F
?’<
:7
inputs+??????????????????????????? 
ͺ "2/+???????????????????????????@
3__inference_separable_conv2d_2_layer_call_fn_104050_Z[7’4
-’*
(%
inputs????????? 
ͺ " ?????????@δ
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_104286stI’F
?’<
:7
inputs+???????????????????????????@
ͺ "@’=
63
0,???????????????????????????
 Ώ
N__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_104298mst7’4
-’*
(%
inputs?????????@
ͺ ".’+
$!
0?????????
 Ό
3__inference_separable_conv2d_3_layer_call_fn_104265stI’F
?’<
:7
inputs+???????????????????????????@
ͺ "30,???????????????????????????
3__inference_separable_conv2d_3_layer_call_fn_104274`st7’4
-’*
(%
inputs?????????@
ͺ "!?????????η
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_104510J’G
@’=
;8
inputs,???????????????????????????
ͺ "@’=
63
0,???????????????????????????
 Β
N__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_104522p8’5
.’+
)&
inputs?????????
ͺ ".’+
$!
0?????????
 Ώ
3__inference_separable_conv2d_4_layer_call_fn_104489J’G
@’=
;8
inputs,???????????????????????????
ͺ "30,???????????????????????????
3__inference_separable_conv2d_4_layer_call_fn_104498c8’5
.’+
)&
inputs?????????
ͺ "!?????????α
L__inference_separable_conv2d_layer_call_and_return_conditional_losses_103614()I’F
?’<
:7
inputs+???????????????????????????
ͺ "?’<
52
0+???????????????????????????
 Ύ
L__inference_separable_conv2d_layer_call_and_return_conditional_losses_103626n()9’6
/’,
*'
inputs?????????
ͺ "-’*
# 
0?????????~~
 Ή
1__inference_separable_conv2d_layer_call_fn_103593()I’F
?’<
:7
inputs+???????????????????????????
ͺ "2/+???????????????????????????
1__inference_separable_conv2d_layer_call_fn_103602a()9’6
/’,
*'
inputs?????????
ͺ " ?????????~~ζ
$__inference_signature_wrapper_102871½A()/0128ABHIJKQZ[abcdjstz{|}©ͺ―ΈΉΎΗΘΝΦΧE’B
’ 
;ͺ8
6
input_1+(
input_1?????????"1ͺ.
,
dense_3!
dense_3?????????