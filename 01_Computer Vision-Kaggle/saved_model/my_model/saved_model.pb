õ1
Ùª
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
0
Sigmoid
x"T
y"T"
Ttype:

2
¾
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.02v2.6.0-rc2-32-g919f693420e8Øý-

batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namebatch_normalization/gamma

-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:*
dtype0

batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebatch_normalization/beta

,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:*
dtype0

batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean

3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0

#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance

7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0

!batch_normalization/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization/moving_stddev

5batch_normalization/moving_stddev/Read/ReadVariableOpReadVariableOp!batch_normalization/moving_stddev*
_output_shapes
:*
dtype0

batch_normalization/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/renorm_mean

3batch_normalization/renorm_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/renorm_mean*
_output_shapes
:*
dtype0

!batch_normalization/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization/renorm_stddev

5batch_normalization/renorm_stddev/Read/ReadVariableOpReadVariableOp!batch_normalization/renorm_stddev*
_output_shapes
:*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0

batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_1/gamma

/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:@*
dtype0

batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_1/beta

.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:@*
dtype0

!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_1/moving_mean

5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:@*
dtype0
¢
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_1/moving_variance

9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:@*
dtype0

#batch_normalization_1/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_1/moving_stddev

7batch_normalization_1/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_1/moving_stddev*
_output_shapes
:@*
dtype0

!batch_normalization_1/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_1/renorm_mean

5batch_normalization_1/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/renorm_mean*
_output_shapes
:@*
dtype0

#batch_normalization_1/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_1/renorm_stddev

7batch_normalization_1/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_1/renorm_stddev*
_output_shapes
:@*
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_1/kernel
|
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*'
_output_shapes
:@*
dtype0
s
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
l
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes	
:*
dtype0

batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_2/gamma

/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes	
:*
dtype0

batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_2/beta

.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes	
:*
dtype0

!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_2/moving_mean

5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes	
:*
dtype0
£
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_2/moving_variance

9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes	
:*
dtype0

#batch_normalization_2/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_2/moving_stddev

7batch_normalization_2/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_2/moving_stddev*
_output_shapes	
:*
dtype0

!batch_normalization_2/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_2/renorm_mean

5batch_normalization_2/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/renorm_mean*
_output_shapes	
:*
dtype0

#batch_normalization_2/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_2/renorm_stddev

7batch_normalization_2/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_2/renorm_stddev*
_output_shapes	
:*
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_2/kernel
}
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*(
_output_shapes
:*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:*
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:*
dtype0

batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_3/gamma

/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes	
:*
dtype0

batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_3/beta

.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes	
:*
dtype0

!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_3/moving_mean

5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes	
:*
dtype0
£
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_3/moving_variance

9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes	
:*
dtype0

#batch_normalization_3/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_3/moving_stddev

7batch_normalization_3/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_3/moving_stddev*
_output_shapes	
:*
dtype0

!batch_normalization_3/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_3/renorm_mean

5batch_normalization_3/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/renorm_mean*
_output_shapes	
:*
dtype0

#batch_normalization_3/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_3/renorm_stddev

7batch_normalization_3/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_3/renorm_stddev*
_output_shapes	
:*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
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
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
l

Variable_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_2
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0	
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

 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/m

4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes
:*
dtype0

Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/m

3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes
:*
dtype0

Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/m

(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:@*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:@*
dtype0

"Adam/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_1/gamma/m

6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/m*
_output_shapes
:@*
dtype0

!Adam/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_1/beta/m

5Adam/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/m*
_output_shapes
:@*
dtype0

Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_1/kernel/m

*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_1/bias/m
z
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_2/gamma/m

6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_2/beta/m

5Adam/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/m*
_output_shapes	
:*
dtype0

Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_2/kernel/m

*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_2/bias/m
z
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_3/kernel/m

*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/m
z
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_3/gamma/m

6Adam/batch_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_3/beta/m

5Adam/batch_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/m*
_output_shapes	
:*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0

 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/v

4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes
:*
dtype0

Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/v

3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes
:*
dtype0

Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/v

(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:@*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:@*
dtype0

"Adam/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_1/gamma/v

6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/v*
_output_shapes
:@*
dtype0

!Adam/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_1/beta/v

5Adam/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/v*
_output_shapes
:@*
dtype0

Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_1/kernel/v

*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_1/bias/v
z
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_2/gamma/v

6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_2/beta/v

5Adam/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/v*
_output_shapes	
:*
dtype0

Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_2/kernel/v

*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_2/bias/v
z
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_3/kernel/v

*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/v
z
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_3/gamma/v

6Adam/batch_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_3/beta/v

5Adam/batch_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/v*
_output_shapes	
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ç
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueöBò Bê
Ù
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer_with_weights-8
layer-15
layer_with_weights-9
layer-16
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
\
_rng
	variables
trainable_variables
regularization_losses
	keras_api
\
_rng
	variables
trainable_variables
 regularization_losses
!	keras_api
\
"_rng
#	variables
$trainable_variables
%regularization_losses
&	keras_api
ã
'renorm_clipping
(axis
	)gamma
*beta
+moving_mean
,moving_variance
-moving_stddev
.renorm_mean
/renorm_stddev
0	variables
1trainable_variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
R
:	variables
;trainable_variables
<regularization_losses
=	keras_api
ã
>renorm_clipping
?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance
Dmoving_stddev
Erenorm_mean
Frenorm_stddev
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
h

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
R
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
ã
Urenorm_clipping
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
[moving_stddev
\renorm_mean
]renorm_stddev
^	variables
_trainable_variables
`regularization_losses
a	keras_api
h

bkernel
cbias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h

hkernel
ibias
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
R
n	variables
otrainable_variables
pregularization_losses
q	keras_api
ã
rrenorm_clipping
saxis
	tgamma
ubeta
vmoving_mean
wmoving_variance
xmoving_stddev
yrenorm_mean
zrenorm_stddev
{	variables
|trainable_variables
}regularization_losses
~	keras_api
U
	variables
trainable_variables
regularization_losses
	keras_api
n
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
n
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
Ý
	iter
beta_1
beta_2

decay
learning_rate)mü*mý4mþ5mÿ@mAmKmLmWmXmbmcmhmimtmum	m	m	m	m)v*v4v5v@vAvKvLvWvXvbvcvhvivtvuv	v 	v¡	v¢	v£
º
)0
*1
+2
,3
-4
.5
/6
47
58
@9
A10
B11
C12
D13
E14
F15
K16
L17
W18
X19
Y20
Z21
[22
\23
]24
b25
c26
h27
i28
t29
u30
v31
w32
x33
y34
z35
36
37
38
39

)0
*1
42
53
@4
A5
K6
L7
W8
X9
b10
c11
h12
i13
t14
u15
16
17
18
19
 
²
metrics
 layer_regularization_losses
	variables
non_trainable_variables
layer_metrics
trainable_variables
regularization_losses
layers
 


_state_var
 
 
 
²
metrics
 layer_regularization_losses
non_trainable_variables
layer_metrics
	variables
trainable_variables
regularization_losses
layers


_state_var
 
 
 
²
 metrics
 ¡layer_regularization_losses
¢non_trainable_variables
£layer_metrics
	variables
trainable_variables
 regularization_losses
¤layers

¥
_state_var
 
 
 
²
¦metrics
 §layer_regularization_losses
¨non_trainable_variables
©layer_metrics
#	variables
$trainable_variables
%regularization_losses
ªlayers
 
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE!batch_normalization/moving_stddev=layer_with_weights-0/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/renorm_mean;layer_with_weights-0/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE!batch_normalization/renorm_stddev=layer_with_weights-0/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
1
)0
*1
+2
,3
-4
.5
/6

)0
*1
 
²
«metrics
 ¬layer_regularization_losses
­non_trainable_variables
®layer_metrics
0	variables
1trainable_variables
2regularization_losses
¯layers
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51

40
51
 
²
°metrics
 ±layer_regularization_losses
²non_trainable_variables
³layer_metrics
6	variables
7trainable_variables
8regularization_losses
´layers
 
 
 
²
µmetrics
 ¶layer_regularization_losses
·non_trainable_variables
¸layer_metrics
:	variables
;trainable_variables
<regularization_losses
¹layers
 
 
fd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_1/moving_stddev=layer_with_weights-2/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/renorm_mean;layer_with_weights-2/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_1/renorm_stddev=layer_with_weights-2/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
1
@0
A1
B2
C3
D4
E5
F6

@0
A1
 
²
ºmetrics
 »layer_regularization_losses
¼non_trainable_variables
½layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
¾layers
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

K0
L1

K0
L1
 
²
¿metrics
 Àlayer_regularization_losses
Ánon_trainable_variables
Âlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Ãlayers
 
 
 
²
Ämetrics
 Ålayer_regularization_losses
Ænon_trainable_variables
Çlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
Èlayers
 
 
fd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_2/moving_stddev=layer_with_weights-4/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_2/renorm_mean;layer_with_weights-4/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_2/renorm_stddev=layer_with_weights-4/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
1
W0
X1
Y2
Z3
[4
\5
]6

W0
X1
 
²
Émetrics
 Êlayer_regularization_losses
Ënon_trainable_variables
Ìlayer_metrics
^	variables
_trainable_variables
`regularization_losses
Ílayers
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

b0
c1

b0
c1
 
²
Îmetrics
 Ïlayer_regularization_losses
Ðnon_trainable_variables
Ñlayer_metrics
d	variables
etrainable_variables
fregularization_losses
Òlayers
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

h0
i1

h0
i1
 
²
Ómetrics
 Ôlayer_regularization_losses
Õnon_trainable_variables
Ölayer_metrics
j	variables
ktrainable_variables
lregularization_losses
×layers
 
 
 
²
Ømetrics
 Ùlayer_regularization_losses
Únon_trainable_variables
Ûlayer_metrics
n	variables
otrainable_variables
pregularization_losses
Ülayers
 
 
fd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_3/moving_stddev=layer_with_weights-7/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_3/renorm_mean;layer_with_weights-7/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_3/renorm_stddev=layer_with_weights-7/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
1
t0
u1
v2
w3
x4
y5
z6

t0
u1
 
²
Ýmetrics
 Þlayer_regularization_losses
ßnon_trainable_variables
àlayer_metrics
{	variables
|trainable_variables
}regularization_losses
álayers
 
 
 
´
âmetrics
 ãlayer_regularization_losses
änon_trainable_variables
ålayer_metrics
	variables
trainable_variables
regularization_losses
ælayers
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
µ
çmetrics
 èlayer_regularization_losses
énon_trainable_variables
êlayer_metrics
	variables
trainable_variables
regularization_losses
ëlayers
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
µ
ìmetrics
 ílayer_regularization_losses
înon_trainable_variables
ïlayer_metrics
	variables
trainable_variables
regularization_losses
ðlayers
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

ñ0
ò1
 

+0
,1
-2
.3
/4
B5
C6
D7
E8
F9
Y10
Z11
[12
\13
]14
v15
w16
x17
y18
z19
 
~
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
PN
VARIABLE_VALUEVariable2layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
RP
VARIABLE_VALUE
Variable_12layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
RP
VARIABLE_VALUE
Variable_22layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
 
 
#
+0
,1
-2
.3
/4
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
#
B0
C1
D2
E3
F4
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
#
Y0
Z1
[2
\3
]4
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
#
v0
w1
x2
y3
z4
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

ótotal

ôcount
õ	variables
ö	keras_api
I

÷total

øcount
ù
_fn_kwargs
ú	variables
û	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

ó0
ô1

õ	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

÷0
ø1

ú	variables

VARIABLE_VALUE Adam/batch_normalization/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/batch_normalization/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_1/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_1/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_2/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_2/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_3/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_3/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_3/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/batch_normalization/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/batch_normalization/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_1/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_1/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_2/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_2/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_3/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_3/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_3/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_1Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿ
¤
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betaconv2d/kernelconv2d/bias%batch_normalization_1/moving_variancebatch_normalization_1/gamma!batch_normalization_1/moving_meanbatch_normalization_1/betaconv2d_1/kernelconv2d_1/bias%batch_normalization_2/moving_variancebatch_normalization_2/gamma!batch_normalization_2/moving_meanbatch_normalization_2/betaconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/bias%batch_normalization_3/moving_variancebatch_normalization_3/gamma!batch_normalization_3/moving_meanbatch_normalization_3/betadense/kernel
dense/biasdense_1/kerneldense_1/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_29822
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ö#
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp5batch_normalization/moving_stddev/Read/ReadVariableOp3batch_normalization/renorm_mean/Read/ReadVariableOp5batch_normalization/renorm_stddev/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp7batch_normalization_1/moving_stddev/Read/ReadVariableOp5batch_normalization_1/renorm_mean/Read/ReadVariableOp7batch_normalization_1/renorm_stddev/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp7batch_normalization_2/moving_stddev/Read/ReadVariableOp5batch_normalization_2/renorm_mean/Read/ReadVariableOp7batch_normalization_2/renorm_stddev/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp7batch_normalization_3/moving_stddev/Read/ReadVariableOp5batch_normalization_3/renorm_mean/Read/ReadVariableOp7batch_normalization_3/renorm_stddev/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_1/beta/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_2/beta/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp6Adam/batch_normalization_3/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_3/beta/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_1/beta/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_2/beta/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp6Adam/batch_normalization_3/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_3/beta/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*i
Tinb
`2^				*
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
GPU2*0J 8 *'
f"R 
__inference__traced_save_32447
¡
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variance!batch_normalization/moving_stddevbatch_normalization/renorm_mean!batch_normalization/renorm_stddevconv2d/kernelconv2d/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variance#batch_normalization_1/moving_stddev!batch_normalization_1/renorm_mean#batch_normalization_1/renorm_stddevconv2d_1/kernelconv2d_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variance#batch_normalization_2/moving_stddev!batch_normalization_2/renorm_mean#batch_normalization_2/renorm_stddevconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variance#batch_normalization_3/moving_stddev!batch_normalization_3/renorm_mean#batch_normalization_3/renorm_stddevdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1
Variable_2totalcounttotal_1count_1 Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/conv2d/kernel/mAdam/conv2d/bias/m"Adam/batch_normalization_1/gamma/m!Adam/batch_normalization_1/beta/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/m"Adam/batch_normalization_2/gamma/m!Adam/batch_normalization_2/beta/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/m"Adam/batch_normalization_3/gamma/m!Adam/batch_normalization_3/beta/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/m Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/conv2d/kernel/vAdam/conv2d/bias/v"Adam/batch_normalization_1/gamma/v!Adam/batch_normalization_1/beta/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/v"Adam/batch_normalization_2/gamma/v!Adam/batch_normalization_2/beta/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/v"Adam/batch_normalization_3/gamma/v!Adam/batch_normalization_3/beta/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*h
Tina
_2]*
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
GPU2*0J 8 **
f%R#
!__inference__traced_restore_32733â*

ú
,__inference_sequential_1_layer_call_fn_29883

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:


unknown_24:

unknown_25:

unknown_26:
identity¢StatefulPartitionedCallÝ
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_283832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ

ó
@__inference_dense_layer_call_and_return_conditional_losses_32113

inputs2
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddAddV2MatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddS
ReluReluBiasAdd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ<
À
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_29214

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity¢(stateful_uniform_full_int/RngReadAndSkip¢.stateless_random_uniform/StatelessRandomGetAlg¢5stateless_random_uniform/StatelessRandomGetKeyCounter
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2!
stateful_uniform_full_int/shape
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
stateful_uniform_full_int/Const½
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2 
stateful_uniform_full_int/Prod
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2"
 stateful_uniform_full_int/Cast/x¥
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 stateful_uniform_full_int/Cast_1
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2*
(stateful_uniform_full_int/RngReadAndSkip¨
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-stateful_uniform_full_int/strided_slice/stack¬
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_1¬
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_2
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2)
'stateful_uniform_full_int/strided_slice´
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02#
!stateful_uniform_full_int/Bitcast¬
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice_1/stack°
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_1°
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_2ü
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2+
)stateful_uniform_full_int/strided_slice_1º
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02%
#stateful_uniform_full_int/Bitcast_1
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform_full_int/alg®
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2
stateful_uniform_full_intb

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2

zeros_like
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:2
stack{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice
stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 2 
stateless_random_uniform/shape
stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2
stateless_random_uniform/min
stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌ?2
stateless_random_uniform/maxÈ
5stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::27
5stateless_random_uniform/StatelessRandomGetKeyCounterÉ
.stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlg6^stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 20
.stateless_random_uniform/StatelessRandomGetAlg÷
1stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2'stateless_random_uniform/shape:output:0;stateless_random_uniform/StatelessRandomGetKeyCounter:key:0?stateless_random_uniform/StatelessRandomGetKeyCounter:counter:04stateless_random_uniform/StatelessRandomGetAlg:alg:0*
_output_shapes
: 23
1stateless_random_uniform/StatelessRandomUniformV2²
stateless_random_uniform/subSub%stateless_random_uniform/max:output:0%stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2
stateless_random_uniform/subÂ
stateless_random_uniform/mulMul:stateless_random_uniform/StatelessRandomUniformV2:output:0 stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 2
stateless_random_uniform/mul§
stateless_random_uniformAddV2 stateless_random_uniform/mul:z:0%stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2
stateless_random_uniform
adjust_contrastAdjustContrastv2inputsstateless_random_uniform:z:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
adjust_contrast
adjust_contrast/IdentityIdentityadjust_contrast:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
adjust_contrast/Identity
IdentityIdentity!adjust_contrast/Identity:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityâ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip/^stateless_random_uniform/StatelessRandomGetAlg6^stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2`
.stateless_random_uniform/StatelessRandomGetAlg.stateless_random_uniform/StatelessRandomGetAlg2n
5stateless_random_uniform/StatelessRandomGetKeyCounter5stateless_random_uniform/StatelessRandomGetKeyCounter:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú

ó
B__inference_dense_1_layer_call_and_return_conditional_losses_32133

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddAddV2MatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd\
SigmoidSigmoidBiasAdd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð	

3__inference_batch_normalization_layer_call_fn_30974

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_289422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í[
Å
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_27698

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices»
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay¡
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷	
¢
5__inference_batch_normalization_2_layer_call_fn_31570

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
identity¢StatefulPartitionedCallÈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_286942
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ  : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
õ<
À
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_30698

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity¢(stateful_uniform_full_int/RngReadAndSkip¢.stateless_random_uniform/StatelessRandomGetAlg¢5stateless_random_uniform/StatelessRandomGetKeyCounter
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2!
stateful_uniform_full_int/shape
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
stateful_uniform_full_int/Const½
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2 
stateful_uniform_full_int/Prod
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2"
 stateful_uniform_full_int/Cast/x¥
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 stateful_uniform_full_int/Cast_1
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2*
(stateful_uniform_full_int/RngReadAndSkip¨
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-stateful_uniform_full_int/strided_slice/stack¬
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_1¬
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_2
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2)
'stateful_uniform_full_int/strided_slice´
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02#
!stateful_uniform_full_int/Bitcast¬
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice_1/stack°
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_1°
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_2ü
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2+
)stateful_uniform_full_int/strided_slice_1º
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02%
#stateful_uniform_full_int/Bitcast_1
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform_full_int/alg®
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2
stateful_uniform_full_intb

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2

zeros_like
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:2
stack{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice
stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 2 
stateless_random_uniform/shape
stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2
stateless_random_uniform/min
stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌ?2
stateless_random_uniform/maxÈ
5stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::27
5stateless_random_uniform/StatelessRandomGetKeyCounterÉ
.stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlg6^stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 20
.stateless_random_uniform/StatelessRandomGetAlg÷
1stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2'stateless_random_uniform/shape:output:0;stateless_random_uniform/StatelessRandomGetKeyCounter:key:0?stateless_random_uniform/StatelessRandomGetKeyCounter:counter:04stateless_random_uniform/StatelessRandomGetAlg:alg:0*
_output_shapes
: 23
1stateless_random_uniform/StatelessRandomUniformV2²
stateless_random_uniform/subSub%stateless_random_uniform/max:output:0%stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2
stateless_random_uniform/subÂ
stateless_random_uniform/mulMul:stateless_random_uniform/StatelessRandomUniformV2:output:0 stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 2
stateless_random_uniform/mul§
stateless_random_uniformAddV2 stateless_random_uniform/mul:z:0%stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2
stateless_random_uniform
adjust_contrastAdjustContrastv2inputsstateless_random_uniform:z:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
adjust_contrast
adjust_contrast/IdentityIdentityadjust_contrast:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
adjust_contrast/Identity
IdentityIdentity!adjust_contrast/Identity:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityâ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip/^stateless_random_uniform/StatelessRandomGetAlg6^stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2`
.stateless_random_uniform/StatelessRandomGetAlg.stateless_random_uniform/StatelessRandomGetAlg2n
5stateless_random_uniform/StatelessRandomGetKeyCounter5stateless_random_uniform/StatelessRandomGetKeyCounter:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«[
¼
N__inference_batch_normalization_layer_call_and_return_conditional_losses_31071

inputs-
maximum_readvariableop_resource:)
sub_readvariableop_resource:)
mul_readvariableop_resource:+
add_1_readvariableop_resource:7
)assignmovingavg_2_readvariableop_resource:7
)assignmovingavg_3_readvariableop_resource:%
assignnewvalue_resource:

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:2
moments/StopGradient¾
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indicesº
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay 
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decayª
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decayª
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:*
dtype02
ReadVariableOp¦
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò

%__inference_dense_layer_call_fn_32102

inputs
unknown:

	unknown_0:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_283592
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥
­
N__inference_batch_normalization_layer_call_and_return_conditional_losses_28157

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1x
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
d
H__inference_random_flip_2_layer_call_and_return_conditional_losses_30714

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö
­
N__inference_batch_normalization_layer_call_and_return_conditional_losses_30994

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø
K
/__inference_max_pooling2d_2_layer_call_fn_31809

inputs
identityî
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_278402
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
ò
#__inference_signature_wrapper_29822
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:


unknown_24:

unknown_25:

unknown_26:
identity¢StatefulPartitionedCall·
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_270072
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
	
Ô
5__inference_batch_normalization_3_layer_call_fn_31869

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall¦
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_283302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï


,__inference_sequential_1_layer_call_fn_29569
input_1
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:#
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@%

unknown_18:@

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	

unknown_26:	&

unknown_27:

unknown_28:	&

unknown_29:

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	

unknown_36:	

unknown_37:	

unknown_38:


unknown_39:

unknown_40:

unknown_41:
identity¢StatefulPartitionedCall
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
unknown_41*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
 #$()*+*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_293892
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesu
s:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¦
h
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_30657

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù
Ð
5__inference_batch_normalization_1_layer_call_fn_31253

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_282092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@@@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@
 
_user_specified_nameinputs
Ðc
´
G__inference_sequential_1_layer_call_and_return_conditional_losses_29753
input_1%
random_contrast_1_29649:	!
random_flip_2_29652:	%
random_rotation_1_29655:	'
batch_normalization_29658:'
batch_normalization_29660:'
batch_normalization_29662:'
batch_normalization_29664:'
batch_normalization_29666:'
batch_normalization_29668:'
batch_normalization_29670:&
conv2d_29673:@
conv2d_29675:@)
batch_normalization_1_29679:@)
batch_normalization_1_29681:@)
batch_normalization_1_29683:@)
batch_normalization_1_29685:@)
batch_normalization_1_29687:@)
batch_normalization_1_29689:@)
batch_normalization_1_29691:@)
conv2d_1_29694:@
conv2d_1_29696:	*
batch_normalization_2_29700:	*
batch_normalization_2_29702:	*
batch_normalization_2_29704:	*
batch_normalization_2_29706:	*
batch_normalization_2_29708:	*
batch_normalization_2_29710:	*
batch_normalization_2_29712:	*
conv2d_2_29715:
conv2d_2_29717:	*
conv2d_3_29720:
conv2d_3_29722:	*
batch_normalization_3_29726:	*
batch_normalization_3_29728:	*
batch_normalization_3_29730:	*
batch_normalization_3_29732:	*
batch_normalization_3_29734:	*
batch_normalization_3_29736:	*
batch_normalization_3_29738:	
dense_29742:

dense_29744:
dense_1_29747:
dense_1_29749:
identity¢+batch_normalization/StatefulPartitionedCall¢-batch_normalization_1/StatefulPartitionedCall¢-batch_normalization_2/StatefulPartitionedCall¢-batch_normalization_3/StatefulPartitionedCall¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢)random_contrast_1/StatefulPartitionedCall¢%random_flip_2/StatefulPartitionedCall¢)random_rotation_1/StatefulPartitionedCall®
)random_contrast_1/StatefulPartitionedCallStatefulPartitionedCallinput_1random_contrast_1_29649*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_292142+
)random_contrast_1/StatefulPartitionedCallÉ
%random_flip_2/StatefulPartitionedCallStatefulPartitionedCall2random_contrast_1/StatefulPartitionedCall:output:0random_flip_2_29652*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_291602'
%random_flip_2/StatefulPartitionedCallÕ
)random_rotation_1/StatefulPartitionedCallStatefulPartitionedCall.random_flip_2/StatefulPartitionedCall:output:0random_rotation_1_29655*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_290892+
)random_rotation_1/StatefulPartitionedCall
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_1/StatefulPartitionedCall:output:0batch_normalization_29658batch_normalization_29660batch_normalization_29662batch_normalization_29664batch_normalization_29666batch_normalization_29668batch_normalization_29670*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_289422-
+batch_normalization/StatefulPartitionedCallÂ
conv2d/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_29673conv2d_29675*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_281782 
conv2d/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_281882
max_pooling2d/PartitionedCall
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0batch_normalization_1_29679batch_normalization_1_29681batch_normalization_1_29683batch_normalization_1_29685batch_normalization_1_29687batch_normalization_1_29689batch_normalization_1_29691*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_288182/
-batch_normalization_1/StatefulPartitionedCallÍ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_1_29694conv2d_1_29696*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_282302"
 conv2d_1/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_282402!
max_pooling2d_1/PartitionedCall
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0batch_normalization_2_29700batch_normalization_2_29702batch_normalization_2_29704batch_normalization_2_29706batch_normalization_2_29708batch_normalization_2_29710batch_normalization_2_29712*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_286942/
-batch_normalization_2/StatefulPartitionedCallÍ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_2_29715conv2d_2_29717*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_282822"
 conv2d_2/StatefulPartitionedCallÀ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_29720conv2d_3_29722*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_282992"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_283092!
max_pooling2d_2/PartitionedCall
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0batch_normalization_3_29726batch_normalization_3_29728batch_normalization_3_29730batch_normalization_3_29732batch_normalization_3_29734batch_normalization_3_29736batch_normalization_3_29738*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_285602/
-batch_normalization_3/StatefulPartitionedCall
flatten/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_283462
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_29742dense_29744*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_283592
dense/StatefulPartitionedCall¯
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_29747dense_1_29749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_283762!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityØ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*^random_contrast_1/StatefulPartitionedCall&^random_flip_2/StatefulPartitionedCall*^random_rotation_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesu
s:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2V
)random_contrast_1/StatefulPartitionedCall)random_contrast_1/StatefulPartitionedCall2N
%random_flip_2/StatefulPartitionedCall%random_flip_2/StatefulPartitionedCall2V
)random_rotation_1/StatefulPartitionedCall)random_rotation_1/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
÷	
¢
5__inference_batch_normalization_3_layer_call_fn_31888

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
identity¢StatefulPartitionedCallÈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_285602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_31824

inputs
identity
MaxPoolMaxPoolinputs*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¸V
¿
G__inference_sequential_1_layer_call_and_return_conditional_losses_29646
input_1'
batch_normalization_29575:'
batch_normalization_29577:'
batch_normalization_29579:'
batch_normalization_29581:&
conv2d_29584:@
conv2d_29586:@)
batch_normalization_1_29590:@)
batch_normalization_1_29592:@)
batch_normalization_1_29594:@)
batch_normalization_1_29596:@)
conv2d_1_29599:@
conv2d_1_29601:	*
batch_normalization_2_29605:	*
batch_normalization_2_29607:	*
batch_normalization_2_29609:	*
batch_normalization_2_29611:	*
conv2d_2_29614:
conv2d_2_29616:	*
conv2d_3_29619:
conv2d_3_29621:	*
batch_normalization_3_29625:	*
batch_normalization_3_29627:	*
batch_normalization_3_29629:	*
batch_normalization_3_29631:	
dense_29635:

dense_29637:
dense_1_29640:
dense_1_29642:
identity¢+batch_normalization/StatefulPartitionedCall¢-batch_normalization_1/StatefulPartitionedCall¢-batch_normalization_2/StatefulPartitionedCall¢-batch_normalization_3/StatefulPartitionedCall¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallü
!random_contrast_1/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_281242#
!random_contrast_1/PartitionedCall
random_flip_2/PartitionedCallPartitionedCall*random_contrast_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_281302
random_flip_2/PartitionedCall
!random_rotation_1/PartitionedCallPartitionedCall&random_flip_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_281362#
!random_rotation_1/PartitionedCall³
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall*random_rotation_1/PartitionedCall:output:0batch_normalization_29575batch_normalization_29577batch_normalization_29579batch_normalization_29581*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_281572-
+batch_normalization/StatefulPartitionedCallÂ
conv2d/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_29584conv2d_29586*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_281782 
conv2d/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_281882
max_pooling2d/PartitionedCall»
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0batch_normalization_1_29590batch_normalization_1_29592batch_normalization_1_29594batch_normalization_1_29596*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_282092/
-batch_normalization_1/StatefulPartitionedCallÍ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_1_29599conv2d_1_29601*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_282302"
 conv2d_1/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_282402!
max_pooling2d_1/PartitionedCall¾
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0batch_normalization_2_29605batch_normalization_2_29607batch_normalization_2_29609batch_normalization_2_29611*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_282612/
-batch_normalization_2/StatefulPartitionedCallÍ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_2_29614conv2d_2_29616*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_282822"
 conv2d_2/StatefulPartitionedCallÀ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_29619conv2d_3_29621*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_282992"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_283092!
max_pooling2d_2/PartitionedCall¾
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0batch_normalization_3_29625batch_normalization_3_29627batch_normalization_3_29629batch_normalization_3_29631*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_283302/
-batch_normalization_3/StatefulPartitionedCall
flatten/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_283462
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_29635dense_29637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_283592
dense/StatefulPartitionedCall¯
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_29640dense_1_29642*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_283762!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityØ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¿

¢
5__inference_batch_normalization_2_layer_call_fn_31538

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_276982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ô
5__inference_batch_normalization_2_layer_call_fn_31551

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall¦
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_282612
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ  : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ÿZ
Å
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_31764

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:2
moments/StopGradient­
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices»
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay¡
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
batchnorm/add_1{

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ  : : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs

¯
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_28209

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
batchnorm/add_1v
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@@@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@
 
_user_specified_nameinputs
¦
h
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_30788

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
K
/__inference_max_pooling2d_1_layer_call_fn_31496

inputs
identityÔ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_282402
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
É	
Ô
5__inference_batch_normalization_2_layer_call_fn_31519

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall¸
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_275952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ

ó
@__inference_dense_layer_call_and_return_conditional_losses_28359

inputs2
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddAddV2MatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddS
ReluReluBiasAdd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
Î
3__inference_batch_normalization_layer_call_fn_30955

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_281572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦
h
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_28124

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_27276

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ
}
-__inference_random_flip_2_layer_call_fn_30710

inputs
unknown:	
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_291602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
K
/__inference_max_pooling2d_2_layer_call_fn_31814

inputs
identityÔ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_283092
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¿

¢
5__inference_batch_normalization_3_layer_call_fn_31856

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_279802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Íc
³
G__inference_sequential_1_layer_call_and_return_conditional_losses_29389

inputs%
random_contrast_1_29285:	!
random_flip_2_29288:	%
random_rotation_1_29291:	'
batch_normalization_29294:'
batch_normalization_29296:'
batch_normalization_29298:'
batch_normalization_29300:'
batch_normalization_29302:'
batch_normalization_29304:'
batch_normalization_29306:&
conv2d_29309:@
conv2d_29311:@)
batch_normalization_1_29315:@)
batch_normalization_1_29317:@)
batch_normalization_1_29319:@)
batch_normalization_1_29321:@)
batch_normalization_1_29323:@)
batch_normalization_1_29325:@)
batch_normalization_1_29327:@)
conv2d_1_29330:@
conv2d_1_29332:	*
batch_normalization_2_29336:	*
batch_normalization_2_29338:	*
batch_normalization_2_29340:	*
batch_normalization_2_29342:	*
batch_normalization_2_29344:	*
batch_normalization_2_29346:	*
batch_normalization_2_29348:	*
conv2d_2_29351:
conv2d_2_29353:	*
conv2d_3_29356:
conv2d_3_29358:	*
batch_normalization_3_29362:	*
batch_normalization_3_29364:	*
batch_normalization_3_29366:	*
batch_normalization_3_29368:	*
batch_normalization_3_29370:	*
batch_normalization_3_29372:	*
batch_normalization_3_29374:	
dense_29378:

dense_29380:
dense_1_29383:
dense_1_29385:
identity¢+batch_normalization/StatefulPartitionedCall¢-batch_normalization_1/StatefulPartitionedCall¢-batch_normalization_2/StatefulPartitionedCall¢-batch_normalization_3/StatefulPartitionedCall¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢)random_contrast_1/StatefulPartitionedCall¢%random_flip_2/StatefulPartitionedCall¢)random_rotation_1/StatefulPartitionedCall­
)random_contrast_1/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_contrast_1_29285*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_292142+
)random_contrast_1/StatefulPartitionedCallÉ
%random_flip_2/StatefulPartitionedCallStatefulPartitionedCall2random_contrast_1/StatefulPartitionedCall:output:0random_flip_2_29288*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_291602'
%random_flip_2/StatefulPartitionedCallÕ
)random_rotation_1/StatefulPartitionedCallStatefulPartitionedCall.random_flip_2/StatefulPartitionedCall:output:0random_rotation_1_29291*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_290892+
)random_rotation_1/StatefulPartitionedCall
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_1/StatefulPartitionedCall:output:0batch_normalization_29294batch_normalization_29296batch_normalization_29298batch_normalization_29300batch_normalization_29302batch_normalization_29304batch_normalization_29306*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_289422-
+batch_normalization/StatefulPartitionedCallÂ
conv2d/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_29309conv2d_29311*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_281782 
conv2d/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_281882
max_pooling2d/PartitionedCall
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0batch_normalization_1_29315batch_normalization_1_29317batch_normalization_1_29319batch_normalization_1_29321batch_normalization_1_29323batch_normalization_1_29325batch_normalization_1_29327*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_288182/
-batch_normalization_1/StatefulPartitionedCallÍ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_1_29330conv2d_1_29332*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_282302"
 conv2d_1/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_282402!
max_pooling2d_1/PartitionedCall
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0batch_normalization_2_29336batch_normalization_2_29338batch_normalization_2_29340batch_normalization_2_29342batch_normalization_2_29344batch_normalization_2_29346batch_normalization_2_29348*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_286942/
-batch_normalization_2/StatefulPartitionedCallÍ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_2_29351conv2d_2_29353*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_282822"
 conv2d_2/StatefulPartitionedCallÀ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_29356conv2d_3_29358*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_282992"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_283092!
max_pooling2d_2/PartitionedCall
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0batch_normalization_3_29362batch_normalization_3_29364batch_normalization_3_29366batch_normalization_3_29368batch_normalization_3_29370batch_normalization_3_29372batch_normalization_3_29374*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_285602/
-batch_normalization_3/StatefulPartitionedCall
flatten/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_283462
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_29378dense_29380*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_283592
dense/StatefulPartitionedCall¯
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_29383dense_1_29385*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_283762!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityØ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*^random_contrast_1/StatefulPartitionedCall&^random_flip_2/StatefulPartitionedCall*^random_rotation_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesu
s:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2V
)random_contrast_1/StatefulPartitionedCall)random_contrast_1/StatefulPartitionedCall2N
%random_flip_2/StatefulPartitionedCall%random_flip_2/StatefulPartitionedCall2V
)random_rotation_1/StatefulPartitionedCall)random_rotation_1/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


&__inference_conv2d_layer_call_fn_31177

inputs!
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_281782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í[
Å
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_31985

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices»
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay¡
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷
M
1__inference_random_contrast_1_layer_call_fn_30646

inputs
identity×
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_281242
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
 
(__inference_conv2d_3_layer_call_fn_31793

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_282992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs

¯
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_31389

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
batchnorm/add_1v
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@@@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@
 
_user_specified_nameinputs
î
ÿ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_28299

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddAddV2Conv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
î
ÿ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_31804

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddAddV2Conv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¿
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_31208

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ì
ú
A__inference_conv2d_layer_call_and_return_conditional_losses_28178

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddAddV2Conv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd]
ReluReluBiasAdd:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_31506

inputs
identity
MaxPoolMaxPoolinputs*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
ì	

5__inference_batch_normalization_1_layer_call_fn_31272

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
identity¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_288182
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ@@@: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@
 
_user_specified_nameinputs
ø
¯
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_31292

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
² 
Å
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_30910

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity¢stateful_uniform/RngReadAndSkipD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1^
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2b
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1~
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
stateful_uniform/shapeq
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿2
stateful_uniform/minq
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?2
stateful_uniform/maxz
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
stateful_uniform/Const
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2
stateful_uniform/Prodt
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/Cast/x
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
stateful_uniform/Cast_1Ù
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:2!
stateful_uniform/RngReadAndSkip
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$stateful_uniform/strided_slice/stack
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_1
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_2Î
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2 
stateful_uniform/strided_slice
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcast
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice_1/stack
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_1
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_2Æ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2"
 stateful_uniform/strided_slice_1
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcast_1 
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2/
-stateful_uniform/StatelessRandomUniformV2/alg¸
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)stateful_uniform/StatelessRandomUniformV2
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 2
stateful_uniform/sub¯
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
stateful_uniform/mul
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
stateful_uniforms
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
rotation_matrix/sub/y~
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/subu
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Cosw
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
rotation_matrix/sub_1/y
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_1
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/mulu
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Sinw
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
rotation_matrix/sub_2/y
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_2
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/mul_1
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/sub_3
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/sub_4{
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
rotation_matrix/truediv/yª
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/truedivw
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
rotation_matrix/sub_5/y
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_5y
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Sin_1w
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
rotation_matrix/sub_6/y
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_6
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/mul_2y
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Cos_1w
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
rotation_matrix/sub_7/y
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_7
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/mul_3
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/add
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/sub_8
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
rotation_matrix/truediv_1/y°
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/truediv_1r
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:2
rotation_matrix/Shape
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#rotation_matrix/strided_slice/stack
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%rotation_matrix/strided_slice/stack_1
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%rotation_matrix/strided_slice/stack_2Â
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rotation_matrix/strided_slicey
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Cos_2
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_1/stack£
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_1/stack_1£
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_1/stack_2÷
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_1y
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Sin_2
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_2/stack£
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_2/stack_1£
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_2/stack_2÷
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_2
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Neg
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_3/stack£
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_3/stack_1£
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_3/stack_2ù
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_3y
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Sin_3
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_4/stack£
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_4/stack_1£
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_4/stack_2÷
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_4y
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Cos_3
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_5/stack£
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_5/stack_1£
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_5/stack_2÷
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_5
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_6/stack£
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_6/stack_1£
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_6/stack_2û
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_6|
rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
rotation_matrix/zeros/mul/y¬
rotation_matrix/zeros/mulMul&rotation_matrix/strided_slice:output:0$rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/zeros/mul
rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
rotation_matrix/zeros/Less/y§
rotation_matrix/zeros/LessLessrotation_matrix/zeros/mul:z:0%rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/zeros/Less
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2 
rotation_matrix/zeros/packed/1Ã
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
rotation_matrix/zeros/packed
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rotation_matrix/zeros/Constµ
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/zeros|
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
rotation_matrix/concat/axis¨
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/concatX
transform/ShapeShapeinputs*
T0*
_output_shapes
:2
transform/Shape
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
transform/strided_slice/stack
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_1
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_2
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
transform/strided_sliceq
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
transform/fill_valueÉ
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2&
$transform/ImageProjectiveTransformV3
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityp
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î
ÿ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_28282

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddAddV2Conv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
þ

1__inference_random_rotation_1_layer_call_fn_30784

inputs
unknown:	
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_290892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö
­
N__inference_batch_normalization_layer_call_and_return_conditional_losses_27031

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á	
Ð
5__inference_batch_normalization_1_layer_call_fn_31221

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_273132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


(__inference_conv2d_1_layer_call_fn_31475

inputs"
unknown:@
	unknown_0:	
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_282302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@
 
_user_specified_nameinputs
®
³
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_32005

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1w
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_27840

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µV
¾
G__inference_sequential_1_layer_call_and_return_conditional_losses_28383

inputs'
batch_normalization_28158:'
batch_normalization_28160:'
batch_normalization_28162:'
batch_normalization_28164:&
conv2d_28179:@
conv2d_28181:@)
batch_normalization_1_28210:@)
batch_normalization_1_28212:@)
batch_normalization_1_28214:@)
batch_normalization_1_28216:@)
conv2d_1_28231:@
conv2d_1_28233:	*
batch_normalization_2_28262:	*
batch_normalization_2_28264:	*
batch_normalization_2_28266:	*
batch_normalization_2_28268:	*
conv2d_2_28283:
conv2d_2_28285:	*
conv2d_3_28300:
conv2d_3_28302:	*
batch_normalization_3_28331:	*
batch_normalization_3_28333:	*
batch_normalization_3_28335:	*
batch_normalization_3_28337:	
dense_28360:

dense_28362:
dense_1_28377:
dense_1_28379:
identity¢+batch_normalization/StatefulPartitionedCall¢-batch_normalization_1/StatefulPartitionedCall¢-batch_normalization_2/StatefulPartitionedCall¢-batch_normalization_3/StatefulPartitionedCall¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallû
!random_contrast_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_281242#
!random_contrast_1/PartitionedCall
random_flip_2/PartitionedCallPartitionedCall*random_contrast_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_281302
random_flip_2/PartitionedCall
!random_rotation_1/PartitionedCallPartitionedCall&random_flip_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_281362#
!random_rotation_1/PartitionedCall³
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall*random_rotation_1/PartitionedCall:output:0batch_normalization_28158batch_normalization_28160batch_normalization_28162batch_normalization_28164*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_281572-
+batch_normalization/StatefulPartitionedCallÂ
conv2d/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_28179conv2d_28181*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_281782 
conv2d/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_281882
max_pooling2d/PartitionedCall»
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0batch_normalization_1_28210batch_normalization_1_28212batch_normalization_1_28214batch_normalization_1_28216*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_282092/
-batch_normalization_1/StatefulPartitionedCallÍ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_1_28231conv2d_1_28233*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_282302"
 conv2d_1/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_282402!
max_pooling2d_1/PartitionedCall¾
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0batch_normalization_2_28262batch_normalization_2_28264batch_normalization_2_28266batch_normalization_2_28268*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_282612/
-batch_normalization_2/StatefulPartitionedCallÍ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_2_28283conv2d_2_28285*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_282822"
 conv2d_2/StatefulPartitionedCallÀ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_28300conv2d_3_28302*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_282992"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_283092!
max_pooling2d_2/PartitionedCall¾
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0batch_normalization_3_28331batch_normalization_3_28333batch_normalization_3_28335batch_normalization_3_28337*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_283302/
-batch_normalization_3/StatefulPartitionedCall
flatten/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_283462
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_28360dense_28362*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_283592
dense/StatefulPartitionedCall¯
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_28377dense_1_28379*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_283762!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityØ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®
³
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_28261

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
batchnorm/add_1w
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ  : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¶µ
ô
G__inference_sequential_1_layer_call_and_return_conditional_losses_30089

inputsC
5batch_normalization_batchnorm_readvariableop_resource:G
9batch_normalization_batchnorm_mul_readvariableop_resource:E
7batch_normalization_batchnorm_readvariableop_1_resource:E
7batch_normalization_batchnorm_readvariableop_2_resource:?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@E
7batch_normalization_1_batchnorm_readvariableop_resource:@I
;batch_normalization_1_batchnorm_mul_readvariableop_resource:@G
9batch_normalization_1_batchnorm_readvariableop_1_resource:@G
9batch_normalization_1_batchnorm_readvariableop_2_resource:@B
'conv2d_1_conv2d_readvariableop_resource:@7
(conv2d_1_biasadd_readvariableop_resource:	F
7batch_normalization_2_batchnorm_readvariableop_resource:	J
;batch_normalization_2_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_2_batchnorm_readvariableop_1_resource:	H
9batch_normalization_2_batchnorm_readvariableop_2_resource:	C
'conv2d_2_conv2d_readvariableop_resource:7
(conv2d_2_biasadd_readvariableop_resource:	C
'conv2d_3_conv2d_readvariableop_resource:7
(conv2d_3_biasadd_readvariableop_resource:	F
7batch_normalization_3_batchnorm_readvariableop_resource:	J
;batch_normalization_3_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_3_batchnorm_readvariableop_1_resource:	H
9batch_normalization_3_batchnorm_readvariableop_2_resource:	8
$dense_matmul_readvariableop_resource:
3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity¢,batch_normalization/batchnorm/ReadVariableOp¢.batch_normalization/batchnorm/ReadVariableOp_1¢.batch_normalization/batchnorm/ReadVariableOp_2¢0batch_normalization/batchnorm/mul/ReadVariableOp¢.batch_normalization_1/batchnorm/ReadVariableOp¢0batch_normalization_1/batchnorm/ReadVariableOp_1¢0batch_normalization_1/batchnorm/ReadVariableOp_2¢2batch_normalization_1/batchnorm/mul/ReadVariableOp¢.batch_normalization_2/batchnorm/ReadVariableOp¢0batch_normalization_2/batchnorm/ReadVariableOp_1¢0batch_normalization_2/batchnorm/ReadVariableOp_2¢2batch_normalization_2/batchnorm/mul/ReadVariableOp¢.batch_normalization_3/batchnorm/ReadVariableOp¢0batch_normalization_3/batchnorm/ReadVariableOp_1¢0batch_normalization_3/batchnorm/ReadVariableOp_2¢2batch_normalization_3/batchnorm/mul/ReadVariableOp¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢conv2d_3/BiasAdd/ReadVariableOp¢conv2d_3/Conv2D/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOpÎ
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02.
,batch_normalization/batchnorm/ReadVariableOp
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#batch_normalization/batchnorm/add/yØ
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:2#
!batch_normalization/batchnorm/add
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:2%
#batch_normalization/batchnorm/RsqrtÚ
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOpÕ
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!batch_normalization/batchnorm/mul¼
#batch_normalization/batchnorm/mul_1Mulinputs%batch_normalization/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#batch_normalization/batchnorm/mul_1Ô
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_1Õ
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:2%
#batch_normalization/batchnorm/mul_2Ô
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_2Ó
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2#
!batch_normalization/batchnorm/subß
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#batch_normalization/batchnorm/add_1ª
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOpÛ
conv2d/Conv2DConv2D'batch_normalization/batchnorm/add_1:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv2d/Conv2D¡
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOp¤
conv2d/BiasAddAddV2conv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d/BiasAddr
conv2d/ReluReluconv2d/BiasAdd:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d/ReluÁ
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolÔ
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.batch_normalization_1/batchnorm/ReadVariableOp
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_1/batchnorm/add/yà
#batch_normalization_1/batchnorm/addAddV26batch_normalization_1/batchnorm/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_1/batchnorm/add¥
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_1/batchnorm/Rsqrtà
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2batch_normalization_1/batchnorm/mul/ReadVariableOpÝ
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2%
#batch_normalization_1/batchnorm/mulØ
%batch_normalization_1/batchnorm/mul_1Mulmax_pooling2d/MaxPool:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2'
%batch_normalization_1/batchnorm/mul_1Ú
0batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype022
0batch_normalization_1/batchnorm/ReadVariableOp_1Ý
%batch_normalization_1/batchnorm/mul_2Mul8batch_normalization_1/batchnorm/ReadVariableOp_1:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_1/batchnorm/mul_2Ú
0batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype022
0batch_normalization_1/batchnorm/ReadVariableOp_2Û
#batch_normalization_1/batchnorm/subSub8batch_normalization_1/batchnorm/ReadVariableOp_2:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_1/batchnorm/subå
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2'
%batch_normalization_1/batchnorm/add_1±
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02 
conv2d_1/Conv2D/ReadVariableOpâ
conv2d_1/Conv2DConv2D)batch_normalization_1/batchnorm/add_1:z:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
conv2d_1/Conv2D¨
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp«
conv2d_1/BiasAddAddV2conv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
conv2d_1/BiasAddw
conv2d_1/ReluReluconv2d_1/BiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
conv2d_1/ReluÈ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolÕ
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_2/batchnorm/ReadVariableOp
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_2/batchnorm/add/yá
#batch_normalization_2/batchnorm/addAddV26batch_normalization_2/batchnorm/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/add¦
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_2/batchnorm/Rsqrtá
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_2/batchnorm/mul/ReadVariableOpÞ
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/mulÛ
%batch_normalization_2/batchnorm/mul_1Mul max_pooling2d_1/MaxPool:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2'
%batch_normalization_2/batchnorm/mul_1Û
0batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_1Þ
%batch_normalization_2/batchnorm/mul_2Mul8batch_normalization_2/batchnorm/ReadVariableOp_1:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_2/batchnorm/mul_2Û
0batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_2Ü
#batch_normalization_2/batchnorm/subSub8batch_normalization_2/batchnorm/ReadVariableOp_2:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/subæ
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2'
%batch_normalization_2/batchnorm/add_1²
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_2/Conv2D/ReadVariableOpâ
conv2d_2/Conv2DConv2D)batch_normalization_2/batchnorm/add_1:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
conv2d_2/Conv2D¨
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp«
conv2d_2/BiasAddAddV2conv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_2/BiasAddw
conv2d_2/ReluReluconv2d_2/BiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_2/Relu²
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_3/Conv2D/ReadVariableOpÔ
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
conv2d_3/Conv2D¨
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp«
conv2d_3/BiasAddAddV2conv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_3/BiasAddw
conv2d_3/ReluReluconv2d_3/BiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_3/ReluÈ
max_pooling2d_2/MaxPoolMaxPoolconv2d_3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolÕ
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_3/batchnorm/ReadVariableOp
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_3/batchnorm/add/yá
#batch_normalization_3/batchnorm/addAddV26batch_normalization_3/batchnorm/ReadVariableOp:value:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_3/batchnorm/add¦
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_3/batchnorm/Rsqrtá
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_3/batchnorm/mul/ReadVariableOpÞ
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_3/batchnorm/mulÛ
%batch_normalization_3/batchnorm/mul_1Mul max_pooling2d_2/MaxPool:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%batch_normalization_3/batchnorm/mul_1Û
0batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0batch_normalization_3/batchnorm/ReadVariableOp_1Þ
%batch_normalization_3/batchnorm/mul_2Mul8batch_normalization_3/batchnorm/ReadVariableOp_1:value:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_3/batchnorm/mul_2Û
0batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0batch_normalization_3/batchnorm/ReadVariableOp_2Ü
#batch_normalization_3/batchnorm/subSub8batch_normalization_3/batchnorm/ReadVariableOp_2:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_3/batchnorm/subæ
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%batch_normalization_3/batchnorm/add_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten/Const¤
flatten/ReshapeReshape)batch_normalization_3/batchnorm/add_1:z:0flatten/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten/Reshape¡
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddAddV2dense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/BiasAdde

dense/ReluReludense/BiasAdd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

dense/Relu¥
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/MatMul¤
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp
dense_1/BiasAddAddV2dense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAddt
dense_1/SigmoidSigmoiddense_1/BiasAdd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Sigmoidn
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityü	
NoOpNoOp-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp1^batch_normalization_1/batchnorm/ReadVariableOp_11^batch_normalization_1/batchnorm/ReadVariableOp_23^batch_normalization_1/batchnorm/mul/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp1^batch_normalization_2/batchnorm/ReadVariableOp_11^batch_normalization_2/batchnorm/ReadVariableOp_23^batch_normalization_2/batchnorm/mul/ReadVariableOp/^batch_normalization_3/batchnorm/ReadVariableOp1^batch_normalization_3/batchnorm/ReadVariableOp_11^batch_normalization_3/batchnorm/ReadVariableOp_23^batch_normalization_3/batchnorm/mul/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2d
0batch_normalization_1/batchnorm/ReadVariableOp_10batch_normalization_1/batchnorm/ReadVariableOp_12d
0batch_normalization_1/batchnorm/ReadVariableOp_20batch_normalization_1/batchnorm/ReadVariableOp_22h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2d
0batch_normalization_2/batchnorm/ReadVariableOp_10batch_normalization_2/batchnorm/ReadVariableOp_12d
0batch_normalization_2/batchnorm/ReadVariableOp_20batch_normalization_2/batchnorm/ReadVariableOp_22h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2d
0batch_normalization_3/batchnorm/ReadVariableOp_10batch_normalization_3/batchnorm/ReadVariableOp_12d
0batch_normalization_3/batchnorm/ReadVariableOp_20batch_normalization_3/batchnorm/ReadVariableOp_22h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®
³
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_28330

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1w
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
C
'__inference_flatten_layer_call_fn_32087

inputs
identityÅ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_283462
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è
^
B__inference_flatten_layer_call_and_return_conditional_losses_32093

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°


3__inference_batch_normalization_layer_call_fn_30942

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_271342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

³
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_31908

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
d
H__inference_random_flip_2_layer_call_and_return_conditional_losses_28130

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÊZ
¼
N__inference_batch_normalization_layer_call_and_return_conditional_losses_31168

inputs-
maximum_readvariableop_resource:)
sub_readvariableop_resource:)
mul_readvariableop_resource:+
add_1_readvariableop_resource:7
)assignmovingavg_2_readvariableop_resource:7
)assignmovingavg_3_readvariableop_resource:%
assignnewvalue_resource:

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:2
moments/StopGradient®
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indicesº
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay 
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decayª
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decayª
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:*
dtype02
ReadVariableOp¦
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1|

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿZ
Å
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_32082

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:2
moments/StopGradient­
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices»
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay¡
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1{

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è
^
B__inference_flatten_layer_call_and_return_conditional_losses_28346

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_28188

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ì


,__inference_sequential_1_layer_call_fn_29974

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:#
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@%

unknown_18:@

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	

unknown_26:	&

unknown_27:

unknown_28:	&

unknown_29:

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	

unknown_36:	

unknown_37:	

unknown_38:


unknown_39:

unknown_40:

unknown_41:
identity¢StatefulPartitionedCall
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
unknown_41*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
 #$()*+*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_293892
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesu
s:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ

1__inference_random_contrast_1_layer_call_fn_30653

inputs
unknown:	
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_292142
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í[
Å
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_31667

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices»
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay¡
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð

'__inference_dense_1_layer_call_fn_32122

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_283762
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

û
,__inference_sequential_1_layer_call_fn_28442
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:


unknown_24:

unknown_25:

unknown_26:
identity¢StatefulPartitionedCallÞ
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_283832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1

³
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_31590

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

³
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_27877

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½	
Î
3__inference_batch_normalization_layer_call_fn_30923

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_270312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ýß
¦
 __inference__wrapped_model_27007
input_1P
Bsequential_1_batch_normalization_batchnorm_readvariableop_resource:T
Fsequential_1_batch_normalization_batchnorm_mul_readvariableop_resource:R
Dsequential_1_batch_normalization_batchnorm_readvariableop_1_resource:R
Dsequential_1_batch_normalization_batchnorm_readvariableop_2_resource:L
2sequential_1_conv2d_conv2d_readvariableop_resource:@A
3sequential_1_conv2d_biasadd_readvariableop_resource:@R
Dsequential_1_batch_normalization_1_batchnorm_readvariableop_resource:@V
Hsequential_1_batch_normalization_1_batchnorm_mul_readvariableop_resource:@T
Fsequential_1_batch_normalization_1_batchnorm_readvariableop_1_resource:@T
Fsequential_1_batch_normalization_1_batchnorm_readvariableop_2_resource:@O
4sequential_1_conv2d_1_conv2d_readvariableop_resource:@D
5sequential_1_conv2d_1_biasadd_readvariableop_resource:	S
Dsequential_1_batch_normalization_2_batchnorm_readvariableop_resource:	W
Hsequential_1_batch_normalization_2_batchnorm_mul_readvariableop_resource:	U
Fsequential_1_batch_normalization_2_batchnorm_readvariableop_1_resource:	U
Fsequential_1_batch_normalization_2_batchnorm_readvariableop_2_resource:	P
4sequential_1_conv2d_2_conv2d_readvariableop_resource:D
5sequential_1_conv2d_2_biasadd_readvariableop_resource:	P
4sequential_1_conv2d_3_conv2d_readvariableop_resource:D
5sequential_1_conv2d_3_biasadd_readvariableop_resource:	S
Dsequential_1_batch_normalization_3_batchnorm_readvariableop_resource:	W
Hsequential_1_batch_normalization_3_batchnorm_mul_readvariableop_resource:	U
Fsequential_1_batch_normalization_3_batchnorm_readvariableop_1_resource:	U
Fsequential_1_batch_normalization_3_batchnorm_readvariableop_2_resource:	E
1sequential_1_dense_matmul_readvariableop_resource:
@
2sequential_1_dense_biasadd_readvariableop_resource:E
3sequential_1_dense_1_matmul_readvariableop_resource:B
4sequential_1_dense_1_biasadd_readvariableop_resource:
identity¢9sequential_1/batch_normalization/batchnorm/ReadVariableOp¢;sequential_1/batch_normalization/batchnorm/ReadVariableOp_1¢;sequential_1/batch_normalization/batchnorm/ReadVariableOp_2¢=sequential_1/batch_normalization/batchnorm/mul/ReadVariableOp¢;sequential_1/batch_normalization_1/batchnorm/ReadVariableOp¢=sequential_1/batch_normalization_1/batchnorm/ReadVariableOp_1¢=sequential_1/batch_normalization_1/batchnorm/ReadVariableOp_2¢?sequential_1/batch_normalization_1/batchnorm/mul/ReadVariableOp¢;sequential_1/batch_normalization_2/batchnorm/ReadVariableOp¢=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_1¢=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_2¢?sequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOp¢;sequential_1/batch_normalization_3/batchnorm/ReadVariableOp¢=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_1¢=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_2¢?sequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOp¢*sequential_1/conv2d/BiasAdd/ReadVariableOp¢)sequential_1/conv2d/Conv2D/ReadVariableOp¢,sequential_1/conv2d_1/BiasAdd/ReadVariableOp¢+sequential_1/conv2d_1/Conv2D/ReadVariableOp¢,sequential_1/conv2d_2/BiasAdd/ReadVariableOp¢+sequential_1/conv2d_2/Conv2D/ReadVariableOp¢,sequential_1/conv2d_3/BiasAdd/ReadVariableOp¢+sequential_1/conv2d_3/Conv2D/ReadVariableOp¢)sequential_1/dense/BiasAdd/ReadVariableOp¢(sequential_1/dense/MatMul/ReadVariableOp¢+sequential_1/dense_1/BiasAdd/ReadVariableOp¢*sequential_1/dense_1/MatMul/ReadVariableOpõ
9sequential_1/batch_normalization/batchnorm/ReadVariableOpReadVariableOpBsequential_1_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02;
9sequential_1/batch_normalization/batchnorm/ReadVariableOp©
0sequential_1/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:22
0sequential_1/batch_normalization/batchnorm/add/y
.sequential_1/batch_normalization/batchnorm/addAddV2Asequential_1/batch_normalization/batchnorm/ReadVariableOp:value:09sequential_1/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:20
.sequential_1/batch_normalization/batchnorm/addÆ
0sequential_1/batch_normalization/batchnorm/RsqrtRsqrt2sequential_1/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:22
0sequential_1/batch_normalization/batchnorm/Rsqrt
=sequential_1/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpFsequential_1_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02?
=sequential_1/batch_normalization/batchnorm/mul/ReadVariableOp
.sequential_1/batch_normalization/batchnorm/mulMul4sequential_1/batch_normalization/batchnorm/Rsqrt:y:0Esequential_1/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:20
.sequential_1/batch_normalization/batchnorm/mulä
0sequential_1/batch_normalization/batchnorm/mul_1Mulinput_12sequential_1/batch_normalization/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_1/batch_normalization/batchnorm/mul_1û
;sequential_1/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpDsequential_1_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02=
;sequential_1/batch_normalization/batchnorm/ReadVariableOp_1
0sequential_1/batch_normalization/batchnorm/mul_2MulCsequential_1/batch_normalization/batchnorm/ReadVariableOp_1:value:02sequential_1/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:22
0sequential_1/batch_normalization/batchnorm/mul_2û
;sequential_1/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpDsequential_1_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02=
;sequential_1/batch_normalization/batchnorm/ReadVariableOp_2
.sequential_1/batch_normalization/batchnorm/subSubCsequential_1/batch_normalization/batchnorm/ReadVariableOp_2:value:04sequential_1/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:20
.sequential_1/batch_normalization/batchnorm/sub
0sequential_1/batch_normalization/batchnorm/add_1AddV24sequential_1/batch_normalization/batchnorm/mul_1:z:02sequential_1/batch_normalization/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_1/batch_normalization/batchnorm/add_1Ñ
)sequential_1/conv2d/Conv2D/ReadVariableOpReadVariableOp2sequential_1_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02+
)sequential_1/conv2d/Conv2D/ReadVariableOp
sequential_1/conv2d/Conv2DConv2D4sequential_1/batch_normalization/batchnorm/add_1:z:01sequential_1/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
sequential_1/conv2d/Conv2DÈ
*sequential_1/conv2d/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential_1/conv2d/BiasAdd/ReadVariableOpØ
sequential_1/conv2d/BiasAddAddV2#sequential_1/conv2d/Conv2D:output:02sequential_1/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_1/conv2d/BiasAdd
sequential_1/conv2d/ReluRelusequential_1/conv2d/BiasAdd:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_1/conv2d/Reluè
"sequential_1/max_pooling2d/MaxPoolMaxPool&sequential_1/conv2d/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*
ksize
*
paddingVALID*
strides
2$
"sequential_1/max_pooling2d/MaxPoolû
;sequential_1/batch_normalization_1/batchnorm/ReadVariableOpReadVariableOpDsequential_1_batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02=
;sequential_1/batch_normalization_1/batchnorm/ReadVariableOp­
2sequential_1/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:24
2sequential_1/batch_normalization_1/batchnorm/add/y
0sequential_1/batch_normalization_1/batchnorm/addAddV2Csequential_1/batch_normalization_1/batchnorm/ReadVariableOp:value:0;sequential_1/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@22
0sequential_1/batch_normalization_1/batchnorm/addÌ
2sequential_1/batch_normalization_1/batchnorm/RsqrtRsqrt4sequential_1/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:@24
2sequential_1/batch_normalization_1/batchnorm/Rsqrt
?sequential_1/batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_1_batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02A
?sequential_1/batch_normalization_1/batchnorm/mul/ReadVariableOp
0sequential_1/batch_normalization_1/batchnorm/mulMul6sequential_1/batch_normalization_1/batchnorm/Rsqrt:y:0Gsequential_1/batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@22
0sequential_1/batch_normalization_1/batchnorm/mul
2sequential_1/batch_normalization_1/batchnorm/mul_1Mul+sequential_1/max_pooling2d/MaxPool:output:04sequential_1/batch_normalization_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@24
2sequential_1/batch_normalization_1/batchnorm/mul_1
=sequential_1/batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_1_batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02?
=sequential_1/batch_normalization_1/batchnorm/ReadVariableOp_1
2sequential_1/batch_normalization_1/batchnorm/mul_2MulEsequential_1/batch_normalization_1/batchnorm/ReadVariableOp_1:value:04sequential_1/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@24
2sequential_1/batch_normalization_1/batchnorm/mul_2
=sequential_1/batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_1_batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02?
=sequential_1/batch_normalization_1/batchnorm/ReadVariableOp_2
0sequential_1/batch_normalization_1/batchnorm/subSubEsequential_1/batch_normalization_1/batchnorm/ReadVariableOp_2:value:06sequential_1/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@22
0sequential_1/batch_normalization_1/batchnorm/sub
2sequential_1/batch_normalization_1/batchnorm/add_1AddV26sequential_1/batch_normalization_1/batchnorm/mul_1:z:04sequential_1/batch_normalization_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@24
2sequential_1/batch_normalization_1/batchnorm/add_1Ø
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOp
sequential_1/conv2d_1/Conv2DConv2D6sequential_1/batch_normalization_1/batchnorm/add_1:z:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
sequential_1/conv2d_1/Conv2DÏ
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpß
sequential_1/conv2d_1/BiasAddAddV2%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
sequential_1/conv2d_1/BiasAdd
sequential_1/conv2d_1/ReluRelu!sequential_1/conv2d_1/BiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
sequential_1/conv2d_1/Reluï
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_1/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_1/MaxPoolü
;sequential_1/batch_normalization_2/batchnorm/ReadVariableOpReadVariableOpDsequential_1_batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02=
;sequential_1/batch_normalization_2/batchnorm/ReadVariableOp­
2sequential_1/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:24
2sequential_1/batch_normalization_2/batchnorm/add/y
0sequential_1/batch_normalization_2/batchnorm/addAddV2Csequential_1/batch_normalization_2/batchnorm/ReadVariableOp:value:0;sequential_1/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:22
0sequential_1/batch_normalization_2/batchnorm/addÍ
2sequential_1/batch_normalization_2/batchnorm/RsqrtRsqrt4sequential_1/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:24
2sequential_1/batch_normalization_2/batchnorm/Rsqrt
?sequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_1_batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02A
?sequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOp
0sequential_1/batch_normalization_2/batchnorm/mulMul6sequential_1/batch_normalization_2/batchnorm/Rsqrt:y:0Gsequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:22
0sequential_1/batch_normalization_2/batchnorm/mul
2sequential_1/batch_normalization_2/batchnorm/mul_1Mul-sequential_1/max_pooling2d_1/MaxPool:output:04sequential_1/batch_normalization_2/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  24
2sequential_1/batch_normalization_2/batchnorm/mul_1
=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_1_batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02?
=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_1
2sequential_1/batch_normalization_2/batchnorm/mul_2MulEsequential_1/batch_normalization_2/batchnorm/ReadVariableOp_1:value:04sequential_1/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:24
2sequential_1/batch_normalization_2/batchnorm/mul_2
=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_1_batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02?
=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_2
0sequential_1/batch_normalization_2/batchnorm/subSubEsequential_1/batch_normalization_2/batchnorm/ReadVariableOp_2:value:06sequential_1/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:22
0sequential_1/batch_normalization_2/batchnorm/sub
2sequential_1/batch_normalization_2/batchnorm/add_1AddV26sequential_1/batch_normalization_2/batchnorm/mul_1:z:04sequential_1/batch_normalization_2/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  24
2sequential_1/batch_normalization_2/batchnorm/add_1Ù
+sequential_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02-
+sequential_1/conv2d_2/Conv2D/ReadVariableOp
sequential_1/conv2d_2/Conv2DConv2D6sequential_1/batch_normalization_2/batchnorm/add_1:z:03sequential_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
sequential_1/conv2d_2/Conv2DÏ
,sequential_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,sequential_1/conv2d_2/BiasAdd/ReadVariableOpß
sequential_1/conv2d_2/BiasAddAddV2%sequential_1/conv2d_2/Conv2D:output:04sequential_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
sequential_1/conv2d_2/BiasAdd
sequential_1/conv2d_2/ReluRelu!sequential_1/conv2d_2/BiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
sequential_1/conv2d_2/ReluÙ
+sequential_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02-
+sequential_1/conv2d_3/Conv2D/ReadVariableOp
sequential_1/conv2d_3/Conv2DConv2D(sequential_1/conv2d_2/Relu:activations:03sequential_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
sequential_1/conv2d_3/Conv2DÏ
,sequential_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,sequential_1/conv2d_3/BiasAdd/ReadVariableOpß
sequential_1/conv2d_3/BiasAddAddV2%sequential_1/conv2d_3/Conv2D:output:04sequential_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
sequential_1/conv2d_3/BiasAdd
sequential_1/conv2d_3/ReluRelu!sequential_1/conv2d_3/BiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
sequential_1/conv2d_3/Reluï
$sequential_1/max_pooling2d_2/MaxPoolMaxPool(sequential_1/conv2d_3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_2/MaxPoolü
;sequential_1/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpDsequential_1_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02=
;sequential_1/batch_normalization_3/batchnorm/ReadVariableOp­
2sequential_1/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:24
2sequential_1/batch_normalization_3/batchnorm/add/y
0sequential_1/batch_normalization_3/batchnorm/addAddV2Csequential_1/batch_normalization_3/batchnorm/ReadVariableOp:value:0;sequential_1/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:22
0sequential_1/batch_normalization_3/batchnorm/addÍ
2sequential_1/batch_normalization_3/batchnorm/RsqrtRsqrt4sequential_1/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:24
2sequential_1/batch_normalization_3/batchnorm/Rsqrt
?sequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_1_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02A
?sequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOp
0sequential_1/batch_normalization_3/batchnorm/mulMul6sequential_1/batch_normalization_3/batchnorm/Rsqrt:y:0Gsequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:22
0sequential_1/batch_normalization_3/batchnorm/mul
2sequential_1/batch_normalization_3/batchnorm/mul_1Mul-sequential_1/max_pooling2d_2/MaxPool:output:04sequential_1/batch_normalization_3/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_1/batch_normalization_3/batchnorm/mul_1
=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_1_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02?
=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_1
2sequential_1/batch_normalization_3/batchnorm/mul_2MulEsequential_1/batch_normalization_3/batchnorm/ReadVariableOp_1:value:04sequential_1/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:24
2sequential_1/batch_normalization_3/batchnorm/mul_2
=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_1_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02?
=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_2
0sequential_1/batch_normalization_3/batchnorm/subSubEsequential_1/batch_normalization_3/batchnorm/ReadVariableOp_2:value:06sequential_1/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:22
0sequential_1/batch_normalization_3/batchnorm/sub
2sequential_1/batch_normalization_3/batchnorm/add_1AddV26sequential_1/batch_normalization_3/batchnorm/mul_1:z:04sequential_1/batch_normalization_3/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_1/batch_normalization_3/batchnorm/add_1
sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
sequential_1/flatten/ConstØ
sequential_1/flatten/ReshapeReshape6sequential_1/batch_normalization_3/batchnorm/add_1:z:0#sequential_1/flatten/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/flatten/ReshapeÈ
(sequential_1/dense/MatMul/ReadVariableOpReadVariableOp1sequential_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(sequential_1/dense/MatMul/ReadVariableOpË
sequential_1/dense/MatMulMatMul%sequential_1/flatten/Reshape:output:00sequential_1/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dense/MatMulÅ
)sequential_1/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential_1/dense/BiasAdd/ReadVariableOpË
sequential_1/dense/BiasAddAddV2#sequential_1/dense/MatMul:product:01sequential_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dense/BiasAdd
sequential_1/dense/ReluRelusequential_1/dense/BiasAdd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dense/ReluÌ
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOpÑ
sequential_1/dense_1/MatMulMatMul%sequential_1/dense/Relu:activations:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dense_1/MatMulË
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOpÓ
sequential_1/dense_1/BiasAddAddV2%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dense_1/BiasAdd
sequential_1/dense_1/SigmoidSigmoid sequential_1/dense_1/BiasAdd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dense_1/Sigmoid{
IdentityIdentity sequential_1/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityè
NoOpNoOp:^sequential_1/batch_normalization/batchnorm/ReadVariableOp<^sequential_1/batch_normalization/batchnorm/ReadVariableOp_1<^sequential_1/batch_normalization/batchnorm/ReadVariableOp_2>^sequential_1/batch_normalization/batchnorm/mul/ReadVariableOp<^sequential_1/batch_normalization_1/batchnorm/ReadVariableOp>^sequential_1/batch_normalization_1/batchnorm/ReadVariableOp_1>^sequential_1/batch_normalization_1/batchnorm/ReadVariableOp_2@^sequential_1/batch_normalization_1/batchnorm/mul/ReadVariableOp<^sequential_1/batch_normalization_2/batchnorm/ReadVariableOp>^sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_1>^sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_2@^sequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOp<^sequential_1/batch_normalization_3/batchnorm/ReadVariableOp>^sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_1>^sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_2@^sequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOp+^sequential_1/conv2d/BiasAdd/ReadVariableOp*^sequential_1/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_1/conv2d_2/BiasAdd/ReadVariableOp,^sequential_1/conv2d_2/Conv2D/ReadVariableOp-^sequential_1/conv2d_3/BiasAdd/ReadVariableOp,^sequential_1/conv2d_3/Conv2D/ReadVariableOp*^sequential_1/dense/BiasAdd/ReadVariableOp)^sequential_1/dense/MatMul/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2v
9sequential_1/batch_normalization/batchnorm/ReadVariableOp9sequential_1/batch_normalization/batchnorm/ReadVariableOp2z
;sequential_1/batch_normalization/batchnorm/ReadVariableOp_1;sequential_1/batch_normalization/batchnorm/ReadVariableOp_12z
;sequential_1/batch_normalization/batchnorm/ReadVariableOp_2;sequential_1/batch_normalization/batchnorm/ReadVariableOp_22~
=sequential_1/batch_normalization/batchnorm/mul/ReadVariableOp=sequential_1/batch_normalization/batchnorm/mul/ReadVariableOp2z
;sequential_1/batch_normalization_1/batchnorm/ReadVariableOp;sequential_1/batch_normalization_1/batchnorm/ReadVariableOp2~
=sequential_1/batch_normalization_1/batchnorm/ReadVariableOp_1=sequential_1/batch_normalization_1/batchnorm/ReadVariableOp_12~
=sequential_1/batch_normalization_1/batchnorm/ReadVariableOp_2=sequential_1/batch_normalization_1/batchnorm/ReadVariableOp_22
?sequential_1/batch_normalization_1/batchnorm/mul/ReadVariableOp?sequential_1/batch_normalization_1/batchnorm/mul/ReadVariableOp2z
;sequential_1/batch_normalization_2/batchnorm/ReadVariableOp;sequential_1/batch_normalization_2/batchnorm/ReadVariableOp2~
=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_1=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_12~
=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_2=sequential_1/batch_normalization_2/batchnorm/ReadVariableOp_22
?sequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOp?sequential_1/batch_normalization_2/batchnorm/mul/ReadVariableOp2z
;sequential_1/batch_normalization_3/batchnorm/ReadVariableOp;sequential_1/batch_normalization_3/batchnorm/ReadVariableOp2~
=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_1=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_12~
=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_2=sequential_1/batch_normalization_3/batchnorm/ReadVariableOp_22
?sequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOp?sequential_1/batch_normalization_3/batchnorm/mul/ReadVariableOp2X
*sequential_1/conv2d/BiasAdd/ReadVariableOp*sequential_1/conv2d/BiasAdd/ReadVariableOp2V
)sequential_1/conv2d/Conv2D/ReadVariableOp)sequential_1/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_2/BiasAdd/ReadVariableOp,sequential_1/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_2/Conv2D/ReadVariableOp+sequential_1/conv2d_2/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_3/BiasAdd/ReadVariableOp,sequential_1/conv2d_3/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_3/Conv2D/ReadVariableOp+sequential_1/conv2d_3/Conv2D/ReadVariableOp2V
)sequential_1/dense/BiasAdd/ReadVariableOp)sequential_1/dense/BiasAdd/ReadVariableOp2T
(sequential_1/dense/MatMul/ReadVariableOp(sequential_1/dense/MatMul/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
ê
þ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_31486

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddAddV2Conv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@
 
_user_specified_nameinputs
¦
h
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_28136

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
² 
Å
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_29089

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity¢stateful_uniform/RngReadAndSkipD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1^
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2b
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Cast_1~
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
stateful_uniform/shapeq
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿2
stateful_uniform/minq
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?2
stateful_uniform/maxz
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
stateful_uniform/Const
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2
stateful_uniform/Prodt
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform/Cast/x
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
stateful_uniform/Cast_1Ù
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:2!
stateful_uniform/RngReadAndSkip
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$stateful_uniform/strided_slice/stack
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_1
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice/stack_2Î
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2 
stateful_uniform/strided_slice
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcast
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&stateful_uniform/strided_slice_1/stack
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_1
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(stateful_uniform/strided_slice_1/stack_2Æ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2"
 stateful_uniform/strided_slice_1
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02
stateful_uniform/Bitcast_1 
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2/
-stateful_uniform/StatelessRandomUniformV2/alg¸
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)stateful_uniform/StatelessRandomUniformV2
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 2
stateful_uniform/sub¯
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
stateful_uniform/mul
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
stateful_uniforms
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
rotation_matrix/sub/y~
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/subu
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Cosw
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
rotation_matrix/sub_1/y
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_1
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/mulu
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Sinw
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
rotation_matrix/sub_2/y
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_2
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/mul_1
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/sub_3
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/sub_4{
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
rotation_matrix/truediv/yª
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/truedivw
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
rotation_matrix/sub_5/y
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_5y
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Sin_1w
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
rotation_matrix/sub_6/y
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_6
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/mul_2y
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Cos_1w
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
rotation_matrix/sub_7/y
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/sub_7
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/mul_3
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/add
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/sub_8
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
rotation_matrix/truediv_1/y°
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/truediv_1r
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:2
rotation_matrix/Shape
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#rotation_matrix/strided_slice/stack
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%rotation_matrix/strided_slice/stack_1
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%rotation_matrix/strided_slice/stack_2Â
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rotation_matrix/strided_slicey
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Cos_2
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_1/stack£
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_1/stack_1£
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_1/stack_2÷
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_1y
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Sin_2
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_2/stack£
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_2/stack_1£
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_2/stack_2÷
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_2
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Neg
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_3/stack£
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_3/stack_1£
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_3/stack_2ù
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_3y
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Sin_3
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_4/stack£
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_4/stack_1£
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_4/stack_2÷
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_4y
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/Cos_3
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_5/stack£
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_5/stack_1£
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_5/stack_2÷
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_5
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%rotation_matrix/strided_slice_6/stack£
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'rotation_matrix/strided_slice_6/stack_1£
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'rotation_matrix/strided_slice_6/stack_2û
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2!
rotation_matrix/strided_slice_6|
rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
rotation_matrix/zeros/mul/y¬
rotation_matrix/zeros/mulMul&rotation_matrix/strided_slice:output:0$rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/zeros/mul
rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
rotation_matrix/zeros/Less/y§
rotation_matrix/zeros/LessLessrotation_matrix/zeros/mul:z:0%rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
rotation_matrix/zeros/Less
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2 
rotation_matrix/zeros/packed/1Ã
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
rotation_matrix/zeros/packed
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rotation_matrix/zeros/Constµ
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/zeros|
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
rotation_matrix/concat/axis¨
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rotation_matrix/concatX
transform/ShapeShapeinputs*
T0*
_output_shapes
:2
transform/Shape
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
transform/strided_slice/stack
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_1
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
transform/strided_slice/stack_2
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
transform/strided_sliceq
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
transform/fill_valueÉ
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2&
$transform/ImageProjectiveTransformV3
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityp
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø
¯
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_27313

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
´


5__inference_batch_normalization_1_layer_call_fn_31240

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_274162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
âf
þ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_30772

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity¢(stateful_uniform_full_int/RngReadAndSkip¢Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg¢Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2!
stateful_uniform_full_int/shape
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
stateful_uniform_full_int/Const½
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2 
stateful_uniform_full_int/Prod
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2"
 stateful_uniform_full_int/Cast/x¥
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 stateful_uniform_full_int/Cast_1
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2*
(stateful_uniform_full_int/RngReadAndSkip¨
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-stateful_uniform_full_int/strided_slice/stack¬
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_1¬
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_2
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2)
'stateful_uniform_full_int/strided_slice´
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02#
!stateful_uniform_full_int/Bitcast¬
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice_1/stack°
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_1°
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_2ü
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2+
)stateful_uniform_full_int/strided_slice_1º
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02%
#stateful_uniform_full_int/Bitcast_1
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform_full_int/alg®
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2
stateful_uniform_full_intb

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2

zeros_like
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:2
stack{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
strided_sliceÕ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3stateless_random_flip_left_right/control_dependency¼
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2(
&stateless_random_flip_left_right/Shape¶
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4stateless_random_flip_left_right/strided_slice/stackº
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_1º
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_2¨
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.stateless_random_flip_left_right/strided_sliceñ
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2A
?stateless_random_flip_left_right/stateless_random_uniform/shapeÃ
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2?
=stateless_random_flip_left_right/stateless_random_uniform/minÃ
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2?
=stateless_random_flip_left_right/stateless_random_uniform/max
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::2X
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter¬
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2Q
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgÊ
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ustateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2¶
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2?
=stateless_random_flip_left_right/stateless_random_uniform/subÓ
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2?
=stateless_random_flip_left_right/stateless_random_uniform/mul¸
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9stateless_random_flip_left_right/stateless_random_uniform¦
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/1¦
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/2¦
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/3
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.stateless_random_flip_left_right/Reshape/shape
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(stateless_random_flip_left_right/ReshapeÆ
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&stateless_random_flip_left_right/Round¬
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:21
/stateless_random_flip_left_right/ReverseV2/axis
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*stateless_random_flip_left_right/ReverseV2ð
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$stateless_random_flip_left_right/mul
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&stateless_random_flip_left_right/sub/xê
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$stateless_random_flip_left_right/subû
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&stateless_random_flip_left_right/mul_1ç
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$stateless_random_flip_left_right/add
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¤
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkipP^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2¢
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgOstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2°
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterVstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ
¢5
G__inference_sequential_1_layer_call_and_return_conditional_losses_30641

inputsQ
Crandom_contrast_1_stateful_uniform_full_int_rngreadandskip_resource:	M
?random_flip_2_stateful_uniform_full_int_rngreadandskip_resource:	H
:random_rotation_1_stateful_uniform_rngreadandskip_resource:	A
3batch_normalization_maximum_readvariableop_resource:=
/batch_normalization_sub_readvariableop_resource:=
/batch_normalization_mul_readvariableop_resource:?
1batch_normalization_add_1_readvariableop_resource:K
=batch_normalization_assignmovingavg_2_readvariableop_resource:K
=batch_normalization_assignmovingavg_3_readvariableop_resource:9
+batch_normalization_assignnewvalue_resource:?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@C
5batch_normalization_1_maximum_readvariableop_resource:@?
1batch_normalization_1_sub_readvariableop_resource:@?
1batch_normalization_1_mul_readvariableop_resource:@A
3batch_normalization_1_add_1_readvariableop_resource:@M
?batch_normalization_1_assignmovingavg_2_readvariableop_resource:@M
?batch_normalization_1_assignmovingavg_3_readvariableop_resource:@;
-batch_normalization_1_assignnewvalue_resource:@B
'conv2d_1_conv2d_readvariableop_resource:@7
(conv2d_1_biasadd_readvariableop_resource:	D
5batch_normalization_2_maximum_readvariableop_resource:	@
1batch_normalization_2_sub_readvariableop_resource:	@
1batch_normalization_2_mul_readvariableop_resource:	B
3batch_normalization_2_add_1_readvariableop_resource:	N
?batch_normalization_2_assignmovingavg_2_readvariableop_resource:	N
?batch_normalization_2_assignmovingavg_3_readvariableop_resource:	<
-batch_normalization_2_assignnewvalue_resource:	C
'conv2d_2_conv2d_readvariableop_resource:7
(conv2d_2_biasadd_readvariableop_resource:	C
'conv2d_3_conv2d_readvariableop_resource:7
(conv2d_3_biasadd_readvariableop_resource:	D
5batch_normalization_3_maximum_readvariableop_resource:	@
1batch_normalization_3_sub_readvariableop_resource:	@
1batch_normalization_3_mul_readvariableop_resource:	B
3batch_normalization_3_add_1_readvariableop_resource:	N
?batch_normalization_3_assignmovingavg_2_readvariableop_resource:	N
?batch_normalization_3_assignmovingavg_3_readvariableop_resource:	<
-batch_normalization_3_assignnewvalue_resource:	8
$dense_matmul_readvariableop_resource:
3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity¢#batch_normalization/AssignMovingAvg¢2batch_normalization/AssignMovingAvg/ReadVariableOp¢%batch_normalization/AssignMovingAvg_1¢4batch_normalization/AssignMovingAvg_1/ReadVariableOp¢%batch_normalization/AssignMovingAvg_2¢4batch_normalization/AssignMovingAvg_2/ReadVariableOp¢%batch_normalization/AssignMovingAvg_3¢4batch_normalization/AssignMovingAvg_3/ReadVariableOp¢"batch_normalization/AssignNewValue¢*batch_normalization/Maximum/ReadVariableOp¢"batch_normalization/ReadVariableOp¢(batch_normalization/add_1/ReadVariableOp¢&batch_normalization/mul/ReadVariableOp¢(batch_normalization/mul_1/ReadVariableOp¢(batch_normalization/mul_2/ReadVariableOp¢&batch_normalization/sub/ReadVariableOp¢%batch_normalization_1/AssignMovingAvg¢4batch_normalization_1/AssignMovingAvg/ReadVariableOp¢'batch_normalization_1/AssignMovingAvg_1¢6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp¢'batch_normalization_1/AssignMovingAvg_2¢6batch_normalization_1/AssignMovingAvg_2/ReadVariableOp¢'batch_normalization_1/AssignMovingAvg_3¢6batch_normalization_1/AssignMovingAvg_3/ReadVariableOp¢$batch_normalization_1/AssignNewValue¢,batch_normalization_1/Maximum/ReadVariableOp¢$batch_normalization_1/ReadVariableOp¢*batch_normalization_1/add_1/ReadVariableOp¢(batch_normalization_1/mul/ReadVariableOp¢*batch_normalization_1/mul_1/ReadVariableOp¢*batch_normalization_1/mul_2/ReadVariableOp¢(batch_normalization_1/sub/ReadVariableOp¢%batch_normalization_2/AssignMovingAvg¢4batch_normalization_2/AssignMovingAvg/ReadVariableOp¢'batch_normalization_2/AssignMovingAvg_1¢6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp¢'batch_normalization_2/AssignMovingAvg_2¢6batch_normalization_2/AssignMovingAvg_2/ReadVariableOp¢'batch_normalization_2/AssignMovingAvg_3¢6batch_normalization_2/AssignMovingAvg_3/ReadVariableOp¢$batch_normalization_2/AssignNewValue¢,batch_normalization_2/Maximum/ReadVariableOp¢$batch_normalization_2/ReadVariableOp¢*batch_normalization_2/add_1/ReadVariableOp¢(batch_normalization_2/mul/ReadVariableOp¢*batch_normalization_2/mul_1/ReadVariableOp¢*batch_normalization_2/mul_2/ReadVariableOp¢(batch_normalization_2/sub/ReadVariableOp¢%batch_normalization_3/AssignMovingAvg¢4batch_normalization_3/AssignMovingAvg/ReadVariableOp¢'batch_normalization_3/AssignMovingAvg_1¢6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp¢'batch_normalization_3/AssignMovingAvg_2¢6batch_normalization_3/AssignMovingAvg_2/ReadVariableOp¢'batch_normalization_3/AssignMovingAvg_3¢6batch_normalization_3/AssignMovingAvg_3/ReadVariableOp¢$batch_normalization_3/AssignNewValue¢,batch_normalization_3/Maximum/ReadVariableOp¢$batch_normalization_3/ReadVariableOp¢*batch_normalization_3/add_1/ReadVariableOp¢(batch_normalization_3/mul/ReadVariableOp¢*batch_normalization_3/mul_1/ReadVariableOp¢*batch_normalization_3/mul_2/ReadVariableOp¢(batch_normalization_3/sub/ReadVariableOp¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢conv2d_3/BiasAdd/ReadVariableOp¢conv2d_3/Conv2D/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢:random_contrast_1/stateful_uniform_full_int/RngReadAndSkip¢@random_contrast_1/stateless_random_uniform/StatelessRandomGetAlg¢Grandom_contrast_1/stateless_random_uniform/StatelessRandomGetKeyCounter¢6random_flip_2/stateful_uniform_full_int/RngReadAndSkip¢]random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg¢drandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter¢1random_rotation_1/stateful_uniform/RngReadAndSkip°
1random_contrast_1/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:23
1random_contrast_1/stateful_uniform_full_int/shape°
1random_contrast_1/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 23
1random_contrast_1/stateful_uniform_full_int/Const
0random_contrast_1/stateful_uniform_full_int/ProdProd:random_contrast_1/stateful_uniform_full_int/shape:output:0:random_contrast_1/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 22
0random_contrast_1/stateful_uniform_full_int/Prodª
2random_contrast_1/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :24
2random_contrast_1/stateful_uniform_full_int/Cast/xÛ
2random_contrast_1/stateful_uniform_full_int/Cast_1Cast9random_contrast_1/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 24
2random_contrast_1/stateful_uniform_full_int/Cast_1à
:random_contrast_1/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipCrandom_contrast_1_stateful_uniform_full_int_rngreadandskip_resource;random_contrast_1/stateful_uniform_full_int/Cast/x:output:06random_contrast_1/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2<
:random_contrast_1/stateful_uniform_full_int/RngReadAndSkipÌ
?random_contrast_1/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?random_contrast_1/stateful_uniform_full_int/strided_slice/stackÐ
Arandom_contrast_1/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Arandom_contrast_1/stateful_uniform_full_int/strided_slice/stack_1Ð
Arandom_contrast_1/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Arandom_contrast_1/stateful_uniform_full_int/strided_slice/stack_2ð
9random_contrast_1/stateful_uniform_full_int/strided_sliceStridedSliceBrandom_contrast_1/stateful_uniform_full_int/RngReadAndSkip:value:0Hrandom_contrast_1/stateful_uniform_full_int/strided_slice/stack:output:0Jrandom_contrast_1/stateful_uniform_full_int/strided_slice/stack_1:output:0Jrandom_contrast_1/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2;
9random_contrast_1/stateful_uniform_full_int/strided_sliceê
3random_contrast_1/stateful_uniform_full_int/BitcastBitcastBrandom_contrast_1/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type025
3random_contrast_1/stateful_uniform_full_int/BitcastÐ
Arandom_contrast_1/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2C
Arandom_contrast_1/stateful_uniform_full_int/strided_slice_1/stackÔ
Crandom_contrast_1/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Crandom_contrast_1/stateful_uniform_full_int/strided_slice_1/stack_1Ô
Crandom_contrast_1/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Crandom_contrast_1/stateful_uniform_full_int/strided_slice_1/stack_2è
;random_contrast_1/stateful_uniform_full_int/strided_slice_1StridedSliceBrandom_contrast_1/stateful_uniform_full_int/RngReadAndSkip:value:0Jrandom_contrast_1/stateful_uniform_full_int/strided_slice_1/stack:output:0Lrandom_contrast_1/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Lrandom_contrast_1/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2=
;random_contrast_1/stateful_uniform_full_int/strided_slice_1ð
5random_contrast_1/stateful_uniform_full_int/Bitcast_1BitcastDrandom_contrast_1/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type027
5random_contrast_1/stateful_uniform_full_int/Bitcast_1¤
/random_contrast_1/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :21
/random_contrast_1/stateful_uniform_full_int/alg
+random_contrast_1/stateful_uniform_full_intStatelessRandomUniformFullIntV2:random_contrast_1/stateful_uniform_full_int/shape:output:0>random_contrast_1/stateful_uniform_full_int/Bitcast_1:output:0<random_contrast_1/stateful_uniform_full_int/Bitcast:output:08random_contrast_1/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2-
+random_contrast_1/stateful_uniform_full_int
random_contrast_1/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2
random_contrast_1/zeros_likeÉ
random_contrast_1/stackPack4random_contrast_1/stateful_uniform_full_int:output:0%random_contrast_1/zeros_like:output:0*
N*
T0	*
_output_shapes

:2
random_contrast_1/stack
%random_contrast_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%random_contrast_1/strided_slice/stack£
'random_contrast_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'random_contrast_1/strided_slice/stack_1£
'random_contrast_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'random_contrast_1/strided_slice/stack_2ô
random_contrast_1/strided_sliceStridedSlice random_contrast_1/stack:output:0.random_contrast_1/strided_slice/stack:output:00random_contrast_1/strided_slice/stack_1:output:00random_contrast_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2!
random_contrast_1/strided_slice§
0random_contrast_1/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 22
0random_contrast_1/stateless_random_uniform/shape¥
.random_contrast_1/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?20
.random_contrast_1/stateless_random_uniform/min¥
.random_contrast_1/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌ?20
.random_contrast_1/stateless_random_uniform/maxþ
Grandom_contrast_1/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter(random_contrast_1/strided_slice:output:0* 
_output_shapes
::2I
Grandom_contrast_1/stateless_random_uniform/StatelessRandomGetKeyCounterÿ
@random_contrast_1/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgH^random_contrast_1/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2B
@random_contrast_1/stateless_random_uniform/StatelessRandomGetAlgã
Crandom_contrast_1/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV29random_contrast_1/stateless_random_uniform/shape:output:0Mrandom_contrast_1/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Qrandom_contrast_1/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Frandom_contrast_1/stateless_random_uniform/StatelessRandomGetAlg:alg:0*
_output_shapes
: 2E
Crandom_contrast_1/stateless_random_uniform/StatelessRandomUniformV2ú
.random_contrast_1/stateless_random_uniform/subSub7random_contrast_1/stateless_random_uniform/max:output:07random_contrast_1/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 20
.random_contrast_1/stateless_random_uniform/sub
.random_contrast_1/stateless_random_uniform/mulMulLrandom_contrast_1/stateless_random_uniform/StatelessRandomUniformV2:output:02random_contrast_1/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 20
.random_contrast_1/stateless_random_uniform/mulï
*random_contrast_1/stateless_random_uniformAddV22random_contrast_1/stateless_random_uniform/mul:z:07random_contrast_1/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2,
*random_contrast_1/stateless_random_uniformÅ
!random_contrast_1/adjust_contrastAdjustContrastv2inputs.random_contrast_1/stateless_random_uniform:z:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!random_contrast_1/adjust_contrastÌ
*random_contrast_1/adjust_contrast/IdentityIdentity*random_contrast_1/adjust_contrast:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*random_contrast_1/adjust_contrast/Identity¨
-random_flip_2/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2/
-random_flip_2/stateful_uniform_full_int/shape¨
-random_flip_2/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_flip_2/stateful_uniform_full_int/Constõ
,random_flip_2/stateful_uniform_full_int/ProdProd6random_flip_2/stateful_uniform_full_int/shape:output:06random_flip_2/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2.
,random_flip_2/stateful_uniform_full_int/Prod¢
.random_flip_2/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :20
.random_flip_2/stateful_uniform_full_int/Cast/xÏ
.random_flip_2/stateful_uniform_full_int/Cast_1Cast5random_flip_2/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 20
.random_flip_2/stateful_uniform_full_int/Cast_1Ì
6random_flip_2/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip?random_flip_2_stateful_uniform_full_int_rngreadandskip_resource7random_flip_2/stateful_uniform_full_int/Cast/x:output:02random_flip_2/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:28
6random_flip_2/stateful_uniform_full_int/RngReadAndSkipÄ
;random_flip_2/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_flip_2/stateful_uniform_full_int/strided_slice/stackÈ
=random_flip_2/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip_2/stateful_uniform_full_int/strided_slice/stack_1È
=random_flip_2/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip_2/stateful_uniform_full_int/strided_slice/stack_2Ø
5random_flip_2/stateful_uniform_full_int/strided_sliceStridedSlice>random_flip_2/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip_2/stateful_uniform_full_int/strided_slice/stack:output:0Frandom_flip_2/stateful_uniform_full_int/strided_slice/stack_1:output:0Frandom_flip_2/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask27
5random_flip_2/stateful_uniform_full_int/strided_sliceÞ
/random_flip_2/stateful_uniform_full_int/BitcastBitcast>random_flip_2/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type021
/random_flip_2/stateful_uniform_full_int/BitcastÈ
=random_flip_2/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip_2/stateful_uniform_full_int/strided_slice_1/stackÌ
?random_flip_2/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?random_flip_2/stateful_uniform_full_int/strided_slice_1/stack_1Ì
?random_flip_2/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?random_flip_2/stateful_uniform_full_int/strided_slice_1/stack_2Ð
7random_flip_2/stateful_uniform_full_int/strided_slice_1StridedSlice>random_flip_2/stateful_uniform_full_int/RngReadAndSkip:value:0Frandom_flip_2/stateful_uniform_full_int/strided_slice_1/stack:output:0Hrandom_flip_2/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Hrandom_flip_2/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:29
7random_flip_2/stateful_uniform_full_int/strided_slice_1ä
1random_flip_2/stateful_uniform_full_int/Bitcast_1Bitcast@random_flip_2/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type023
1random_flip_2/stateful_uniform_full_int/Bitcast_1
+random_flip_2/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_flip_2/stateful_uniform_full_int/alg
'random_flip_2/stateful_uniform_full_intStatelessRandomUniformFullIntV26random_flip_2/stateful_uniform_full_int/shape:output:0:random_flip_2/stateful_uniform_full_int/Bitcast_1:output:08random_flip_2/stateful_uniform_full_int/Bitcast:output:04random_flip_2/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2)
'random_flip_2/stateful_uniform_full_int~
random_flip_2/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2
random_flip_2/zeros_like¹
random_flip_2/stackPack0random_flip_2/stateful_uniform_full_int:output:0!random_flip_2/zeros_like:output:0*
N*
T0	*
_output_shapes

:2
random_flip_2/stack
!random_flip_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!random_flip_2/strided_slice/stack
#random_flip_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#random_flip_2/strided_slice/stack_1
#random_flip_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#random_flip_2/strided_slice/stack_2Ü
random_flip_2/strided_sliceStridedSlicerandom_flip_2/stack:output:0*random_flip_2/strided_slice/stack:output:0,random_flip_2/strided_slice/stack_1:output:0,random_flip_2/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
random_flip_2/strided_sliceÂ
Arandom_flip_2/stateless_random_flip_left_right/control_dependencyIdentity3random_contrast_1/adjust_contrast/Identity:output:0*
T0*=
_class3
1/loc:@random_contrast_1/adjust_contrast/Identity*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Arandom_flip_2/stateless_random_flip_left_right/control_dependencyæ
4random_flip_2/stateless_random_flip_left_right/ShapeShapeJrandom_flip_2/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:26
4random_flip_2/stateless_random_flip_left_right/ShapeÒ
Brandom_flip_2/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Brandom_flip_2/stateless_random_flip_left_right/strided_slice/stackÖ
Drandom_flip_2/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Drandom_flip_2/stateless_random_flip_left_right/strided_slice/stack_1Ö
Drandom_flip_2/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Drandom_flip_2/stateless_random_flip_left_right/strided_slice/stack_2ü
<random_flip_2/stateless_random_flip_left_right/strided_sliceStridedSlice=random_flip_2/stateless_random_flip_left_right/Shape:output:0Krandom_flip_2/stateless_random_flip_left_right/strided_slice/stack:output:0Mrandom_flip_2/stateless_random_flip_left_right/strided_slice/stack_1:output:0Mrandom_flip_2/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<random_flip_2/stateless_random_flip_left_right/strided_slice
Mrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/shapePackErandom_flip_2/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2O
Mrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/shapeß
Krandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2M
Krandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/minß
Krandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2M
Krandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/max÷
drandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip_2/strided_slice:output:0A^random_contrast_1/stateless_random_uniform/StatelessRandomGetAlg* 
_output_shapes
::2f
drandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterÖ
]random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlge^random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2_
]random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg
`random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Vrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0jrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0nrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0crandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2b
`random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2î
Krandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/subSubTrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Trandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2M
Krandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/sub
Krandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/mulMulirandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Orandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2M
Krandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/mulð
Grandom_flip_2/stateless_random_flip_left_right/stateless_random_uniformAddV2Orandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Trandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2I
Grandom_flip_2/stateless_random_flip_left_right/stateless_random_uniformÂ
>random_flip_2/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2@
>random_flip_2/stateless_random_flip_left_right/Reshape/shape/1Â
>random_flip_2/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2@
>random_flip_2/stateless_random_flip_left_right/Reshape/shape/2Â
>random_flip_2/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2@
>random_flip_2/stateless_random_flip_left_right/Reshape/shape/3Ô
<random_flip_2/stateless_random_flip_left_right/Reshape/shapePackErandom_flip_2/stateless_random_flip_left_right/strided_slice:output:0Grandom_flip_2/stateless_random_flip_left_right/Reshape/shape/1:output:0Grandom_flip_2/stateless_random_flip_left_right/Reshape/shape/2:output:0Grandom_flip_2/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2>
<random_flip_2/stateless_random_flip_left_right/Reshape/shapeÉ
6random_flip_2/stateless_random_flip_left_right/ReshapeReshapeKrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform:z:0Erandom_flip_2/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6random_flip_2/stateless_random_flip_left_right/Reshapeð
4random_flip_2/stateless_random_flip_left_right/RoundRound?random_flip_2/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4random_flip_2/stateless_random_flip_left_right/RoundÈ
=random_flip_2/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2?
=random_flip_2/stateless_random_flip_left_right/ReverseV2/axisÑ
8random_flip_2/stateless_random_flip_left_right/ReverseV2	ReverseV2Jrandom_flip_2/stateless_random_flip_left_right/control_dependency:output:0Frandom_flip_2/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8random_flip_2/stateless_random_flip_left_right/ReverseV2¨
2random_flip_2/stateless_random_flip_left_right/mulMul8random_flip_2/stateless_random_flip_left_right/Round:y:0Arandom_flip_2/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2random_flip_2/stateless_random_flip_left_right/mul±
4random_flip_2/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?26
4random_flip_2/stateless_random_flip_left_right/sub/x¢
2random_flip_2/stateless_random_flip_left_right/subSub=random_flip_2/stateless_random_flip_left_right/sub/x:output:08random_flip_2/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2random_flip_2/stateless_random_flip_left_right/sub³
4random_flip_2/stateless_random_flip_left_right/mul_1Mul6random_flip_2/stateless_random_flip_left_right/sub:z:0Jrandom_flip_2/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4random_flip_2/stateless_random_flip_left_right/mul_1
2random_flip_2/stateless_random_flip_left_right/addAddV26random_flip_2/stateless_random_flip_left_right/mul:z:08random_flip_2/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2random_flip_2/stateless_random_flip_left_right/add
random_rotation_1/ShapeShape6random_flip_2/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_rotation_1/Shape
%random_rotation_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_1/strided_slice/stack
'random_rotation_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_1
'random_rotation_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_1/strided_slice/stack_2Î
random_rotation_1/strided_sliceStridedSlice random_rotation_1/Shape:output:0.random_rotation_1/strided_slice/stack:output:00random_rotation_1/strided_slice/stack_1:output:00random_rotation_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_1/strided_slice¥
'random_rotation_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ2)
'random_rotation_1/strided_slice_1/stack©
)random_rotation_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ2+
)random_rotation_1/strided_slice_1/stack_1 
)random_rotation_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_1/stack_2Ø
!random_rotation_1/strided_slice_1StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_1/stack:output:02random_rotation_1/strided_slice_1/stack_1:output:02random_rotation_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_1
random_rotation_1/CastCast*random_rotation_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast¥
'random_rotation_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ2)
'random_rotation_1/strided_slice_2/stack©
)random_rotation_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2+
)random_rotation_1/strided_slice_2/stack_1 
)random_rotation_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_1/strided_slice_2/stack_2Ø
!random_rotation_1/strided_slice_2StridedSlice random_rotation_1/Shape:output:00random_rotation_1/strided_slice_2/stack:output:02random_rotation_1/strided_slice_2/stack_1:output:02random_rotation_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_1/strided_slice_2
random_rotation_1/Cast_1Cast*random_rotation_1/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_1/Cast_1´
(random_rotation_1/stateful_uniform/shapePack(random_rotation_1/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_1/stateful_uniform/shape
&random_rotation_1/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿2(
&random_rotation_1/stateful_uniform/min
&random_rotation_1/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?2(
&random_rotation_1/stateful_uniform/max
(random_rotation_1/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_rotation_1/stateful_uniform/Constá
'random_rotation_1/stateful_uniform/ProdProd1random_rotation_1/stateful_uniform/shape:output:01random_rotation_1/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/stateful_uniform/Prod
)random_rotation_1/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_rotation_1/stateful_uniform/Cast/xÀ
)random_rotation_1/stateful_uniform/Cast_1Cast0random_rotation_1/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2+
)random_rotation_1/stateful_uniform/Cast_1³
1random_rotation_1/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_1_stateful_uniform_rngreadandskip_resource2random_rotation_1/stateful_uniform/Cast/x:output:0-random_rotation_1/stateful_uniform/Cast_1:y:0*
_output_shapes
:23
1random_rotation_1/stateful_uniform/RngReadAndSkipº
6random_rotation_1/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_1/stateful_uniform/strided_slice/stack¾
8random_rotation_1/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_1/stateful_uniform/strided_slice/stack_1¾
8random_rotation_1/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_1/stateful_uniform/strided_slice/stack_2º
0random_rotation_1/stateful_uniform/strided_sliceStridedSlice9random_rotation_1/stateful_uniform/RngReadAndSkip:value:0?random_rotation_1/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_1/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_1/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask22
0random_rotation_1/stateful_uniform/strided_sliceÏ
*random_rotation_1/stateful_uniform/BitcastBitcast9random_rotation_1/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation_1/stateful_uniform/Bitcast¾
8random_rotation_1/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_1/stateful_uniform/strided_slice_1/stackÂ
:random_rotation_1/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_1/stateful_uniform/strided_slice_1/stack_1Â
:random_rotation_1/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_1/stateful_uniform/strided_slice_1/stack_2²
2random_rotation_1/stateful_uniform/strided_slice_1StridedSlice9random_rotation_1/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_1/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_1/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_1/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:24
2random_rotation_1/stateful_uniform/strided_slice_1Õ
,random_rotation_1/stateful_uniform/Bitcast_1Bitcast;random_rotation_1/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02.
,random_rotation_1/stateful_uniform/Bitcast_1Ä
?random_rotation_1/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2A
?random_rotation_1/stateful_uniform/StatelessRandomUniformV2/alg¤
;random_rotation_1/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_1/stateful_uniform/shape:output:05random_rotation_1/stateful_uniform/Bitcast_1:output:03random_rotation_1/stateful_uniform/Bitcast:output:0Hrandom_rotation_1/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;random_rotation_1/stateful_uniform/StatelessRandomUniformV2Ú
&random_rotation_1/stateful_uniform/subSub/random_rotation_1/stateful_uniform/max:output:0/random_rotation_1/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_1/stateful_uniform/sub÷
&random_rotation_1/stateful_uniform/mulMulDrandom_rotation_1/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_1/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_1/stateful_uniform/mulÜ
"random_rotation_1/stateful_uniformAddV2*random_rotation_1/stateful_uniform/mul:z:0/random_rotation_1/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"random_rotation_1/stateful_uniform
'random_rotation_1/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2)
'random_rotation_1/rotation_matrix/sub/yÆ
%random_rotation_1/rotation_matrix/subSubrandom_rotation_1/Cast_1:y:00random_rotation_1/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_1/rotation_matrix/sub«
%random_rotation_1/rotation_matrix/CosCos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_1/rotation_matrix/Cos
)random_rotation_1/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_1/rotation_matrix/sub_1/yÌ
'random_rotation_1/rotation_matrix/sub_1Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_1Û
%random_rotation_1/rotation_matrix/mulMul)random_rotation_1/rotation_matrix/Cos:y:0+random_rotation_1/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_1/rotation_matrix/mul«
%random_rotation_1/rotation_matrix/SinSin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_1/rotation_matrix/Sin
)random_rotation_1/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_1/rotation_matrix/sub_2/yÊ
'random_rotation_1/rotation_matrix/sub_2Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_2ß
'random_rotation_1/rotation_matrix/mul_1Mul)random_rotation_1/rotation_matrix/Sin:y:0+random_rotation_1/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_1/rotation_matrix/mul_1ß
'random_rotation_1/rotation_matrix/sub_3Sub)random_rotation_1/rotation_matrix/mul:z:0+random_rotation_1/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_1/rotation_matrix/sub_3ß
'random_rotation_1/rotation_matrix/sub_4Sub)random_rotation_1/rotation_matrix/sub:z:0+random_rotation_1/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_1/rotation_matrix/sub_4
+random_rotation_1/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_1/rotation_matrix/truediv/yò
)random_rotation_1/rotation_matrix/truedivRealDiv+random_rotation_1/rotation_matrix/sub_4:z:04random_rotation_1/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_rotation_1/rotation_matrix/truediv
)random_rotation_1/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_1/rotation_matrix/sub_5/yÊ
'random_rotation_1/rotation_matrix/sub_5Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_5¯
'random_rotation_1/rotation_matrix/Sin_1Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_1/rotation_matrix/Sin_1
)random_rotation_1/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_1/rotation_matrix/sub_6/yÌ
'random_rotation_1/rotation_matrix/sub_6Subrandom_rotation_1/Cast_1:y:02random_rotation_1/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_6á
'random_rotation_1/rotation_matrix/mul_2Mul+random_rotation_1/rotation_matrix/Sin_1:y:0+random_rotation_1/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_1/rotation_matrix/mul_2¯
'random_rotation_1/rotation_matrix/Cos_1Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_1/rotation_matrix/Cos_1
)random_rotation_1/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_1/rotation_matrix/sub_7/yÊ
'random_rotation_1/rotation_matrix/sub_7Subrandom_rotation_1/Cast:y:02random_rotation_1/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_1/rotation_matrix/sub_7á
'random_rotation_1/rotation_matrix/mul_3Mul+random_rotation_1/rotation_matrix/Cos_1:y:0+random_rotation_1/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_1/rotation_matrix/mul_3ß
%random_rotation_1/rotation_matrix/addAddV2+random_rotation_1/rotation_matrix/mul_2:z:0+random_rotation_1/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_1/rotation_matrix/addß
'random_rotation_1/rotation_matrix/sub_8Sub+random_rotation_1/rotation_matrix/sub_5:z:0)random_rotation_1/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_1/rotation_matrix/sub_8£
-random_rotation_1/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_1/rotation_matrix/truediv_1/yø
+random_rotation_1/rotation_matrix/truediv_1RealDiv+random_rotation_1/rotation_matrix/sub_8:z:06random_rotation_1/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+random_rotation_1/rotation_matrix/truediv_1¨
'random_rotation_1/rotation_matrix/ShapeShape&random_rotation_1/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_1/rotation_matrix/Shape¸
5random_rotation_1/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_1/rotation_matrix/strided_slice/stack¼
7random_rotation_1/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_1¼
7random_rotation_1/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_1/rotation_matrix/strided_slice/stack_2®
/random_rotation_1/rotation_matrix/strided_sliceStridedSlice0random_rotation_1/rotation_matrix/Shape:output:0>random_rotation_1/rotation_matrix/strided_slice/stack:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_1/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_1/rotation_matrix/strided_slice¯
'random_rotation_1/rotation_matrix/Cos_2Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_1/rotation_matrix/Cos_2Ã
7random_rotation_1/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_1/stackÇ
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_1Ç
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_1/stack_2ã
1random_rotation_1/rotation_matrix/strided_slice_1StridedSlice+random_rotation_1/rotation_matrix/Cos_2:y:0@random_rotation_1/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_1¯
'random_rotation_1/rotation_matrix/Sin_2Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_1/rotation_matrix/Sin_2Ã
7random_rotation_1/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_2/stackÇ
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_1Ç
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_2/stack_2ã
1random_rotation_1/rotation_matrix/strided_slice_2StridedSlice+random_rotation_1/rotation_matrix/Sin_2:y:0@random_rotation_1/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_2Ã
%random_rotation_1/rotation_matrix/NegNeg:random_rotation_1/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_1/rotation_matrix/NegÃ
7random_rotation_1/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_3/stackÇ
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_1Ç
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_3/stack_2å
1random_rotation_1/rotation_matrix/strided_slice_3StridedSlice-random_rotation_1/rotation_matrix/truediv:z:0@random_rotation_1/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_3¯
'random_rotation_1/rotation_matrix/Sin_3Sin&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_1/rotation_matrix/Sin_3Ã
7random_rotation_1/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_4/stackÇ
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_1Ç
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_4/stack_2ã
1random_rotation_1/rotation_matrix/strided_slice_4StridedSlice+random_rotation_1/rotation_matrix/Sin_3:y:0@random_rotation_1/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_4¯
'random_rotation_1/rotation_matrix/Cos_3Cos&random_rotation_1/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_1/rotation_matrix/Cos_3Ã
7random_rotation_1/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_5/stackÇ
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_1Ç
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_5/stack_2ã
1random_rotation_1/rotation_matrix/strided_slice_5StridedSlice+random_rotation_1/rotation_matrix/Cos_3:y:0@random_rotation_1/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_5Ã
7random_rotation_1/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_1/rotation_matrix/strided_slice_6/stackÇ
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_1Ç
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_1/rotation_matrix/strided_slice_6/stack_2ç
1random_rotation_1/rotation_matrix/strided_slice_6StridedSlice/random_rotation_1/rotation_matrix/truediv_1:z:0@random_rotation_1/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_1/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_1/rotation_matrix/strided_slice_6 
-random_rotation_1/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/zeros/mul/yô
+random_rotation_1/rotation_matrix/zeros/mulMul8random_rotation_1/rotation_matrix/strided_slice:output:06random_rotation_1/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_1/rotation_matrix/zeros/mul£
.random_rotation_1/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è20
.random_rotation_1/rotation_matrix/zeros/Less/yï
,random_rotation_1/rotation_matrix/zeros/LessLess/random_rotation_1/rotation_matrix/zeros/mul:z:07random_rotation_1/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_1/rotation_matrix/zeros/Less¦
0random_rotation_1/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_1/rotation_matrix/zeros/packed/1
.random_rotation_1/rotation_matrix/zeros/packedPack8random_rotation_1/rotation_matrix/strided_slice:output:09random_rotation_1/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_1/rotation_matrix/zeros/packed£
-random_rotation_1/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_1/rotation_matrix/zeros/Constý
'random_rotation_1/rotation_matrix/zerosFill7random_rotation_1/rotation_matrix/zeros/packed:output:06random_rotation_1/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_1/rotation_matrix/zeros 
-random_rotation_1/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_1/rotation_matrix/concat/axisÜ
(random_rotation_1/rotation_matrix/concatConcatV2:random_rotation_1/rotation_matrix/strided_slice_1:output:0)random_rotation_1/rotation_matrix/Neg:y:0:random_rotation_1/rotation_matrix/strided_slice_3:output:0:random_rotation_1/rotation_matrix/strided_slice_4:output:0:random_rotation_1/rotation_matrix/strided_slice_5:output:0:random_rotation_1/rotation_matrix/strided_slice_6:output:00random_rotation_1/rotation_matrix/zeros:output:06random_rotation_1/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_1/rotation_matrix/concat¬
!random_rotation_1/transform/ShapeShape6random_flip_2/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_1/transform/Shape¬
/random_rotation_1/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_1/transform/strided_slice/stack°
1random_rotation_1/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_1°
1random_rotation_1/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_1/transform/strided_slice/stack_2ö
)random_rotation_1/transform/strided_sliceStridedSlice*random_rotation_1/transform/Shape:output:08random_rotation_1/transform/strided_slice/stack:output:0:random_rotation_1/transform/strided_slice/stack_1:output:0:random_rotation_1/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_1/transform/strided_slice
&random_rotation_1/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_1/transform/fill_valueÓ
6random_rotation_1/transform/ImageProjectiveTransformV3ImageProjectiveTransformV36random_flip_2/stateless_random_flip_left_right/add:z:01random_rotation_1/rotation_matrix/concat:output:02random_rotation_1/transform/strided_slice:output:0/random_rotation_1/transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_1/transform/ImageProjectiveTransformV3½
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          24
2batch_normalization/moments/mean/reduction_indices
 batch_normalization/moments/meanMeanKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2"
 batch_normalization/moments/meanÀ
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*&
_output_shapes
:2*
(batch_normalization/moments/StopGradient¯
-batch_normalization/moments/SquaredDifferenceSquaredDifferenceKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:01batch_normalization/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-batch_normalization/moments/SquaredDifferenceÅ
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          28
6batch_normalization/moments/variance/reduction_indices
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2&
$batch_normalization/moments/variance¾
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2%
#batch_normalization/moments/SqueezeÆ
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2'
%batch_normalization/moments/Squeeze_1{
batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization/add/y´
batch_normalization/addAddV2.batch_normalization/moments/Squeeze_1:output:0"batch_normalization/add/y:output:0*
T0*
_output_shapes
:2
batch_normalization/add~
batch_normalization/SqrtSqrtbatch_normalization/add:z:0*
T0*
_output_shapes
:2
batch_normalization/Sqrt
batch_normalization/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization/Sqrt_1/x
batch_normalization/Sqrt_1Sqrt%batch_normalization/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization/Sqrt_1È
*batch_normalization/Maximum/ReadVariableOpReadVariableOp3batch_normalization_maximum_readvariableop_resource*
_output_shapes
:*
dtype02,
*batch_normalization/Maximum/ReadVariableOp¾
batch_normalization/MaximumMaximum2batch_normalization/Maximum/ReadVariableOp:value:0batch_normalization/Sqrt_1:y:0*
T0*
_output_shapes
:2
batch_normalization/Maximum©
batch_normalization/truedivRealDivbatch_normalization/Sqrt:y:0batch_normalization/Maximum:z:0*
T0*
_output_shapes
:2
batch_normalization/truediv¼
&batch_normalization/sub/ReadVariableOpReadVariableOp/batch_normalization_sub_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization/sub/ReadVariableOp¼
batch_normalization/subSub,batch_normalization/moments/Squeeze:output:0.batch_normalization/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batch_normalization/sub¬
batch_normalization/truediv_1RealDivbatch_normalization/sub:z:0batch_normalization/Maximum:z:0*
T0*
_output_shapes
:2
batch_normalization/truediv_1Ù
batch_normalization/IdentityIdentity,batch_normalization/moments/Squeeze:output:0^batch_normalization/truediv^batch_normalization/truediv_1*
T0*
_output_shapes
:2
batch_normalization/IdentityÍ
batch_normalization/Identity_1Identitybatch_normalization/Sqrt:y:0^batch_normalization/truediv^batch_normalization/truediv_1*
T0*
_output_shapes
:2 
batch_normalization/Identity_1
batch_normalization/Identity_2Identity%batch_normalization/Identity:output:0*
T0*
_output_shapes
:2 
batch_normalization/Identity_2
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2+
)batch_normalization/AssignMovingAvg/decayÔ
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp/batch_normalization_sub_readvariableop_resource*
_output_shapes
:*
dtype024
2batch_normalization/AssignMovingAvg/ReadVariableOpã
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0'batch_normalization/Identity_2:output:0*
T0*
_output_shapes
:2)
'batch_normalization/AssignMovingAvg/subß
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2)
'batch_normalization/AssignMovingAvg/mulÀ
#batch_normalization/AssignMovingAvgAssignSubVariableOp/batch_normalization_sub_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp'^batch_normalization/sub/ReadVariableOp*
_output_shapes
 *
dtype02%
#batch_normalization/AssignMovingAvg
batch_normalization/Identity_3Identity'batch_normalization/Identity_1:output:0*
T0*
_output_shapes
:2 
batch_normalization/Identity_3
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2-
+batch_normalization/AssignMovingAvg_1/decayÜ
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp3batch_normalization_maximum_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization/AssignMovingAvg_1/ReadVariableOpé
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0'batch_normalization/Identity_3:output:0*
T0*
_output_shapes
:2+
)batch_normalization/AssignMovingAvg_1/subç
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2+
)batch_normalization/AssignMovingAvg_1/mulÐ
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp3batch_normalization_maximum_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp+^batch_normalization/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization/AssignMovingAvg_1æ
batch_normalization/Identity_4Identity%batch_normalization/Identity:output:0$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1*
T0*
_output_shapes
:2 
batch_normalization/Identity_4ï
batch_normalization/Identity_5Identity.batch_normalization/moments/Squeeze_1:output:0$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1*
T0*
_output_shapes
:2 
batch_normalization/Identity_5
batch_normalization/renorm_rStopGradientbatch_normalization/truediv:z:0*
T0*
_output_shapes
:2
batch_normalization/renorm_r
batch_normalization/renorm_dStopGradient!batch_normalization/truediv_1:z:0*
T0*
_output_shapes
:2
batch_normalization/renorm_d¼
&batch_normalization/mul/ReadVariableOpReadVariableOp/batch_normalization_mul_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization/mul/ReadVariableOpµ
batch_normalization/mulMul%batch_normalization/renorm_r:output:0.batch_normalization/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batch_normalization/mulÀ
(batch_normalization/mul_1/ReadVariableOpReadVariableOp/batch_normalization_mul_readvariableop_resource*
_output_shapes
:*
dtype02*
(batch_normalization/mul_1/ReadVariableOp»
batch_normalization/mul_1Mul%batch_normalization/renorm_d:output:00batch_normalization/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batch_normalization/mul_1Â
(batch_normalization/add_1/ReadVariableOpReadVariableOp1batch_normalization_add_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(batch_normalization/add_1/ReadVariableOpµ
batch_normalization/add_1AddV2batch_normalization/mul_1:z:00batch_normalization/add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batch_normalization/add_1
+batch_normalization/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2-
+batch_normalization/AssignMovingAvg_2/decayæ
4batch_normalization/AssignMovingAvg_2/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_2_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization/AssignMovingAvg_2/ReadVariableOpé
)batch_normalization/AssignMovingAvg_2/subSub<batch_normalization/AssignMovingAvg_2/ReadVariableOp:value:0'batch_normalization/Identity_4:output:0*
T0*
_output_shapes
:2+
)batch_normalization/AssignMovingAvg_2/subç
)batch_normalization/AssignMovingAvg_2/mulMul-batch_normalization/AssignMovingAvg_2/sub:z:04batch_normalization/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:2+
)batch_normalization/AssignMovingAvg_2/mul­
%batch_normalization/AssignMovingAvg_2AssignSubVariableOp=batch_normalization_assignmovingavg_2_readvariableop_resource-batch_normalization/AssignMovingAvg_2/mul:z:05^batch_normalization/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization/AssignMovingAvg_2
batch_normalization/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization/add_2/y³
batch_normalization/add_2AddV2'batch_normalization/Identity_5:output:0$batch_normalization/add_2/y:output:0*
T0*
_output_shapes
:2
batch_normalization/add_2
batch_normalization/Sqrt_2Sqrtbatch_normalization/add_2:z:0*
T0*
_output_shapes
:2
batch_normalization/Sqrt_2
+batch_normalization/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2-
+batch_normalization/AssignMovingAvg_3/decayæ
4batch_normalization/AssignMovingAvg_3/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_3_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization/AssignMovingAvg_3/ReadVariableOpà
)batch_normalization/AssignMovingAvg_3/subSub<batch_normalization/AssignMovingAvg_3/ReadVariableOp:value:0batch_normalization/Sqrt_2:y:0*
T0*
_output_shapes
:2+
)batch_normalization/AssignMovingAvg_3/subç
)batch_normalization/AssignMovingAvg_3/mulMul-batch_normalization/AssignMovingAvg_3/sub:z:04batch_normalization/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:2+
)batch_normalization/AssignMovingAvg_3/mul­
%batch_normalization/AssignMovingAvg_3AssignSubVariableOp=batch_normalization_assignmovingavg_3_readvariableop_resource-batch_normalization/AssignMovingAvg_3/mul:z:05^batch_normalization/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization/AssignMovingAvg_3ê
"batch_normalization/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_3_readvariableop_resource&^batch_normalization/AssignMovingAvg_3*
_output_shapes
:*
dtype02$
"batch_normalization/ReadVariableOpö
(batch_normalization/mul_2/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_3_readvariableop_resource&^batch_normalization/AssignMovingAvg_3*
_output_shapes
:*
dtype02*
(batch_normalization/mul_2/ReadVariableOpÀ
batch_normalization/mul_2Mul*batch_normalization/ReadVariableOp:value:00batch_normalization/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batch_normalization/mul_2
batch_normalization/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization/sub_1/y§
batch_normalization/sub_1Subbatch_normalization/mul_2:z:0$batch_normalization/sub_1/y:output:0*
T0*
_output_shapes
:2
batch_normalization/sub_1
batch_normalization/ReluRelubatch_normalization/sub_1:z:0*
T0*
_output_shapes
:2
batch_normalization/ReluÔ
"batch_normalization/AssignNewValueAssignVariableOp+batch_normalization_assignnewvalue_resource&batch_normalization/Relu:activations:0*
_output_shapes
 *
dtype02$
"batch_normalization/AssignNewValue
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2%
#batch_normalization/batchnorm/add/yÒ
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:2#
!batch_normalization/batchnorm/add
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:2%
#batch_normalization/batchnorm/Rsqrt¸
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:0batch_normalization/mul:z:0*
T0*
_output_shapes
:2#
!batch_normalization/batchnorm/mul
#batch_normalization/batchnorm/mul_1MulKrandom_rotation_1/transform/ImageProjectiveTransformV3:transformed_images:0%batch_normalization/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#batch_normalization/batchnorm/mul_1Ë
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:2%
#batch_normalization/batchnorm/mul_2º
!batch_normalization/batchnorm/subSubbatch_normalization/add_1:z:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2#
!batch_normalization/batchnorm/subß
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#batch_normalization/batchnorm/add_1ª
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOpÛ
conv2d/Conv2DConv2D'batch_normalization/batchnorm/add_1:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv2d/Conv2D¡
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOp¤
conv2d/BiasAddAddV2conv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d/BiasAddr
conv2d/ReluReluconv2d/BiasAdd:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d/ReluÁ
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolÁ
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          26
4batch_normalization_1/moments/mean/reduction_indicesñ
"batch_normalization_1/moments/meanMeanmax_pooling2d/MaxPool:output:0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2$
"batch_normalization_1/moments/meanÆ
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*&
_output_shapes
:@2,
*batch_normalization_1/moments/StopGradient
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferencemax_pooling2d/MaxPool:output:03batch_normalization_1/moments/StopGradient:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@21
/batch_normalization_1/moments/SquaredDifferenceÉ
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2:
8batch_normalization_1/moments/variance/reduction_indices
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2(
&batch_normalization_1/moments/varianceÄ
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2'
%batch_normalization_1/moments/SqueezeÌ
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2)
'batch_normalization_1/moments/Squeeze_1
batch_normalization_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_1/add/y¼
batch_normalization_1/addAddV20batch_normalization_1/moments/Squeeze_1:output:0$batch_normalization_1/add/y:output:0*
T0*
_output_shapes
:@2
batch_normalization_1/add
batch_normalization_1/SqrtSqrtbatch_normalization_1/add:z:0*
T0*
_output_shapes
:@2
batch_normalization_1/Sqrt
batch_normalization_1/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
batch_normalization_1/Sqrt_1/x
batch_normalization_1/Sqrt_1Sqrt'batch_normalization_1/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization_1/Sqrt_1Î
,batch_normalization_1/Maximum/ReadVariableOpReadVariableOp5batch_normalization_1_maximum_readvariableop_resource*
_output_shapes
:@*
dtype02.
,batch_normalization_1/Maximum/ReadVariableOpÆ
batch_normalization_1/MaximumMaximum4batch_normalization_1/Maximum/ReadVariableOp:value:0 batch_normalization_1/Sqrt_1:y:0*
T0*
_output_shapes
:@2
batch_normalization_1/Maximum±
batch_normalization_1/truedivRealDivbatch_normalization_1/Sqrt:y:0!batch_normalization_1/Maximum:z:0*
T0*
_output_shapes
:@2
batch_normalization_1/truedivÂ
(batch_normalization_1/sub/ReadVariableOpReadVariableOp1batch_normalization_1_sub_readvariableop_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_1/sub/ReadVariableOpÄ
batch_normalization_1/subSub.batch_normalization_1/moments/Squeeze:output:00batch_normalization_1/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_1/sub´
batch_normalization_1/truediv_1RealDivbatch_normalization_1/sub:z:0!batch_normalization_1/Maximum:z:0*
T0*
_output_shapes
:@2!
batch_normalization_1/truediv_1ã
batch_normalization_1/IdentityIdentity.batch_normalization_1/moments/Squeeze:output:0^batch_normalization_1/truediv ^batch_normalization_1/truediv_1*
T0*
_output_shapes
:@2 
batch_normalization_1/Identity×
 batch_normalization_1/Identity_1Identitybatch_normalization_1/Sqrt:y:0^batch_normalization_1/truediv ^batch_normalization_1/truediv_1*
T0*
_output_shapes
:@2"
 batch_normalization_1/Identity_1
 batch_normalization_1/Identity_2Identity'batch_normalization_1/Identity:output:0*
T0*
_output_shapes
:@2"
 batch_normalization_1/Identity_2
+batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2-
+batch_normalization_1/AssignMovingAvg/decayÚ
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_1_sub_readvariableop_resource*
_output_shapes
:@*
dtype026
4batch_normalization_1/AssignMovingAvg/ReadVariableOpë
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_1/Identity_2:output:0*
T0*
_output_shapes
:@2+
)batch_normalization_1/AssignMovingAvg/subç
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2+
)batch_normalization_1/AssignMovingAvg/mulÌ
%batch_normalization_1/AssignMovingAvgAssignSubVariableOp1batch_normalization_1_sub_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp)^batch_normalization_1/sub/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_1/AssignMovingAvg 
 batch_normalization_1/Identity_3Identity)batch_normalization_1/Identity_1:output:0*
T0*
_output_shapes
:@2"
 batch_normalization_1/Identity_3£
-batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_1/AssignMovingAvg_1/decayâ
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_1_maximum_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpñ
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_1/Identity_3:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_1/AssignMovingAvg_1/subï
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_1/AssignMovingAvg_1/mulÜ
'batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp5batch_normalization_1_maximum_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_1/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1/AssignMovingAvg_1ð
 batch_normalization_1/Identity_4Identity'batch_normalization_1/Identity:output:0&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1*
T0*
_output_shapes
:@2"
 batch_normalization_1/Identity_4ù
 batch_normalization_1/Identity_5Identity0batch_normalization_1/moments/Squeeze_1:output:0&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1*
T0*
_output_shapes
:@2"
 batch_normalization_1/Identity_5
batch_normalization_1/renorm_rStopGradient!batch_normalization_1/truediv:z:0*
T0*
_output_shapes
:@2 
batch_normalization_1/renorm_r
batch_normalization_1/renorm_dStopGradient#batch_normalization_1/truediv_1:z:0*
T0*
_output_shapes
:@2 
batch_normalization_1/renorm_dÂ
(batch_normalization_1/mul/ReadVariableOpReadVariableOp1batch_normalization_1_mul_readvariableop_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_1/mul/ReadVariableOp½
batch_normalization_1/mulMul'batch_normalization_1/renorm_r:output:00batch_normalization_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_1/mulÆ
*batch_normalization_1/mul_1/ReadVariableOpReadVariableOp1batch_normalization_1_mul_readvariableop_resource*
_output_shapes
:@*
dtype02,
*batch_normalization_1/mul_1/ReadVariableOpÃ
batch_normalization_1/mul_1Mul'batch_normalization_1/renorm_d:output:02batch_normalization_1/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_1/mul_1È
*batch_normalization_1/add_1/ReadVariableOpReadVariableOp3batch_normalization_1_add_1_readvariableop_resource*
_output_shapes
:@*
dtype02,
*batch_normalization_1/add_1/ReadVariableOp½
batch_normalization_1/add_1AddV2batch_normalization_1/mul_1:z:02batch_normalization_1/add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_1/add_1£
-batch_normalization_1/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_1/AssignMovingAvg_2/decayì
6batch_normalization_1/AssignMovingAvg_2/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_2_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_1/AssignMovingAvg_2/ReadVariableOpñ
+batch_normalization_1/AssignMovingAvg_2/subSub>batch_normalization_1/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_1/Identity_4:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_1/AssignMovingAvg_2/subï
+batch_normalization_1/AssignMovingAvg_2/mulMul/batch_normalization_1/AssignMovingAvg_2/sub:z:06batch_normalization_1/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_1/AssignMovingAvg_2/mul·
'batch_normalization_1/AssignMovingAvg_2AssignSubVariableOp?batch_normalization_1_assignmovingavg_2_readvariableop_resource/batch_normalization_1/AssignMovingAvg_2/mul:z:07^batch_normalization_1/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1/AssignMovingAvg_2
batch_normalization_1/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_1/add_2/y»
batch_normalization_1/add_2AddV2)batch_normalization_1/Identity_5:output:0&batch_normalization_1/add_2/y:output:0*
T0*
_output_shapes
:@2
batch_normalization_1/add_2
batch_normalization_1/Sqrt_2Sqrtbatch_normalization_1/add_2:z:0*
T0*
_output_shapes
:@2
batch_normalization_1/Sqrt_2£
-batch_normalization_1/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_1/AssignMovingAvg_3/decayì
6batch_normalization_1/AssignMovingAvg_3/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_1/AssignMovingAvg_3/ReadVariableOpè
+batch_normalization_1/AssignMovingAvg_3/subSub>batch_normalization_1/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_1/Sqrt_2:y:0*
T0*
_output_shapes
:@2-
+batch_normalization_1/AssignMovingAvg_3/subï
+batch_normalization_1/AssignMovingAvg_3/mulMul/batch_normalization_1/AssignMovingAvg_3/sub:z:06batch_normalization_1/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:@2-
+batch_normalization_1/AssignMovingAvg_3/mul·
'batch_normalization_1/AssignMovingAvg_3AssignSubVariableOp?batch_normalization_1_assignmovingavg_3_readvariableop_resource/batch_normalization_1/AssignMovingAvg_3/mul:z:07^batch_normalization_1/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1/AssignMovingAvg_3ò
$batch_normalization_1/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_3_readvariableop_resource(^batch_normalization_1/AssignMovingAvg_3*
_output_shapes
:@*
dtype02&
$batch_normalization_1/ReadVariableOpþ
*batch_normalization_1/mul_2/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_3_readvariableop_resource(^batch_normalization_1/AssignMovingAvg_3*
_output_shapes
:@*
dtype02,
*batch_normalization_1/mul_2/ReadVariableOpÈ
batch_normalization_1/mul_2Mul,batch_normalization_1/ReadVariableOp:value:02batch_normalization_1/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_1/mul_2
batch_normalization_1/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_1/sub_1/y¯
batch_normalization_1/sub_1Subbatch_normalization_1/mul_2:z:0&batch_normalization_1/sub_1/y:output:0*
T0*
_output_shapes
:@2
batch_normalization_1/sub_1
batch_normalization_1/ReluRelubatch_normalization_1/sub_1:z:0*
T0*
_output_shapes
:@2
batch_normalization_1/ReluÜ
$batch_normalization_1/AssignNewValueAssignVariableOp-batch_normalization_1_assignnewvalue_resource(batch_normalization_1/Relu:activations:0*
_output_shapes
 *
dtype02&
$batch_normalization_1/AssignNewValue
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_1/batchnorm/add/yÚ
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_1/batchnorm/add¥
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_1/batchnorm/RsqrtÀ
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0batch_normalization_1/mul:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_1/batchnorm/mulØ
%batch_normalization_1/batchnorm/mul_1Mulmax_pooling2d/MaxPool:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2'
%batch_normalization_1/batchnorm/mul_1Ó
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_1/batchnorm/mul_2Â
#batch_normalization_1/batchnorm/subSubbatch_normalization_1/add_1:z:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_1/batchnorm/subå
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2'
%batch_normalization_1/batchnorm/add_1±
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02 
conv2d_1/Conv2D/ReadVariableOpâ
conv2d_1/Conv2DConv2D)batch_normalization_1/batchnorm/add_1:z:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
conv2d_1/Conv2D¨
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp«
conv2d_1/BiasAddAddV2conv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
conv2d_1/BiasAddw
conv2d_1/ReluReluconv2d_1/BiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
conv2d_1/ReluÈ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolÁ
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          26
4batch_normalization_2/moments/mean/reduction_indicesô
"batch_normalization_2/moments/meanMean max_pooling2d_1/MaxPool:output:0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2$
"batch_normalization_2/moments/meanÇ
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*'
_output_shapes
:2,
*batch_normalization_2/moments/StopGradient
/batch_normalization_2/moments/SquaredDifferenceSquaredDifference max_pooling2d_1/MaxPool:output:03batch_normalization_2/moments/StopGradient:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  21
/batch_normalization_2/moments/SquaredDifferenceÉ
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2:
8batch_normalization_2/moments/variance/reduction_indices
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2(
&batch_normalization_2/moments/varianceÅ
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2'
%batch_normalization_2/moments/SqueezeÍ
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2)
'batch_normalization_2/moments/Squeeze_1
batch_normalization_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_2/add/y½
batch_normalization_2/addAddV20batch_normalization_2/moments/Squeeze_1:output:0$batch_normalization_2/add/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_2/add
batch_normalization_2/SqrtSqrtbatch_normalization_2/add:z:0*
T0*
_output_shapes	
:2
batch_normalization_2/Sqrt
batch_normalization_2/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
batch_normalization_2/Sqrt_1/x
batch_normalization_2/Sqrt_1Sqrt'batch_normalization_2/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization_2/Sqrt_1Ï
,batch_normalization_2/Maximum/ReadVariableOpReadVariableOp5batch_normalization_2_maximum_readvariableop_resource*
_output_shapes	
:*
dtype02.
,batch_normalization_2/Maximum/ReadVariableOpÇ
batch_normalization_2/MaximumMaximum4batch_normalization_2/Maximum/ReadVariableOp:value:0 batch_normalization_2/Sqrt_1:y:0*
T0*
_output_shapes	
:2
batch_normalization_2/Maximum²
batch_normalization_2/truedivRealDivbatch_normalization_2/Sqrt:y:0!batch_normalization_2/Maximum:z:0*
T0*
_output_shapes	
:2
batch_normalization_2/truedivÃ
(batch_normalization_2/sub/ReadVariableOpReadVariableOp1batch_normalization_2_sub_readvariableop_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_2/sub/ReadVariableOpÅ
batch_normalization_2/subSub.batch_normalization_2/moments/Squeeze:output:00batch_normalization_2/sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_2/subµ
batch_normalization_2/truediv_1RealDivbatch_normalization_2/sub:z:0!batch_normalization_2/Maximum:z:0*
T0*
_output_shapes	
:2!
batch_normalization_2/truediv_1ä
batch_normalization_2/IdentityIdentity.batch_normalization_2/moments/Squeeze:output:0^batch_normalization_2/truediv ^batch_normalization_2/truediv_1*
T0*
_output_shapes	
:2 
batch_normalization_2/IdentityØ
 batch_normalization_2/Identity_1Identitybatch_normalization_2/Sqrt:y:0^batch_normalization_2/truediv ^batch_normalization_2/truediv_1*
T0*
_output_shapes	
:2"
 batch_normalization_2/Identity_1
 batch_normalization_2/Identity_2Identity'batch_normalization_2/Identity:output:0*
T0*
_output_shapes	
:2"
 batch_normalization_2/Identity_2
+batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2-
+batch_normalization_2/AssignMovingAvg/decayÛ
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_2_sub_readvariableop_resource*
_output_shapes	
:*
dtype026
4batch_normalization_2/AssignMovingAvg/ReadVariableOpì
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_2/Identity_2:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_2/AssignMovingAvg/subè
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_2/AssignMovingAvg/mulÌ
%batch_normalization_2/AssignMovingAvgAssignSubVariableOp1batch_normalization_2_sub_readvariableop_resource-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp)^batch_normalization_2/sub/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_2/AssignMovingAvg¡
 batch_normalization_2/Identity_3Identity)batch_normalization_2/Identity_1:output:0*
T0*
_output_shapes	
:2"
 batch_normalization_2/Identity_3£
-batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_2/AssignMovingAvg_1/decayã
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_2_maximum_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpò
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_2/Identity_3:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_2/AssignMovingAvg_1/subð
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_2/AssignMovingAvg_1/mulÜ
'batch_normalization_2/AssignMovingAvg_1AssignSubVariableOp5batch_normalization_2_maximum_readvariableop_resource/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_2/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_2/AssignMovingAvg_1ñ
 batch_normalization_2/Identity_4Identity'batch_normalization_2/Identity:output:0&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes	
:2"
 batch_normalization_2/Identity_4ú
 batch_normalization_2/Identity_5Identity0batch_normalization_2/moments/Squeeze_1:output:0&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes	
:2"
 batch_normalization_2/Identity_5
batch_normalization_2/renorm_rStopGradient!batch_normalization_2/truediv:z:0*
T0*
_output_shapes	
:2 
batch_normalization_2/renorm_r
batch_normalization_2/renorm_dStopGradient#batch_normalization_2/truediv_1:z:0*
T0*
_output_shapes	
:2 
batch_normalization_2/renorm_dÃ
(batch_normalization_2/mul/ReadVariableOpReadVariableOp1batch_normalization_2_mul_readvariableop_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_2/mul/ReadVariableOp¾
batch_normalization_2/mulMul'batch_normalization_2/renorm_r:output:00batch_normalization_2/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_2/mulÇ
*batch_normalization_2/mul_1/ReadVariableOpReadVariableOp1batch_normalization_2_mul_readvariableop_resource*
_output_shapes	
:*
dtype02,
*batch_normalization_2/mul_1/ReadVariableOpÄ
batch_normalization_2/mul_1Mul'batch_normalization_2/renorm_d:output:02batch_normalization_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_2/mul_1É
*batch_normalization_2/add_1/ReadVariableOpReadVariableOp3batch_normalization_2_add_1_readvariableop_resource*
_output_shapes	
:*
dtype02,
*batch_normalization_2/add_1/ReadVariableOp¾
batch_normalization_2/add_1AddV2batch_normalization_2/mul_1:z:02batch_normalization_2/add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_2/add_1£
-batch_normalization_2/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_2/AssignMovingAvg_2/decayí
6batch_normalization_2/AssignMovingAvg_2/ReadVariableOpReadVariableOp?batch_normalization_2_assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_2/AssignMovingAvg_2/ReadVariableOpò
+batch_normalization_2/AssignMovingAvg_2/subSub>batch_normalization_2/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_2/Identity_4:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_2/AssignMovingAvg_2/subð
+batch_normalization_2/AssignMovingAvg_2/mulMul/batch_normalization_2/AssignMovingAvg_2/sub:z:06batch_normalization_2/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_2/AssignMovingAvg_2/mul·
'batch_normalization_2/AssignMovingAvg_2AssignSubVariableOp?batch_normalization_2_assignmovingavg_2_readvariableop_resource/batch_normalization_2/AssignMovingAvg_2/mul:z:07^batch_normalization_2/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_2/AssignMovingAvg_2
batch_normalization_2/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_2/add_2/y¼
batch_normalization_2/add_2AddV2)batch_normalization_2/Identity_5:output:0&batch_normalization_2/add_2/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_2/add_2
batch_normalization_2/Sqrt_2Sqrtbatch_normalization_2/add_2:z:0*
T0*
_output_shapes	
:2
batch_normalization_2/Sqrt_2£
-batch_normalization_2/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_2/AssignMovingAvg_3/decayí
6batch_normalization_2/AssignMovingAvg_3/ReadVariableOpReadVariableOp?batch_normalization_2_assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_2/AssignMovingAvg_3/ReadVariableOpé
+batch_normalization_2/AssignMovingAvg_3/subSub>batch_normalization_2/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_2/Sqrt_2:y:0*
T0*
_output_shapes	
:2-
+batch_normalization_2/AssignMovingAvg_3/subð
+batch_normalization_2/AssignMovingAvg_3/mulMul/batch_normalization_2/AssignMovingAvg_3/sub:z:06batch_normalization_2/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_2/AssignMovingAvg_3/mul·
'batch_normalization_2/AssignMovingAvg_3AssignSubVariableOp?batch_normalization_2_assignmovingavg_3_readvariableop_resource/batch_normalization_2/AssignMovingAvg_3/mul:z:07^batch_normalization_2/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_2/AssignMovingAvg_3ó
$batch_normalization_2/ReadVariableOpReadVariableOp?batch_normalization_2_assignmovingavg_3_readvariableop_resource(^batch_normalization_2/AssignMovingAvg_3*
_output_shapes	
:*
dtype02&
$batch_normalization_2/ReadVariableOpÿ
*batch_normalization_2/mul_2/ReadVariableOpReadVariableOp?batch_normalization_2_assignmovingavg_3_readvariableop_resource(^batch_normalization_2/AssignMovingAvg_3*
_output_shapes	
:*
dtype02,
*batch_normalization_2/mul_2/ReadVariableOpÉ
batch_normalization_2/mul_2Mul,batch_normalization_2/ReadVariableOp:value:02batch_normalization_2/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_2/mul_2
batch_normalization_2/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_2/sub_1/y°
batch_normalization_2/sub_1Subbatch_normalization_2/mul_2:z:0&batch_normalization_2/sub_1/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_2/sub_1
batch_normalization_2/ReluRelubatch_normalization_2/sub_1:z:0*
T0*
_output_shapes	
:2
batch_normalization_2/ReluÜ
$batch_normalization_2/AssignNewValueAssignVariableOp-batch_normalization_2_assignnewvalue_resource(batch_normalization_2/Relu:activations:0*
_output_shapes
 *
dtype02&
$batch_normalization_2/AssignNewValue
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_2/batchnorm/add/yÛ
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/add¦
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_2/batchnorm/RsqrtÁ
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0batch_normalization_2/mul:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/mulÛ
%batch_normalization_2/batchnorm/mul_1Mul max_pooling2d_1/MaxPool:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2'
%batch_normalization_2/batchnorm/mul_1Ô
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_2/batchnorm/mul_2Ã
#batch_normalization_2/batchnorm/subSubbatch_normalization_2/add_1:z:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/subæ
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2'
%batch_normalization_2/batchnorm/add_1²
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_2/Conv2D/ReadVariableOpâ
conv2d_2/Conv2DConv2D)batch_normalization_2/batchnorm/add_1:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
conv2d_2/Conv2D¨
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp«
conv2d_2/BiasAddAddV2conv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_2/BiasAddw
conv2d_2/ReluReluconv2d_2/BiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_2/Relu²
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_3/Conv2D/ReadVariableOpÔ
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
conv2d_3/Conv2D¨
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp«
conv2d_3/BiasAddAddV2conv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_3/BiasAddw
conv2d_3/ReluReluconv2d_3/BiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_3/ReluÈ
max_pooling2d_2/MaxPoolMaxPoolconv2d_3/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolÁ
4batch_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          26
4batch_normalization_3/moments/mean/reduction_indicesô
"batch_normalization_3/moments/meanMean max_pooling2d_2/MaxPool:output:0=batch_normalization_3/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2$
"batch_normalization_3/moments/meanÇ
*batch_normalization_3/moments/StopGradientStopGradient+batch_normalization_3/moments/mean:output:0*
T0*'
_output_shapes
:2,
*batch_normalization_3/moments/StopGradient
/batch_normalization_3/moments/SquaredDifferenceSquaredDifference max_pooling2d_2/MaxPool:output:03batch_normalization_3/moments/StopGradient:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/batch_normalization_3/moments/SquaredDifferenceÉ
8batch_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2:
8batch_normalization_3/moments/variance/reduction_indices
&batch_normalization_3/moments/varianceMean3batch_normalization_3/moments/SquaredDifference:z:0Abatch_normalization_3/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2(
&batch_normalization_3/moments/varianceÅ
%batch_normalization_3/moments/SqueezeSqueeze+batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2'
%batch_normalization_3/moments/SqueezeÍ
'batch_normalization_3/moments/Squeeze_1Squeeze/batch_normalization_3/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2)
'batch_normalization_3/moments/Squeeze_1
batch_normalization_3/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_3/add/y½
batch_normalization_3/addAddV20batch_normalization_3/moments/Squeeze_1:output:0$batch_normalization_3/add/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_3/add
batch_normalization_3/SqrtSqrtbatch_normalization_3/add:z:0*
T0*
_output_shapes	
:2
batch_normalization_3/Sqrt
batch_normalization_3/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
batch_normalization_3/Sqrt_1/x
batch_normalization_3/Sqrt_1Sqrt'batch_normalization_3/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization_3/Sqrt_1Ï
,batch_normalization_3/Maximum/ReadVariableOpReadVariableOp5batch_normalization_3_maximum_readvariableop_resource*
_output_shapes	
:*
dtype02.
,batch_normalization_3/Maximum/ReadVariableOpÇ
batch_normalization_3/MaximumMaximum4batch_normalization_3/Maximum/ReadVariableOp:value:0 batch_normalization_3/Sqrt_1:y:0*
T0*
_output_shapes	
:2
batch_normalization_3/Maximum²
batch_normalization_3/truedivRealDivbatch_normalization_3/Sqrt:y:0!batch_normalization_3/Maximum:z:0*
T0*
_output_shapes	
:2
batch_normalization_3/truedivÃ
(batch_normalization_3/sub/ReadVariableOpReadVariableOp1batch_normalization_3_sub_readvariableop_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_3/sub/ReadVariableOpÅ
batch_normalization_3/subSub.batch_normalization_3/moments/Squeeze:output:00batch_normalization_3/sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_3/subµ
batch_normalization_3/truediv_1RealDivbatch_normalization_3/sub:z:0!batch_normalization_3/Maximum:z:0*
T0*
_output_shapes	
:2!
batch_normalization_3/truediv_1ä
batch_normalization_3/IdentityIdentity.batch_normalization_3/moments/Squeeze:output:0^batch_normalization_3/truediv ^batch_normalization_3/truediv_1*
T0*
_output_shapes	
:2 
batch_normalization_3/IdentityØ
 batch_normalization_3/Identity_1Identitybatch_normalization_3/Sqrt:y:0^batch_normalization_3/truediv ^batch_normalization_3/truediv_1*
T0*
_output_shapes	
:2"
 batch_normalization_3/Identity_1
 batch_normalization_3/Identity_2Identity'batch_normalization_3/Identity:output:0*
T0*
_output_shapes	
:2"
 batch_normalization_3/Identity_2
+batch_normalization_3/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2-
+batch_normalization_3/AssignMovingAvg/decayÛ
4batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_3_sub_readvariableop_resource*
_output_shapes	
:*
dtype026
4batch_normalization_3/AssignMovingAvg/ReadVariableOpì
)batch_normalization_3/AssignMovingAvg/subSub<batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_3/Identity_2:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_3/AssignMovingAvg/subè
)batch_normalization_3/AssignMovingAvg/mulMul-batch_normalization_3/AssignMovingAvg/sub:z:04batch_normalization_3/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2+
)batch_normalization_3/AssignMovingAvg/mulÌ
%batch_normalization_3/AssignMovingAvgAssignSubVariableOp1batch_normalization_3_sub_readvariableop_resource-batch_normalization_3/AssignMovingAvg/mul:z:05^batch_normalization_3/AssignMovingAvg/ReadVariableOp)^batch_normalization_3/sub/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_3/AssignMovingAvg¡
 batch_normalization_3/Identity_3Identity)batch_normalization_3/Identity_1:output:0*
T0*
_output_shapes	
:2"
 batch_normalization_3/Identity_3£
-batch_normalization_3/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_3/AssignMovingAvg_1/decayã
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_3_maximum_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpò
+batch_normalization_3/AssignMovingAvg_1/subSub>batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_3/Identity_3:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_3/AssignMovingAvg_1/subð
+batch_normalization_3/AssignMovingAvg_1/mulMul/batch_normalization_3/AssignMovingAvg_1/sub:z:06batch_normalization_3/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_3/AssignMovingAvg_1/mulÜ
'batch_normalization_3/AssignMovingAvg_1AssignSubVariableOp5batch_normalization_3_maximum_readvariableop_resource/batch_normalization_3/AssignMovingAvg_1/mul:z:07^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_3/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_3/AssignMovingAvg_1ñ
 batch_normalization_3/Identity_4Identity'batch_normalization_3/Identity:output:0&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes	
:2"
 batch_normalization_3/Identity_4ú
 batch_normalization_3/Identity_5Identity0batch_normalization_3/moments/Squeeze_1:output:0&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1*
T0*
_output_shapes	
:2"
 batch_normalization_3/Identity_5
batch_normalization_3/renorm_rStopGradient!batch_normalization_3/truediv:z:0*
T0*
_output_shapes	
:2 
batch_normalization_3/renorm_r
batch_normalization_3/renorm_dStopGradient#batch_normalization_3/truediv_1:z:0*
T0*
_output_shapes	
:2 
batch_normalization_3/renorm_dÃ
(batch_normalization_3/mul/ReadVariableOpReadVariableOp1batch_normalization_3_mul_readvariableop_resource*
_output_shapes	
:*
dtype02*
(batch_normalization_3/mul/ReadVariableOp¾
batch_normalization_3/mulMul'batch_normalization_3/renorm_r:output:00batch_normalization_3/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_3/mulÇ
*batch_normalization_3/mul_1/ReadVariableOpReadVariableOp1batch_normalization_3_mul_readvariableop_resource*
_output_shapes	
:*
dtype02,
*batch_normalization_3/mul_1/ReadVariableOpÄ
batch_normalization_3/mul_1Mul'batch_normalization_3/renorm_d:output:02batch_normalization_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_3/mul_1É
*batch_normalization_3/add_1/ReadVariableOpReadVariableOp3batch_normalization_3_add_1_readvariableop_resource*
_output_shapes	
:*
dtype02,
*batch_normalization_3/add_1/ReadVariableOp¾
batch_normalization_3/add_1AddV2batch_normalization_3/mul_1:z:02batch_normalization_3/add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_3/add_1£
-batch_normalization_3/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_3/AssignMovingAvg_2/decayí
6batch_normalization_3/AssignMovingAvg_2/ReadVariableOpReadVariableOp?batch_normalization_3_assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_3/AssignMovingAvg_2/ReadVariableOpò
+batch_normalization_3/AssignMovingAvg_2/subSub>batch_normalization_3/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_3/Identity_4:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_3/AssignMovingAvg_2/subð
+batch_normalization_3/AssignMovingAvg_2/mulMul/batch_normalization_3/AssignMovingAvg_2/sub:z:06batch_normalization_3/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_3/AssignMovingAvg_2/mul·
'batch_normalization_3/AssignMovingAvg_2AssignSubVariableOp?batch_normalization_3_assignmovingavg_2_readvariableop_resource/batch_normalization_3/AssignMovingAvg_2/mul:z:07^batch_normalization_3/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_3/AssignMovingAvg_2
batch_normalization_3/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_3/add_2/y¼
batch_normalization_3/add_2AddV2)batch_normalization_3/Identity_5:output:0&batch_normalization_3/add_2/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_3/add_2
batch_normalization_3/Sqrt_2Sqrtbatch_normalization_3/add_2:z:0*
T0*
_output_shapes	
:2
batch_normalization_3/Sqrt_2£
-batch_normalization_3/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_3/AssignMovingAvg_3/decayí
6batch_normalization_3/AssignMovingAvg_3/ReadVariableOpReadVariableOp?batch_normalization_3_assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype028
6batch_normalization_3/AssignMovingAvg_3/ReadVariableOpé
+batch_normalization_3/AssignMovingAvg_3/subSub>batch_normalization_3/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_3/Sqrt_2:y:0*
T0*
_output_shapes	
:2-
+batch_normalization_3/AssignMovingAvg_3/subð
+batch_normalization_3/AssignMovingAvg_3/mulMul/batch_normalization_3/AssignMovingAvg_3/sub:z:06batch_normalization_3/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2-
+batch_normalization_3/AssignMovingAvg_3/mul·
'batch_normalization_3/AssignMovingAvg_3AssignSubVariableOp?batch_normalization_3_assignmovingavg_3_readvariableop_resource/batch_normalization_3/AssignMovingAvg_3/mul:z:07^batch_normalization_3/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_3/AssignMovingAvg_3ó
$batch_normalization_3/ReadVariableOpReadVariableOp?batch_normalization_3_assignmovingavg_3_readvariableop_resource(^batch_normalization_3/AssignMovingAvg_3*
_output_shapes	
:*
dtype02&
$batch_normalization_3/ReadVariableOpÿ
*batch_normalization_3/mul_2/ReadVariableOpReadVariableOp?batch_normalization_3_assignmovingavg_3_readvariableop_resource(^batch_normalization_3/AssignMovingAvg_3*
_output_shapes	
:*
dtype02,
*batch_normalization_3/mul_2/ReadVariableOpÉ
batch_normalization_3/mul_2Mul,batch_normalization_3/ReadVariableOp:value:02batch_normalization_3/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batch_normalization_3/mul_2
batch_normalization_3/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batch_normalization_3/sub_1/y°
batch_normalization_3/sub_1Subbatch_normalization_3/mul_2:z:0&batch_normalization_3/sub_1/y:output:0*
T0*
_output_shapes	
:2
batch_normalization_3/sub_1
batch_normalization_3/ReluRelubatch_normalization_3/sub_1:z:0*
T0*
_output_shapes	
:2
batch_normalization_3/ReluÜ
$batch_normalization_3/AssignNewValueAssignVariableOp-batch_normalization_3_assignnewvalue_resource(batch_normalization_3/Relu:activations:0*
_output_shapes
 *
dtype02&
$batch_normalization_3/AssignNewValue
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_3/batchnorm/add/yÛ
#batch_normalization_3/batchnorm/addAddV20batch_normalization_3/moments/Squeeze_1:output:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_3/batchnorm/add¦
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_3/batchnorm/RsqrtÁ
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0batch_normalization_3/mul:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_3/batchnorm/mulÛ
%batch_normalization_3/batchnorm/mul_1Mul max_pooling2d_2/MaxPool:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%batch_normalization_3/batchnorm/mul_1Ô
%batch_normalization_3/batchnorm/mul_2Mul.batch_normalization_3/moments/Squeeze:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_3/batchnorm/mul_2Ã
#batch_normalization_3/batchnorm/subSubbatch_normalization_3/add_1:z:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_3/batchnorm/subæ
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%batch_normalization_3/batchnorm/add_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten/Const¤
flatten/ReshapeReshape)batch_normalization_3/batchnorm/add_1:z:0flatten/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten/Reshape¡
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddAddV2dense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/BiasAdde

dense/ReluReludense/BiasAdd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

dense/Relu¥
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/MatMul¤
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp
dense_1/BiasAddAddV2dense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAddt
dense_1/SigmoidSigmoiddense_1/BiasAdd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Sigmoidn
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityº
NoOpNoOp$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp&^batch_normalization/AssignMovingAvg_25^batch_normalization/AssignMovingAvg_2/ReadVariableOp&^batch_normalization/AssignMovingAvg_35^batch_normalization/AssignMovingAvg_3/ReadVariableOp#^batch_normalization/AssignNewValue+^batch_normalization/Maximum/ReadVariableOp#^batch_normalization/ReadVariableOp)^batch_normalization/add_1/ReadVariableOp'^batch_normalization/mul/ReadVariableOp)^batch_normalization/mul_1/ReadVariableOp)^batch_normalization/mul_2/ReadVariableOp'^batch_normalization/sub/ReadVariableOp&^batch_normalization_1/AssignMovingAvg5^batch_normalization_1/AssignMovingAvg/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_17^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_27^batch_normalization_1/AssignMovingAvg_2/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_37^batch_normalization_1/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_1/AssignNewValue-^batch_normalization_1/Maximum/ReadVariableOp%^batch_normalization_1/ReadVariableOp+^batch_normalization_1/add_1/ReadVariableOp)^batch_normalization_1/mul/ReadVariableOp+^batch_normalization_1/mul_1/ReadVariableOp+^batch_normalization_1/mul_2/ReadVariableOp)^batch_normalization_1/sub/ReadVariableOp&^batch_normalization_2/AssignMovingAvg5^batch_normalization_2/AssignMovingAvg/ReadVariableOp(^batch_normalization_2/AssignMovingAvg_17^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp(^batch_normalization_2/AssignMovingAvg_27^batch_normalization_2/AssignMovingAvg_2/ReadVariableOp(^batch_normalization_2/AssignMovingAvg_37^batch_normalization_2/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_2/AssignNewValue-^batch_normalization_2/Maximum/ReadVariableOp%^batch_normalization_2/ReadVariableOp+^batch_normalization_2/add_1/ReadVariableOp)^batch_normalization_2/mul/ReadVariableOp+^batch_normalization_2/mul_1/ReadVariableOp+^batch_normalization_2/mul_2/ReadVariableOp)^batch_normalization_2/sub/ReadVariableOp&^batch_normalization_3/AssignMovingAvg5^batch_normalization_3/AssignMovingAvg/ReadVariableOp(^batch_normalization_3/AssignMovingAvg_17^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp(^batch_normalization_3/AssignMovingAvg_27^batch_normalization_3/AssignMovingAvg_2/ReadVariableOp(^batch_normalization_3/AssignMovingAvg_37^batch_normalization_3/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_3/AssignNewValue-^batch_normalization_3/Maximum/ReadVariableOp%^batch_normalization_3/ReadVariableOp+^batch_normalization_3/add_1/ReadVariableOp)^batch_normalization_3/mul/ReadVariableOp+^batch_normalization_3/mul_1/ReadVariableOp+^batch_normalization_3/mul_2/ReadVariableOp)^batch_normalization_3/sub/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp;^random_contrast_1/stateful_uniform_full_int/RngReadAndSkipA^random_contrast_1/stateless_random_uniform/StatelessRandomGetAlgH^random_contrast_1/stateless_random_uniform/StatelessRandomGetKeyCounter7^random_flip_2/stateful_uniform_full_int/RngReadAndSkip^^random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlge^random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter2^random_rotation_1/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesu
s:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_2%batch_normalization/AssignMovingAvg_22l
4batch_normalization/AssignMovingAvg_2/ReadVariableOp4batch_normalization/AssignMovingAvg_2/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_3%batch_normalization/AssignMovingAvg_32l
4batch_normalization/AssignMovingAvg_3/ReadVariableOp4batch_normalization/AssignMovingAvg_3/ReadVariableOp2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2X
*batch_normalization/Maximum/ReadVariableOp*batch_normalization/Maximum/ReadVariableOp2H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2T
(batch_normalization/add_1/ReadVariableOp(batch_normalization/add_1/ReadVariableOp2P
&batch_normalization/mul/ReadVariableOp&batch_normalization/mul/ReadVariableOp2T
(batch_normalization/mul_1/ReadVariableOp(batch_normalization/mul_1/ReadVariableOp2T
(batch_normalization/mul_2/ReadVariableOp(batch_normalization/mul_2/ReadVariableOp2P
&batch_normalization/sub/ReadVariableOp&batch_normalization/sub/ReadVariableOp2N
%batch_normalization_1/AssignMovingAvg%batch_normalization_1/AssignMovingAvg2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_1'batch_normalization_1/AssignMovingAvg_12p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_2'batch_normalization_1/AssignMovingAvg_22p
6batch_normalization_1/AssignMovingAvg_2/ReadVariableOp6batch_normalization_1/AssignMovingAvg_2/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_3'batch_normalization_1/AssignMovingAvg_32p
6batch_normalization_1/AssignMovingAvg_3/ReadVariableOp6batch_normalization_1/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2\
,batch_normalization_1/Maximum/ReadVariableOp,batch_normalization_1/Maximum/ReadVariableOp2L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2X
*batch_normalization_1/add_1/ReadVariableOp*batch_normalization_1/add_1/ReadVariableOp2T
(batch_normalization_1/mul/ReadVariableOp(batch_normalization_1/mul/ReadVariableOp2X
*batch_normalization_1/mul_1/ReadVariableOp*batch_normalization_1/mul_1/ReadVariableOp2X
*batch_normalization_1/mul_2/ReadVariableOp*batch_normalization_1/mul_2/ReadVariableOp2T
(batch_normalization_1/sub/ReadVariableOp(batch_normalization_1/sub/ReadVariableOp2N
%batch_normalization_2/AssignMovingAvg%batch_normalization_2/AssignMovingAvg2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_2/AssignMovingAvg_1'batch_normalization_2/AssignMovingAvg_12p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_2/AssignMovingAvg_2'batch_normalization_2/AssignMovingAvg_22p
6batch_normalization_2/AssignMovingAvg_2/ReadVariableOp6batch_normalization_2/AssignMovingAvg_2/ReadVariableOp2R
'batch_normalization_2/AssignMovingAvg_3'batch_normalization_2/AssignMovingAvg_32p
6batch_normalization_2/AssignMovingAvg_3/ReadVariableOp6batch_normalization_2/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2\
,batch_normalization_2/Maximum/ReadVariableOp,batch_normalization_2/Maximum/ReadVariableOp2L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2X
*batch_normalization_2/add_1/ReadVariableOp*batch_normalization_2/add_1/ReadVariableOp2T
(batch_normalization_2/mul/ReadVariableOp(batch_normalization_2/mul/ReadVariableOp2X
*batch_normalization_2/mul_1/ReadVariableOp*batch_normalization_2/mul_1/ReadVariableOp2X
*batch_normalization_2/mul_2/ReadVariableOp*batch_normalization_2/mul_2/ReadVariableOp2T
(batch_normalization_2/sub/ReadVariableOp(batch_normalization_2/sub/ReadVariableOp2N
%batch_normalization_3/AssignMovingAvg%batch_normalization_3/AssignMovingAvg2l
4batch_normalization_3/AssignMovingAvg/ReadVariableOp4batch_normalization_3/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_3/AssignMovingAvg_1'batch_normalization_3/AssignMovingAvg_12p
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_3/AssignMovingAvg_2'batch_normalization_3/AssignMovingAvg_22p
6batch_normalization_3/AssignMovingAvg_2/ReadVariableOp6batch_normalization_3/AssignMovingAvg_2/ReadVariableOp2R
'batch_normalization_3/AssignMovingAvg_3'batch_normalization_3/AssignMovingAvg_32p
6batch_normalization_3/AssignMovingAvg_3/ReadVariableOp6batch_normalization_3/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_3/AssignNewValue$batch_normalization_3/AssignNewValue2\
,batch_normalization_3/Maximum/ReadVariableOp,batch_normalization_3/Maximum/ReadVariableOp2L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2X
*batch_normalization_3/add_1/ReadVariableOp*batch_normalization_3/add_1/ReadVariableOp2T
(batch_normalization_3/mul/ReadVariableOp(batch_normalization_3/mul/ReadVariableOp2X
*batch_normalization_3/mul_1/ReadVariableOp*batch_normalization_3/mul_1/ReadVariableOp2X
*batch_normalization_3/mul_2/ReadVariableOp*batch_normalization_3/mul_2/ReadVariableOp2T
(batch_normalization_3/sub/ReadVariableOp(batch_normalization_3/sub/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2x
:random_contrast_1/stateful_uniform_full_int/RngReadAndSkip:random_contrast_1/stateful_uniform_full_int/RngReadAndSkip2
@random_contrast_1/stateless_random_uniform/StatelessRandomGetAlg@random_contrast_1/stateless_random_uniform/StatelessRandomGetAlg2
Grandom_contrast_1/stateless_random_uniform/StatelessRandomGetKeyCounterGrandom_contrast_1/stateless_random_uniform/StatelessRandomGetKeyCounter2p
6random_flip_2/stateful_uniform_full_int/RngReadAndSkip6random_flip_2/stateful_uniform_full_int/RngReadAndSkip2¾
]random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg]random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2Ì
drandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterdrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter2f
1random_rotation_1/stateful_uniform/RngReadAndSkip1random_rotation_1/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­[
¾
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_31369

inputs-
maximum_readvariableop_resource:@)
sub_readvariableop_resource:@)
mul_readvariableop_resource:@+
add_1_readvariableop_resource:@7
)assignmovingavg_2_readvariableop_resource:@7
)assignmovingavg_3_readvariableop_resource:@%
assignnewvalue_resource:@

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@2
moments/StopGradient¾
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indicesº
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:@2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:@2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:@2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:@2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:@2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:@2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay 
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:@2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:@2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decayª
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:@2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:@2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decayª
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:@2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype02
ReadVariableOp¦
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:@2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:@2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
­[
¾
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_27416

inputs-
maximum_readvariableop_resource:@)
sub_readvariableop_resource:@)
mul_readvariableop_resource:@+
add_1_readvariableop_resource:@7
)assignmovingavg_2_readvariableop_resource:@7
)assignmovingavg_3_readvariableop_resource:@%
assignnewvalue_resource:@

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@2
moments/StopGradient¾
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indicesº
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:@2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:@2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:@2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:@2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:@2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:@2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay 
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:@2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:@2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decayª
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:@2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:@2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decayª
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:@2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype02
ReadVariableOp¦
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:@2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:@2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÿZ
Å
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_28560

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:2
moments/StopGradient­
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices»
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay¡
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1{

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥
­
N__inference_batch_normalization_layer_call_and_return_conditional_losses_31091

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1x
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷
M
1__inference_random_rotation_1_layer_call_fn_30777

inputs
identity×
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_281362
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_31203

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÊZ
¼
N__inference_batch_normalization_layer_call_and_return_conditional_losses_28942

inputs-
maximum_readvariableop_resource:)
sub_readvariableop_resource:)
mul_readvariableop_resource:+
add_1_readvariableop_resource:7
)assignmovingavg_2_readvariableop_resource:7
)assignmovingavg_3_readvariableop_resource:%
assignnewvalue_resource:

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:2
moments/StopGradient®
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indicesº
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay 
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decayª
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decayª
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:*
dtype02
ReadVariableOp¦
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1|

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
 
(__inference_conv2d_2_layer_call_fn_31773

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_282822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ª
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_31819

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
I
-__inference_max_pooling2d_layer_call_fn_31198

inputs
identityÑ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_281882
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
É	
Ô
5__inference_batch_normalization_3_layer_call_fn_31837

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall¸
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_278772
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿Z
¾
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_31466

inputs-
maximum_readvariableop_resource:@)
sub_readvariableop_resource:@)
mul_readvariableop_resource:@+
add_1_readvariableop_resource:@7
)assignmovingavg_2_readvariableop_resource:@7
)assignmovingavg_3_readvariableop_resource:@%
assignnewvalue_resource:@

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@2
moments/StopGradient¬
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indicesº
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:@2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:@2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:@2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:@2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:@2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:@2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay 
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:@2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:@2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decayª
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:@2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:@2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decayª
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:@2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype02
ReadVariableOp¦
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:@2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:@2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
batchnorm/add_1z

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ@@@: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@
 
_user_specified_nameinputs
í[
Å
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_27980

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices»
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay¡
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_28240

inputs
identity
MaxPoolMaxPoolinputs*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
ì
ú
A__inference_conv2d_layer_call_and_return_conditional_losses_31188

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddAddV2Conv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd]
ReluReluBiasAdd:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿Z
¾
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_28818

inputs-
maximum_readvariableop_resource:@)
sub_readvariableop_resource:@)
mul_readvariableop_resource:@+
add_1_readvariableop_resource:@7
)assignmovingavg_2_readvariableop_resource:@7
)assignmovingavg_3_readvariableop_resource:@%
assignnewvalue_resource:@

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@2
moments/StopGradient¬
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indicesº
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:@2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:@2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:@2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:@2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:@2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:@2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay 
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:@2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:@2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decayª
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:@2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:@2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decayª
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:@2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype02
ReadVariableOp¦
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:@2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:@2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
batchnorm/add_1z

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ@@@: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@
 
_user_specified_nameinputs
®
³
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_31687

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
batchnorm/add_1w
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ  : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs

³
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_27595

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

IdentityÂ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î
ÿ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_31784

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddAddV2Conv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Ø
K
/__inference_max_pooling2d_1_layer_call_fn_31491

inputs
identityî
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_275582
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿZ
Å
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_28694

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:2
moments/StopGradient­
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices»
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay¡
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decay«
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decay«
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
ReadVariableOp§
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
batchnorm/add_1{

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ  : : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ê
þ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_28230

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddAddV2Conv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2	
BiasAdd\
ReluReluBiasAdd:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@
 
_user_specified_nameinputs
ú

ó
B__inference_dense_1_layer_call_and_return_conditional_losses_28376

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddAddV2MatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd\
SigmoidSigmoidBiasAdd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
âf
þ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_29160

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity¢(stateful_uniform_full_int/RngReadAndSkip¢Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg¢Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:2!
stateful_uniform_full_int/shape
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
stateful_uniform_full_int/Const½
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 2 
stateful_uniform_full_int/Prod
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2"
 stateful_uniform_full_int/Cast/x¥
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 stateful_uniform_full_int/Cast_1
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:2*
(stateful_uniform_full_int/RngReadAndSkip¨
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-stateful_uniform_full_int/strided_slice/stack¬
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_1¬
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice/stack_2
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2)
'stateful_uniform_full_int/strided_slice´
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type02#
!stateful_uniform_full_int/Bitcast¬
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/stateful_uniform_full_int/strided_slice_1/stack°
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_1°
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1stateful_uniform_full_int/strided_slice_1/stack_2ü
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2+
)stateful_uniform_full_int/strided_slice_1º
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02%
#stateful_uniform_full_int/Bitcast_1
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :2
stateful_uniform_full_int/alg®
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	2
stateful_uniform_full_intb

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 2

zeros_like
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:2
stack{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask2
strided_sliceÕ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3stateless_random_flip_left_right/control_dependency¼
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2(
&stateless_random_flip_left_right/Shape¶
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4stateless_random_flip_left_right/strided_slice/stackº
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_1º
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6stateless_random_flip_left_right/strided_slice/stack_2¨
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.stateless_random_flip_left_right/strided_sliceñ
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2A
?stateless_random_flip_left_right/stateless_random_uniform/shapeÃ
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2?
=stateless_random_flip_left_right/stateless_random_uniform/minÃ
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2?
=stateless_random_flip_left_right/stateless_random_uniform/max
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::2X
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter¬
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgStatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*
_output_shapes
: 2Q
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgÊ
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ustateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg:alg:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2¶
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 2?
=stateless_random_flip_left_right/stateless_random_uniform/subÓ
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2?
=stateless_random_flip_left_right/stateless_random_uniform/mul¸
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9stateless_random_flip_left_right/stateless_random_uniform¦
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/1¦
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/2¦
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0stateless_random_flip_left_right/Reshape/shape/3
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.stateless_random_flip_left_right/Reshape/shape
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(stateless_random_flip_left_right/ReshapeÆ
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&stateless_random_flip_left_right/Round¬
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:21
/stateless_random_flip_left_right/ReverseV2/axis
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*stateless_random_flip_left_right/ReverseV2ð
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$stateless_random_flip_left_right/mul
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&stateless_random_flip_left_right/sub/xê
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$stateless_random_flip_left_right/subû
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&stateless_random_flip_left_right/mul_1ç
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$stateless_random_flip_left_right/add
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¤
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkipP^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgW^stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2¢
Ostateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlgOstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetAlg2°
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterVstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_31501

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
I
-__inference_random_flip_2_layer_call_fn_30703

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_281302
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_28309

inputs
identity
MaxPoolMaxPoolinputs*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ª
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_27558

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À´
¼)
__inference__traced_save_32447
file_prefix8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop@
<savev2_batch_normalization_moving_stddev_read_readvariableop>
:savev2_batch_normalization_renorm_mean_read_readvariableop@
<savev2_batch_normalization_renorm_stddev_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableopB
>savev2_batch_normalization_1_moving_stddev_read_readvariableop@
<savev2_batch_normalization_1_renorm_mean_read_readvariableopB
>savev2_batch_normalization_1_renorm_stddev_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableopB
>savev2_batch_normalization_2_moving_stddev_read_readvariableop@
<savev2_batch_normalization_2_renorm_mean_read_readvariableopB
>savev2_batch_normalization_2_renorm_stddev_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableopB
>savev2_batch_normalization_3_moving_stddev_read_readvariableop@
<savev2_batch_normalization_3_renorm_mean_read_readvariableopB
>savev2_batch_normalization_3_renorm_stddev_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	)
%savev2_variable_2_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_3_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_3_beta_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_3_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_3_beta_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
ShardedFilename2
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:]*
dtype0*¨1
value1B1]B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-7/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-7/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB2layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÅ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:]*
dtype0*Ï
valueÅBÂ]B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices÷'
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop<savev2_batch_normalization_moving_stddev_read_readvariableop:savev2_batch_normalization_renorm_mean_read_readvariableop<savev2_batch_normalization_renorm_stddev_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop>savev2_batch_normalization_1_moving_stddev_read_readvariableop<savev2_batch_normalization_1_renorm_mean_read_readvariableop>savev2_batch_normalization_1_renorm_stddev_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop>savev2_batch_normalization_2_moving_stddev_read_readvariableop<savev2_batch_normalization_2_renorm_mean_read_readvariableop>savev2_batch_normalization_2_renorm_stddev_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop>savev2_batch_normalization_3_moving_stddev_read_readvariableop<savev2_batch_normalization_3_renorm_mean_read_readvariableop>savev2_batch_normalization_3_renorm_stddev_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop<savev2_adam_batch_normalization_1_beta_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop<savev2_adam_batch_normalization_2_beta_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop=savev2_adam_batch_normalization_3_gamma_m_read_readvariableop<savev2_adam_batch_normalization_3_beta_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop<savev2_adam_batch_normalization_1_beta_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop<savev2_adam_batch_normalization_2_beta_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop=savev2_adam_batch_normalization_3_gamma_v_read_readvariableop<savev2_adam_batch_normalization_3_beta_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *k
dtypesa
_2]				2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*ù
_input_shapesç
ä: ::::::::@:@:@:@:@:@:@:@:@:@::::::::::::::::::::
:::: : : : : :::: : : : :::@:@:@:@:@::::::::::
::::::@:@:@:@:@::::::::::
:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:@: 	
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
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::!
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
::!#

_output_shapes	
::!$

_output_shapes	
::&%"
 
_output_shapes
:
: &

_output_shapes
::$' 

_output_shapes

:: (

_output_shapes
::)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: : .

_output_shapes
:: /

_output_shapes
:: 0

_output_shapes
::1
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
: : 5

_output_shapes
:: 6

_output_shapes
::,7(
&
_output_shapes
:@: 8

_output_shapes
:@: 9

_output_shapes
:@: :

_output_shapes
:@:-;)
'
_output_shapes
:@:!<

_output_shapes	
::!=

_output_shapes	
::!>

_output_shapes	
::.?*
(
_output_shapes
::!@

_output_shapes	
::.A*
(
_output_shapes
::!B

_output_shapes	
::!C

_output_shapes	
::!D

_output_shapes	
::&E"
 
_output_shapes
:
: F

_output_shapes
::$G 

_output_shapes

:: H

_output_shapes
:: I

_output_shapes
:: J

_output_shapes
::,K(
&
_output_shapes
:@: L

_output_shapes
:@: M

_output_shapes
:@: N

_output_shapes
:@:-O)
'
_output_shapes
:@:!P

_output_shapes	
::!Q

_output_shapes	
::!R

_output_shapes	
::.S*
(
_output_shapes
::!T

_output_shapes	
::.U*
(
_output_shapes
::!V

_output_shapes	
::!W

_output_shapes	
::!X

_output_shapes	
::&Y"
 
_output_shapes
:
: Z

_output_shapes
::$[ 

_output_shapes

:: \

_output_shapes
::]

_output_shapes
: 
«[
¼
N__inference_batch_normalization_layer_call_and_return_conditional_losses_27134

inputs-
maximum_readvariableop_resource:)
sub_readvariableop_resource:)
mul_readvariableop_resource:+
add_1_readvariableop_resource:7
)assignmovingavg_2_readvariableop_resource:7
)assignmovingavg_3_readvariableop_resource:%
assignnewvalue_resource:

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:2
moments/StopGradient¾
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indicesº
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:2	
truediv
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:2

Identity_2s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mulÈ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:2

Identity_3w
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay 
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mulØ
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:2

Identity_4

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:2

renorm_d
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
add_1w
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_2/decayª
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_2/sub
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_2/mulÉ
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_2W
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:2
Sqrt_2w
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_3/decayª
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:2
AssignMovingAvg_3/sub
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_3/mulÉ
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_3
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:*
dtype02
ReadVariableOp¦
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:2
Relu
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_6Ð
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
µ<
!__inference__traced_restore_32733
file_prefix8
*assignvariableop_batch_normalization_gamma:9
+assignvariableop_1_batch_normalization_beta:@
2assignvariableop_2_batch_normalization_moving_mean:D
6assignvariableop_3_batch_normalization_moving_variance:B
4assignvariableop_4_batch_normalization_moving_stddev:@
2assignvariableop_5_batch_normalization_renorm_mean:B
4assignvariableop_6_batch_normalization_renorm_stddev::
 assignvariableop_7_conv2d_kernel:@,
assignvariableop_8_conv2d_bias:@<
.assignvariableop_9_batch_normalization_1_gamma:@<
.assignvariableop_10_batch_normalization_1_beta:@C
5assignvariableop_11_batch_normalization_1_moving_mean:@G
9assignvariableop_12_batch_normalization_1_moving_variance:@E
7assignvariableop_13_batch_normalization_1_moving_stddev:@C
5assignvariableop_14_batch_normalization_1_renorm_mean:@E
7assignvariableop_15_batch_normalization_1_renorm_stddev:@>
#assignvariableop_16_conv2d_1_kernel:@0
!assignvariableop_17_conv2d_1_bias:	>
/assignvariableop_18_batch_normalization_2_gamma:	=
.assignvariableop_19_batch_normalization_2_beta:	D
5assignvariableop_20_batch_normalization_2_moving_mean:	H
9assignvariableop_21_batch_normalization_2_moving_variance:	F
7assignvariableop_22_batch_normalization_2_moving_stddev:	D
5assignvariableop_23_batch_normalization_2_renorm_mean:	F
7assignvariableop_24_batch_normalization_2_renorm_stddev:	?
#assignvariableop_25_conv2d_2_kernel:0
!assignvariableop_26_conv2d_2_bias:	?
#assignvariableop_27_conv2d_3_kernel:0
!assignvariableop_28_conv2d_3_bias:	>
/assignvariableop_29_batch_normalization_3_gamma:	=
.assignvariableop_30_batch_normalization_3_beta:	D
5assignvariableop_31_batch_normalization_3_moving_mean:	H
9assignvariableop_32_batch_normalization_3_moving_variance:	F
7assignvariableop_33_batch_normalization_3_moving_stddev:	D
5assignvariableop_34_batch_normalization_3_renorm_mean:	F
7assignvariableop_35_batch_normalization_3_renorm_stddev:	4
 assignvariableop_36_dense_kernel:
,
assignvariableop_37_dense_bias:4
"assignvariableop_38_dense_1_kernel:.
 assignvariableop_39_dense_1_bias:'
assignvariableop_40_adam_iter:	 )
assignvariableop_41_adam_beta_1: )
assignvariableop_42_adam_beta_2: (
assignvariableop_43_adam_decay: 0
&assignvariableop_44_adam_learning_rate: *
assignvariableop_45_variable:	,
assignvariableop_46_variable_1:	,
assignvariableop_47_variable_2:	#
assignvariableop_48_total: #
assignvariableop_49_count: %
assignvariableop_50_total_1: %
assignvariableop_51_count_1: B
4assignvariableop_52_adam_batch_normalization_gamma_m:A
3assignvariableop_53_adam_batch_normalization_beta_m:B
(assignvariableop_54_adam_conv2d_kernel_m:@4
&assignvariableop_55_adam_conv2d_bias_m:@D
6assignvariableop_56_adam_batch_normalization_1_gamma_m:@C
5assignvariableop_57_adam_batch_normalization_1_beta_m:@E
*assignvariableop_58_adam_conv2d_1_kernel_m:@7
(assignvariableop_59_adam_conv2d_1_bias_m:	E
6assignvariableop_60_adam_batch_normalization_2_gamma_m:	D
5assignvariableop_61_adam_batch_normalization_2_beta_m:	F
*assignvariableop_62_adam_conv2d_2_kernel_m:7
(assignvariableop_63_adam_conv2d_2_bias_m:	F
*assignvariableop_64_adam_conv2d_3_kernel_m:7
(assignvariableop_65_adam_conv2d_3_bias_m:	E
6assignvariableop_66_adam_batch_normalization_3_gamma_m:	D
5assignvariableop_67_adam_batch_normalization_3_beta_m:	;
'assignvariableop_68_adam_dense_kernel_m:
3
%assignvariableop_69_adam_dense_bias_m:;
)assignvariableop_70_adam_dense_1_kernel_m:5
'assignvariableop_71_adam_dense_1_bias_m:B
4assignvariableop_72_adam_batch_normalization_gamma_v:A
3assignvariableop_73_adam_batch_normalization_beta_v:B
(assignvariableop_74_adam_conv2d_kernel_v:@4
&assignvariableop_75_adam_conv2d_bias_v:@D
6assignvariableop_76_adam_batch_normalization_1_gamma_v:@C
5assignvariableop_77_adam_batch_normalization_1_beta_v:@E
*assignvariableop_78_adam_conv2d_1_kernel_v:@7
(assignvariableop_79_adam_conv2d_1_bias_v:	E
6assignvariableop_80_adam_batch_normalization_2_gamma_v:	D
5assignvariableop_81_adam_batch_normalization_2_beta_v:	F
*assignvariableop_82_adam_conv2d_2_kernel_v:7
(assignvariableop_83_adam_conv2d_2_bias_v:	F
*assignvariableop_84_adam_conv2d_3_kernel_v:7
(assignvariableop_85_adam_conv2d_3_bias_v:	E
6assignvariableop_86_adam_batch_normalization_3_gamma_v:	D
5assignvariableop_87_adam_batch_normalization_3_beta_v:	;
'assignvariableop_88_adam_dense_kernel_v:
3
%assignvariableop_89_adam_dense_bias_v:;
)assignvariableop_90_adam_dense_1_kernel_v:5
'assignvariableop_91_adam_dense_1_bias_v:
identity_93¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_83¢AssignVariableOp_84¢AssignVariableOp_85¢AssignVariableOp_86¢AssignVariableOp_87¢AssignVariableOp_88¢AssignVariableOp_89¢AssignVariableOp_9¢AssignVariableOp_90¢AssignVariableOp_912
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:]*
dtype0*¨1
value1B1]B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-7/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-7/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB2layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesË
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:]*
dtype0*Ï
valueÅBÂ]B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesÿ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes÷
ô:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*k
dtypesa
_2]				2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity©
AssignVariableOpAssignVariableOp*assignvariableop_batch_normalization_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1°
AssignVariableOp_1AssignVariableOp+assignvariableop_1_batch_normalization_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2·
AssignVariableOp_2AssignVariableOp2assignvariableop_2_batch_normalization_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3»
AssignVariableOp_3AssignVariableOp6assignvariableop_3_batch_normalization_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¹
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_moving_stddevIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5·
AssignVariableOp_5AssignVariableOp2assignvariableop_5_batch_normalization_renorm_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¹
AssignVariableOp_6AssignVariableOp4assignvariableop_6_batch_normalization_renorm_stddevIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8£
AssignVariableOp_8AssignVariableOpassignvariableop_8_conv2d_biasIdentity_8:output:0"/device:CPU:0*
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
Identity_10¶
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
Identity_12Á
AssignVariableOp_12AssignVariableOp9assignvariableop_12_batch_normalization_1_moving_varianceIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¿
AssignVariableOp_13AssignVariableOp7assignvariableop_13_batch_normalization_1_moving_stddevIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14½
AssignVariableOp_14AssignVariableOp5assignvariableop_14_batch_normalization_1_renorm_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¿
AssignVariableOp_15AssignVariableOp7assignvariableop_15_batch_normalization_1_renorm_stddevIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16«
AssignVariableOp_16AssignVariableOp#assignvariableop_16_conv2d_1_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17©
AssignVariableOp_17AssignVariableOp!assignvariableop_17_conv2d_1_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18·
AssignVariableOp_18AssignVariableOp/assignvariableop_18_batch_normalization_2_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¶
AssignVariableOp_19AssignVariableOp.assignvariableop_19_batch_normalization_2_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20½
AssignVariableOp_20AssignVariableOp5assignvariableop_20_batch_normalization_2_moving_meanIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Á
AssignVariableOp_21AssignVariableOp9assignvariableop_21_batch_normalization_2_moving_varianceIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¿
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_2_moving_stddevIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23½
AssignVariableOp_23AssignVariableOp5assignvariableop_23_batch_normalization_2_renorm_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¿
AssignVariableOp_24AssignVariableOp7assignvariableop_24_batch_normalization_2_renorm_stddevIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25«
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_2_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26©
AssignVariableOp_26AssignVariableOp!assignvariableop_26_conv2d_2_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27«
AssignVariableOp_27AssignVariableOp#assignvariableop_27_conv2d_3_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28©
AssignVariableOp_28AssignVariableOp!assignvariableop_28_conv2d_3_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29·
AssignVariableOp_29AssignVariableOp/assignvariableop_29_batch_normalization_3_gammaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¶
AssignVariableOp_30AssignVariableOp.assignvariableop_30_batch_normalization_3_betaIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31½
AssignVariableOp_31AssignVariableOp5assignvariableop_31_batch_normalization_3_moving_meanIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Á
AssignVariableOp_32AssignVariableOp9assignvariableop_32_batch_normalization_3_moving_varianceIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33¿
AssignVariableOp_33AssignVariableOp7assignvariableop_33_batch_normalization_3_moving_stddevIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34½
AssignVariableOp_34AssignVariableOp5assignvariableop_34_batch_normalization_3_renorm_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35¿
AssignVariableOp_35AssignVariableOp7assignvariableop_35_batch_normalization_3_renorm_stddevIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36¨
AssignVariableOp_36AssignVariableOp assignvariableop_36_dense_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37¦
AssignVariableOp_37AssignVariableOpassignvariableop_37_dense_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38ª
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
T0	*
_output_shapes
:2
Identity_40¥
AssignVariableOp_40AssignVariableOpassignvariableop_40_adam_iterIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41§
AssignVariableOp_41AssignVariableOpassignvariableop_41_adam_beta_1Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42§
AssignVariableOp_42AssignVariableOpassignvariableop_42_adam_beta_2Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43¦
AssignVariableOp_43AssignVariableOpassignvariableop_43_adam_decayIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44®
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_learning_rateIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_45¤
AssignVariableOp_45AssignVariableOpassignvariableop_45_variableIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_46¦
AssignVariableOp_46AssignVariableOpassignvariableop_46_variable_1Identity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_47¦
AssignVariableOp_47AssignVariableOpassignvariableop_47_variable_2Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48¡
AssignVariableOp_48AssignVariableOpassignvariableop_48_totalIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49¡
AssignVariableOp_49AssignVariableOpassignvariableop_49_countIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50£
AssignVariableOp_50AssignVariableOpassignvariableop_50_total_1Identity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51£
AssignVariableOp_51AssignVariableOpassignvariableop_51_count_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52¼
AssignVariableOp_52AssignVariableOp4assignvariableop_52_adam_batch_normalization_gamma_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53»
AssignVariableOp_53AssignVariableOp3assignvariableop_53_adam_batch_normalization_beta_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54°
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_conv2d_kernel_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55®
AssignVariableOp_55AssignVariableOp&assignvariableop_55_adam_conv2d_bias_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56¾
AssignVariableOp_56AssignVariableOp6assignvariableop_56_adam_batch_normalization_1_gamma_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57½
AssignVariableOp_57AssignVariableOp5assignvariableop_57_adam_batch_normalization_1_beta_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58²
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_conv2d_1_kernel_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59°
AssignVariableOp_59AssignVariableOp(assignvariableop_59_adam_conv2d_1_bias_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60¾
AssignVariableOp_60AssignVariableOp6assignvariableop_60_adam_batch_normalization_2_gamma_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61½
AssignVariableOp_61AssignVariableOp5assignvariableop_61_adam_batch_normalization_2_beta_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62²
AssignVariableOp_62AssignVariableOp*assignvariableop_62_adam_conv2d_2_kernel_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63°
AssignVariableOp_63AssignVariableOp(assignvariableop_63_adam_conv2d_2_bias_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64²
AssignVariableOp_64AssignVariableOp*assignvariableop_64_adam_conv2d_3_kernel_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65°
AssignVariableOp_65AssignVariableOp(assignvariableop_65_adam_conv2d_3_bias_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66¾
AssignVariableOp_66AssignVariableOp6assignvariableop_66_adam_batch_normalization_3_gamma_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67½
AssignVariableOp_67AssignVariableOp5assignvariableop_67_adam_batch_normalization_3_beta_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68¯
AssignVariableOp_68AssignVariableOp'assignvariableop_68_adam_dense_kernel_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69­
AssignVariableOp_69AssignVariableOp%assignvariableop_69_adam_dense_bias_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70±
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_dense_1_kernel_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71¯
AssignVariableOp_71AssignVariableOp'assignvariableop_71_adam_dense_1_bias_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72¼
AssignVariableOp_72AssignVariableOp4assignvariableop_72_adam_batch_normalization_gamma_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73»
AssignVariableOp_73AssignVariableOp3assignvariableop_73_adam_batch_normalization_beta_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74°
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_conv2d_kernel_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75®
AssignVariableOp_75AssignVariableOp&assignvariableop_75_adam_conv2d_bias_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76¾
AssignVariableOp_76AssignVariableOp6assignvariableop_76_adam_batch_normalization_1_gamma_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77½
AssignVariableOp_77AssignVariableOp5assignvariableop_77_adam_batch_normalization_1_beta_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78²
AssignVariableOp_78AssignVariableOp*assignvariableop_78_adam_conv2d_1_kernel_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79°
AssignVariableOp_79AssignVariableOp(assignvariableop_79_adam_conv2d_1_bias_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80¾
AssignVariableOp_80AssignVariableOp6assignvariableop_80_adam_batch_normalization_2_gamma_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81½
AssignVariableOp_81AssignVariableOp5assignvariableop_81_adam_batch_normalization_2_beta_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82²
AssignVariableOp_82AssignVariableOp*assignvariableop_82_adam_conv2d_2_kernel_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83°
AssignVariableOp_83AssignVariableOp(assignvariableop_83_adam_conv2d_2_bias_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84²
AssignVariableOp_84AssignVariableOp*assignvariableop_84_adam_conv2d_3_kernel_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85°
AssignVariableOp_85AssignVariableOp(assignvariableop_85_adam_conv2d_3_bias_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86¾
AssignVariableOp_86AssignVariableOp6assignvariableop_86_adam_batch_normalization_3_gamma_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87½
AssignVariableOp_87AssignVariableOp5assignvariableop_87_adam_batch_normalization_3_beta_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88¯
AssignVariableOp_88AssignVariableOp'assignvariableop_88_adam_dense_kernel_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89­
AssignVariableOp_89AssignVariableOp%assignvariableop_89_adam_dense_bias_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90±
AssignVariableOp_90AssignVariableOp)assignvariableop_90_adam_dense_1_kernel_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91¯
AssignVariableOp_91AssignVariableOp'assignvariableop_91_adam_dense_1_bias_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_919
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÆ
Identity_92Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_92f
Identity_93IdentityIdentity_92:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_93®
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_93Identity_93:output:0*Ï
_input_shapes½
º: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_91AssignVariableOp_91:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ô
I
-__inference_max_pooling2d_layer_call_fn_31193

inputs
identityì
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_272762
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*´
serving_default 
E
input_1:
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ;
dense_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Óù
Ñ
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer_with_weights-8
layer-15
layer_with_weights-9
layer-16
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
¤_default_save_signature
¥__call__
+¦&call_and_return_all_conditional_losses"
_tf_keras_sequential
±
_rng
	variables
trainable_variables
regularization_losses
	keras_api
§__call__
+¨&call_and_return_all_conditional_losses"
_tf_keras_layer
±
_rng
	variables
trainable_variables
 regularization_losses
!	keras_api
©__call__
+ª&call_and_return_all_conditional_losses"
_tf_keras_layer
±
"_rng
#	variables
$trainable_variables
%regularization_losses
&	keras_api
«__call__
+¬&call_and_return_all_conditional_losses"
_tf_keras_layer
¸
'renorm_clipping
(axis
	)gamma
*beta
+moving_mean
,moving_variance
-moving_stddev
.renorm_mean
/renorm_stddev
0	variables
1trainable_variables
2regularization_losses
3	keras_api
­__call__
+®&call_and_return_all_conditional_losses"
_tf_keras_layer
½

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
¯__call__
+°&call_and_return_all_conditional_losses"
_tf_keras_layer
§
:	variables
;trainable_variables
<regularization_losses
=	keras_api
±__call__
+²&call_and_return_all_conditional_losses"
_tf_keras_layer
¸
>renorm_clipping
?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance
Dmoving_stddev
Erenorm_mean
Frenorm_stddev
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
³__call__
+´&call_and_return_all_conditional_losses"
_tf_keras_layer
½

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
µ__call__
+¶&call_and_return_all_conditional_losses"
_tf_keras_layer
§
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
·__call__
+¸&call_and_return_all_conditional_losses"
_tf_keras_layer
¸
Urenorm_clipping
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
[moving_stddev
\renorm_mean
]renorm_stddev
^	variables
_trainable_variables
`regularization_losses
a	keras_api
¹__call__
+º&call_and_return_all_conditional_losses"
_tf_keras_layer
½

bkernel
cbias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
»__call__
+¼&call_and_return_all_conditional_losses"
_tf_keras_layer
½

hkernel
ibias
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
½__call__
+¾&call_and_return_all_conditional_losses"
_tf_keras_layer
§
n	variables
otrainable_variables
pregularization_losses
q	keras_api
¿__call__
+À&call_and_return_all_conditional_losses"
_tf_keras_layer
¸
rrenorm_clipping
saxis
	tgamma
ubeta
vmoving_mean
wmoving_variance
xmoving_stddev
yrenorm_mean
zrenorm_stddev
{	variables
|trainable_variables
}regularization_losses
~	keras_api
Á__call__
+Â&call_and_return_all_conditional_losses"
_tf_keras_layer
ª
	variables
trainable_variables
regularization_losses
	keras_api
Ã__call__
+Ä&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
Å__call__
+Æ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses"
_tf_keras_layer
ð
	iter
beta_1
beta_2

decay
learning_rate)mü*mý4mþ5mÿ@mAmKmLmWmXmbmcmhmimtmum	m	m	m	m)v*v4v5v@vAvKvLvWvXvbvcvhvivtvuv	v 	v¡	v¢	v£"
	optimizer
Ú
)0
*1
+2
,3
-4
.5
/6
47
58
@9
A10
B11
C12
D13
E14
F15
K16
L17
W18
X19
Y20
Z21
[22
\23
]24
b25
c26
h27
i28
t29
u30
v31
w32
x33
y34
z35
36
37
38
39"
trackable_list_wrapper
º
)0
*1
42
53
@4
A5
K6
L7
W8
X9
b10
c11
h12
i13
t14
u15
16
17
18
19"
trackable_list_wrapper
 "
trackable_list_wrapper
Ó
metrics
 layer_regularization_losses
	variables
non_trainable_variables
layer_metrics
trainable_variables
regularization_losses
layers
¥__call__
¤_default_save_signature
+¦&call_and_return_all_conditional_losses
'¦"call_and_return_conditional_losses"
_generic_user_object
-
Éserving_default"
signature_map
/

_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
metrics
 layer_regularization_losses
non_trainable_variables
layer_metrics
	variables
trainable_variables
regularization_losses
layers
§__call__
+¨&call_and_return_all_conditional_losses
'¨"call_and_return_conditional_losses"
_generic_user_object
/

_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 metrics
 ¡layer_regularization_losses
¢non_trainable_variables
£layer_metrics
	variables
trainable_variables
 regularization_losses
¤layers
©__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses"
_generic_user_object
/
¥
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¦metrics
 §layer_regularization_losses
¨non_trainable_variables
©layer_metrics
#	variables
$trainable_variables
%regularization_losses
ªlayers
«__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
':%2batch_normalization/gamma
&:$2batch_normalization/beta
/:- (2batch_normalization/moving_mean
3:1 (2#batch_normalization/moving_variance
1:/ (2!batch_normalization/moving_stddev
/:- (2batch_normalization/renorm_mean
1:/ (2!batch_normalization/renorm_stddev
Q
)0
*1
+2
,3
-4
.5
/6"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
«metrics
 ¬layer_regularization_losses
­non_trainable_variables
®layer_metrics
0	variables
1trainable_variables
2regularization_losses
¯layers
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
':%@2conv2d/kernel
:@2conv2d/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
°metrics
 ±layer_regularization_losses
²non_trainable_variables
³layer_metrics
6	variables
7trainable_variables
8regularization_losses
´layers
¯__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
µmetrics
 ¶layer_regularization_losses
·non_trainable_variables
¸layer_metrics
:	variables
;trainable_variables
<regularization_losses
¹layers
±__call__
+²&call_and_return_all_conditional_losses
'²"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
):'@2batch_normalization_1/gamma
(:&@2batch_normalization_1/beta
1:/@ (2!batch_normalization_1/moving_mean
5:3@ (2%batch_normalization_1/moving_variance
3:1@ (2#batch_normalization_1/moving_stddev
1:/@ (2!batch_normalization_1/renorm_mean
3:1@ (2#batch_normalization_1/renorm_stddev
Q
@0
A1
B2
C3
D4
E5
F6"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ºmetrics
 »layer_regularization_losses
¼non_trainable_variables
½layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
¾layers
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses"
_generic_user_object
*:(@2conv2d_1/kernel
:2conv2d_1/bias
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¿metrics
 Àlayer_regularization_losses
Ánon_trainable_variables
Âlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Ãlayers
µ__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ämetrics
 Ålayer_regularization_losses
Ænon_trainable_variables
Çlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
Èlayers
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
*:(2batch_normalization_2/gamma
):'2batch_normalization_2/beta
2:0 (2!batch_normalization_2/moving_mean
6:4 (2%batch_normalization_2/moving_variance
4:2 (2#batch_normalization_2/moving_stddev
2:0 (2!batch_normalization_2/renorm_mean
4:2 (2#batch_normalization_2/renorm_stddev
Q
W0
X1
Y2
Z3
[4
\5
]6"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Émetrics
 Êlayer_regularization_losses
Ënon_trainable_variables
Ìlayer_metrics
^	variables
_trainable_variables
`regularization_losses
Ílayers
¹__call__
+º&call_and_return_all_conditional_losses
'º"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_2/kernel
:2conv2d_2/bias
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Îmetrics
 Ïlayer_regularization_losses
Ðnon_trainable_variables
Ñlayer_metrics
d	variables
etrainable_variables
fregularization_losses
Òlayers
»__call__
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_3/kernel
:2conv2d_3/bias
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ómetrics
 Ôlayer_regularization_losses
Õnon_trainable_variables
Ölayer_metrics
j	variables
ktrainable_variables
lregularization_losses
×layers
½__call__
+¾&call_and_return_all_conditional_losses
'¾"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ømetrics
 Ùlayer_regularization_losses
Únon_trainable_variables
Ûlayer_metrics
n	variables
otrainable_variables
pregularization_losses
Ülayers
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
*:(2batch_normalization_3/gamma
):'2batch_normalization_3/beta
2:0 (2!batch_normalization_3/moving_mean
6:4 (2%batch_normalization_3/moving_variance
4:2 (2#batch_normalization_3/moving_stddev
2:0 (2!batch_normalization_3/renorm_mean
4:2 (2#batch_normalization_3/renorm_stddev
Q
t0
u1
v2
w3
x4
y5
z6"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ýmetrics
 Þlayer_regularization_losses
ßnon_trainable_variables
àlayer_metrics
{	variables
|trainable_variables
}regularization_losses
álayers
Á__call__
+Â&call_and_return_all_conditional_losses
'Â"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
·
âmetrics
 ãlayer_regularization_losses
änon_trainable_variables
ålayer_metrics
	variables
trainable_variables
regularization_losses
ælayers
Ã__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses"
_generic_user_object
 :
2dense/kernel
:2
dense/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
çmetrics
 èlayer_regularization_losses
énon_trainable_variables
êlayer_metrics
	variables
trainable_variables
regularization_losses
ëlayers
Å__call__
+Æ&call_and_return_all_conditional_losses
'Æ"call_and_return_conditional_losses"
_generic_user_object
 :2dense_1/kernel
:2dense_1/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ìmetrics
 ílayer_regularization_losses
înon_trainable_variables
ïlayer_metrics
	variables
trainable_variables
regularization_losses
ðlayers
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
ñ0
ò1"
trackable_list_wrapper
 "
trackable_list_wrapper
¶
+0
,1
-2
.3
/4
B5
C6
D7
E8
F9
Y10
Z11
[12
\13
]14
v15
w16
x17
y18
z19"
trackable_list_wrapper
 "
trackable_dict_wrapper

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
16"
trackable_list_wrapper
:	2Variable
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
:	2Variable
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
:	2Variable
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
C
+0
,1
-2
.3
/4"
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
C
B0
C1
D2
E3
F4"
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
C
Y0
Z1
[2
\3
]4"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
v0
w1
x2
y3
z4"
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

ótotal

ôcount
õ	variables
ö	keras_api"
_tf_keras_metric
c

÷total

øcount
ù
_fn_kwargs
ú	variables
û	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
ó0
ô1"
trackable_list_wrapper
.
õ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
÷0
ø1"
trackable_list_wrapper
.
ú	variables"
_generic_user_object
,:*2 Adam/batch_normalization/gamma/m
+:)2Adam/batch_normalization/beta/m
,:*@2Adam/conv2d/kernel/m
:@2Adam/conv2d/bias/m
.:,@2"Adam/batch_normalization_1/gamma/m
-:+@2!Adam/batch_normalization_1/beta/m
/:-@2Adam/conv2d_1/kernel/m
!:2Adam/conv2d_1/bias/m
/:-2"Adam/batch_normalization_2/gamma/m
.:,2!Adam/batch_normalization_2/beta/m
0:.2Adam/conv2d_2/kernel/m
!:2Adam/conv2d_2/bias/m
0:.2Adam/conv2d_3/kernel/m
!:2Adam/conv2d_3/bias/m
/:-2"Adam/batch_normalization_3/gamma/m
.:,2!Adam/batch_normalization_3/beta/m
%:#
2Adam/dense/kernel/m
:2Adam/dense/bias/m
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
,:*2 Adam/batch_normalization/gamma/v
+:)2Adam/batch_normalization/beta/v
,:*@2Adam/conv2d/kernel/v
:@2Adam/conv2d/bias/v
.:,@2"Adam/batch_normalization_1/gamma/v
-:+@2!Adam/batch_normalization_1/beta/v
/:-@2Adam/conv2d_1/kernel/v
!:2Adam/conv2d_1/bias/v
/:-2"Adam/batch_normalization_2/gamma/v
.:,2!Adam/batch_normalization_2/beta/v
0:.2Adam/conv2d_2/kernel/v
!:2Adam/conv2d_2/bias/v
0:.2Adam/conv2d_3/kernel/v
!:2Adam/conv2d_3/bias/v
/:-2"Adam/batch_normalization_3/gamma/v
.:,2!Adam/batch_normalization_3/beta/v
%:#
2Adam/dense/kernel/v
:2Adam/dense/bias/v
%:#2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
ËBÈ
 __inference__wrapped_model_27007input_1"
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
annotationsª *
 
þ2û
,__inference_sequential_1_layer_call_fn_28442
,__inference_sequential_1_layer_call_fn_29883
,__inference_sequential_1_layer_call_fn_29974
,__inference_sequential_1_layer_call_fn_29569À
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
kwonlydefaultsª 
annotationsª *
 
ê2ç
G__inference_sequential_1_layer_call_and_return_conditional_losses_30089
G__inference_sequential_1_layer_call_and_return_conditional_losses_30641
G__inference_sequential_1_layer_call_and_return_conditional_losses_29646
G__inference_sequential_1_layer_call_and_return_conditional_losses_29753À
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
kwonlydefaultsª 
annotationsª *
 
 2
1__inference_random_contrast_1_layer_call_fn_30646
1__inference_random_contrast_1_layer_call_fn_30653´
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
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_30657
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_30698´
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
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
-__inference_random_flip_2_layer_call_fn_30703
-__inference_random_flip_2_layer_call_fn_30710´
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
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_random_flip_2_layer_call_and_return_conditional_losses_30714
H__inference_random_flip_2_layer_call_and_return_conditional_losses_30772´
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
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 2
1__inference_random_rotation_1_layer_call_fn_30777
1__inference_random_rotation_1_layer_call_fn_30784´
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
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_30788
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_30910´
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
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
3__inference_batch_normalization_layer_call_fn_30923
3__inference_batch_normalization_layer_call_fn_30942
3__inference_batch_normalization_layer_call_fn_30955
3__inference_batch_normalization_layer_call_fn_30974´
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
kwonlydefaultsª 
annotationsª *
 
ú2÷
N__inference_batch_normalization_layer_call_and_return_conditional_losses_30994
N__inference_batch_normalization_layer_call_and_return_conditional_losses_31071
N__inference_batch_normalization_layer_call_and_return_conditional_losses_31091
N__inference_batch_normalization_layer_call_and_return_conditional_losses_31168´
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
kwonlydefaultsª 
annotationsª *
 
Ð2Í
&__inference_conv2d_layer_call_fn_31177¢
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
annotationsª *
 
ë2è
A__inference_conv2d_layer_call_and_return_conditional_losses_31188¢
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
annotationsª *
 
2
-__inference_max_pooling2d_layer_call_fn_31193
-__inference_max_pooling2d_layer_call_fn_31198¢
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
annotationsª *
 
¼2¹
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_31203
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_31208¢
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
annotationsª *
 
2
5__inference_batch_normalization_1_layer_call_fn_31221
5__inference_batch_normalization_1_layer_call_fn_31240
5__inference_batch_normalization_1_layer_call_fn_31253
5__inference_batch_normalization_1_layer_call_fn_31272´
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
kwonlydefaultsª 
annotationsª *
 
2ÿ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_31292
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_31369
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_31389
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_31466´
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
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
(__inference_conv2d_1_layer_call_fn_31475¢
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
annotationsª *
 
í2ê
C__inference_conv2d_1_layer_call_and_return_conditional_losses_31486¢
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
annotationsª *
 
2
/__inference_max_pooling2d_1_layer_call_fn_31491
/__inference_max_pooling2d_1_layer_call_fn_31496¢
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
annotationsª *
 
À2½
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_31501
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_31506¢
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
annotationsª *
 
2
5__inference_batch_normalization_2_layer_call_fn_31519
5__inference_batch_normalization_2_layer_call_fn_31538
5__inference_batch_normalization_2_layer_call_fn_31551
5__inference_batch_normalization_2_layer_call_fn_31570´
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
kwonlydefaultsª 
annotationsª *
 
2ÿ
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_31590
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_31667
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_31687
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_31764´
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
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
(__inference_conv2d_2_layer_call_fn_31773¢
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
annotationsª *
 
í2ê
C__inference_conv2d_2_layer_call_and_return_conditional_losses_31784¢
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
annotationsª *
 
Ò2Ï
(__inference_conv2d_3_layer_call_fn_31793¢
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
annotationsª *
 
í2ê
C__inference_conv2d_3_layer_call_and_return_conditional_losses_31804¢
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
annotationsª *
 
2
/__inference_max_pooling2d_2_layer_call_fn_31809
/__inference_max_pooling2d_2_layer_call_fn_31814¢
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
annotationsª *
 
À2½
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_31819
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_31824¢
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
annotationsª *
 
2
5__inference_batch_normalization_3_layer_call_fn_31837
5__inference_batch_normalization_3_layer_call_fn_31856
5__inference_batch_normalization_3_layer_call_fn_31869
5__inference_batch_normalization_3_layer_call_fn_31888´
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
kwonlydefaultsª 
annotationsª *
 
2ÿ
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_31908
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_31985
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_32005
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_32082´
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
kwonlydefaultsª 
annotationsª *
 
Ñ2Î
'__inference_flatten_layer_call_fn_32087¢
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
annotationsª *
 
ì2é
B__inference_flatten_layer_call_and_return_conditional_losses_32093¢
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
annotationsª *
 
Ï2Ì
%__inference_dense_layer_call_fn_32102¢
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
annotationsª *
 
ê2ç
@__inference_dense_layer_call_and_return_conditional_losses_32113¢
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
annotationsª *
 
Ñ2Î
'__inference_dense_1_layer_call_fn_32122¢
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
annotationsª *
 
ì2é
B__inference_dense_1_layer_call_and_return_conditional_losses_32133¢
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
annotationsª *
 
ÊBÇ
#__inference_signature_wrapper_29822input_1"
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
annotationsª *
 ¶
 __inference__wrapped_model_27007 ,)+*45C@BAKLZWYXbchiwtvu:¢7
0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿë
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_31292C@BAM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 î
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_31369FE@ABDCM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Æ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_31389rC@BA;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@@@
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@@
 É
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_31466uFE@ABDC;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@@@
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@@
 Ã
5__inference_batch_normalization_1_layer_call_fn_31221C@BAM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Æ
5__inference_batch_normalization_1_layer_call_fn_31240FE@ABDCM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
5__inference_batch_normalization_1_layer_call_fn_31253eC@BA;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@@@
p 
ª " ÿÿÿÿÿÿÿÿÿ@@@¡
5__inference_batch_normalization_1_layer_call_fn_31272hFE@ABDC;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ@@@
p
ª " ÿÿÿÿÿÿÿÿÿ@@@í
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_31590ZWYXN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ð
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_31667]\WXY[ZN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_31687tZWYX<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ  
p 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 Ë
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_31764w]\WXY[Z<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ  
p
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 Å
5__inference_batch_normalization_2_layer_call_fn_31519ZWYXN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ
5__inference_batch_normalization_2_layer_call_fn_31538]\WXY[ZN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
5__inference_batch_normalization_2_layer_call_fn_31551gZWYX<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ  
p 
ª "!ÿÿÿÿÿÿÿÿÿ  £
5__inference_batch_normalization_2_layer_call_fn_31570j]\WXY[Z<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ  
p
ª "!ÿÿÿÿÿÿÿÿÿ  í
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_31908wtvuN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ð
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_31985zytuvxwN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_32005twtvu<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 Ë
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_32082wzytuvxw<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 Å
5__inference_batch_normalization_3_layer_call_fn_31837wtvuN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ
5__inference_batch_normalization_3_layer_call_fn_31856zytuvxwN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
5__inference_batch_normalization_3_layer_call_fn_31869gwtvu<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "!ÿÿÿÿÿÿÿÿÿ£
5__inference_batch_normalization_3_layer_call_fn_31888jzytuvxw<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿ
p
ª "!ÿÿÿÿÿÿÿÿÿé
N__inference_batch_normalization_layer_call_and_return_conditional_losses_30994,)+*M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ì
N__inference_batch_normalization_layer_call_and_return_conditional_losses_31071/.)*+-,M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
N__inference_batch_normalization_layer_call_and_return_conditional_losses_31091v,)+*=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 Ë
N__inference_batch_normalization_layer_call_and_return_conditional_losses_31168y/.)*+-,=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 Á
3__inference_batch_normalization_layer_call_fn_30923,)+*M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÄ
3__inference_batch_normalization_layer_call_fn_30942/.)*+-,M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
3__inference_batch_normalization_layer_call_fn_30955i,)+*=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ""ÿÿÿÿÿÿÿÿÿ£
3__inference_batch_normalization_layer_call_fn_30974l/.)*+-,=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p
ª ""ÿÿÿÿÿÿÿÿÿ´
C__inference_conv2d_1_layer_call_and_return_conditional_losses_31486mKL7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ@@
 
(__inference_conv2d_1_layer_call_fn_31475`KL7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@@
ª "!ÿÿÿÿÿÿÿÿÿ@@µ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_31784nbc8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 
(__inference_conv2d_2_layer_call_fn_31773abc8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª "!ÿÿÿÿÿÿÿÿÿ  µ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_31804nhi8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 
(__inference_conv2d_3_layer_call_fn_31793ahi8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª "!ÿÿÿÿÿÿÿÿÿ  µ
A__inference_conv2d_layer_call_and_return_conditional_losses_31188p459¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ@
 
&__inference_conv2d_layer_call_fn_31177c459¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿ@¤
B__inference_dense_1_layer_call_and_return_conditional_losses_32133^/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_dense_1_layer_call_fn_32122Q/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
@__inference_dense_layer_call_and_return_conditional_losses_32113`1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
%__inference_dense_layer_call_fn_32102S1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ©
B__inference_flatten_layer_call_and_return_conditional_losses_32093c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "'¢$

0ÿÿÿÿÿÿÿÿÿ
 
'__inference_flatten_layer_call_fn_32087V8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_31501R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¸
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_31506j8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 Å
/__inference_max_pooling2d_1_layer_call_fn_31491R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/__inference_max_pooling2d_1_layer_call_fn_31496]8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@@
ª "!ÿÿÿÿÿÿÿÿÿ  í
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_31819R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¸
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_31824j8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_2_layer_call_fn_31809R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/__inference_max_pooling2d_2_layer_call_fn_31814]8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª "!ÿÿÿÿÿÿÿÿÿë
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_31203R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¶
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_31208j9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@@
 Ã
-__inference_max_pooling2d_layer_call_fn_31193R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
-__inference_max_pooling2d_layer_call_fn_31198]9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ@
ª " ÿÿÿÿÿÿÿÿÿ@@@À
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_30657p=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 Ä
L__inference_random_contrast_1_layer_call_and_return_conditional_losses_30698t=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
1__inference_random_contrast_1_layer_call_fn_30646c=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ""ÿÿÿÿÿÿÿÿÿ
1__inference_random_contrast_1_layer_call_fn_30653g=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p
ª ""ÿÿÿÿÿÿÿÿÿ¼
H__inference_random_flip_2_layer_call_and_return_conditional_losses_30714p=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 À
H__inference_random_flip_2_layer_call_and_return_conditional_losses_30772t=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
-__inference_random_flip_2_layer_call_fn_30703c=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ""ÿÿÿÿÿÿÿÿÿ
-__inference_random_flip_2_layer_call_fn_30710g=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p
ª ""ÿÿÿÿÿÿÿÿÿÀ
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_30788p=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 Ä
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_30910t¥=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
1__inference_random_rotation_1_layer_call_fn_30777c=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ""ÿÿÿÿÿÿÿÿÿ
1__inference_random_rotation_1_layer_call_fn_30784g¥=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p
ª ""ÿÿÿÿÿÿÿÿÿÙ
G__inference_sequential_1_layer_call_and_return_conditional_losses_29646 ,)+*45C@BAKLZWYXbchiwtvuB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ë
G__inference_sequential_1_layer_call_and_return_conditional_losses_297532¥/.)*+-,45FE@ABDCKL]\WXY[ZbchizytuvxwB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ø
G__inference_sequential_1_layer_call_and_return_conditional_losses_30089 ,)+*45C@BAKLZWYXbchiwtvuA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ê
G__inference_sequential_1_layer_call_and_return_conditional_losses_306412¥/.)*+-,45FE@ABDCKL]\WXY[ZbchizytuvxwA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ±
,__inference_sequential_1_layer_call_fn_28442 ,)+*45C@BAKLZWYXbchiwtvuB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÃ
,__inference_sequential_1_layer_call_fn_295692¥/.)*+-,45FE@ABDCKL]\WXY[ZbchizytuvxwB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¯
,__inference_sequential_1_layer_call_fn_29883 ,)+*45C@BAKLZWYXbchiwtvuA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÂ
,__inference_sequential_1_layer_call_fn_299742¥/.)*+-,45FE@ABDCKL]\WXY[ZbchizytuvxwA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÄ
#__inference_signature_wrapper_29822 ,)+*45C@BAKLZWYXbchiwtvuE¢B
¢ 
;ª8
6
input_1+(
input_1ÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿ