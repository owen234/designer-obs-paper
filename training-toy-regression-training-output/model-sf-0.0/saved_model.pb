��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02unknown8҈
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
~
Adam/v/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_2/bias
w
'Adam/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_2/bias
w
'Adam/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/v/dense_2/kernel

)Adam/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/kernel*
_output_shapes

:2*
dtype0
�
Adam/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/m/dense_2/kernel

)Adam/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/kernel*
_output_shapes

:2*
dtype0
~
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:2*
dtype0
~
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:2*
dtype0
�
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*&
shared_nameAdam/v/dense_1/kernel

)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes

:22*
dtype0
�
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*&
shared_nameAdam/m/dense_1/kernel

)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes

:22*
dtype0
z
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*"
shared_nameAdam/v/dense/bias
s
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes
:2*
dtype0
z
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*"
shared_nameAdam/m/dense/bias
s
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes
:2*
dtype0
�
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*$
shared_nameAdam/v/dense/kernel
{
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes

:2*
dtype0
�
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*$
shared_nameAdam/m/dense/kernel
{
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes

:2*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:2*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:2*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:22*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:2*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:2*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *-
f(R&
$__inference_signature_wrapper_394360

NoOpNoOp
�2
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�1
value�1B�1 B�1
�
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 

	keras_api* 

	keras_api* 
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

	keras_api* 
.
0
1
2
3
4
 5*
.
0
1
2
3
4
 5*
* 
�
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
&trace_0
'trace_1
(trace_2
)trace_3* 
6
*trace_0
+trace_1
,trace_2
-trace_3* 
* 
�
.
_variables
/_iterations
0_learning_rate
1_index_dict
2
_momentums
3_velocities
4_update_step_xla*

5serving_default* 
* 
* 
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

kernel
bias*
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias*
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

kernel
 bias*
.
0
1
2
3
4
 5*
.
0
1
2
3
4
 5*
* 
�
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Mtrace_0
Ntrace_1
Otrace_2
Ptrace_3* 
6
Qtrace_0
Rtrace_1
Strace_2
Ttrace_3* 
* 
LF
VARIABLE_VALUEdense/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

U0
V1*
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
b
/0
W1
X2
Y3
Z4
[5
\6
]7
^8
_9
`10
a11
b12*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
W0
Y1
[2
]3
_4
a5*
.
X0
Z1
\2
^3
`4
b5*
P
ctrace_0
dtrace_1
etrace_2
ftrace_3
gtrace_4
htrace_5* 
* 

0
1*

0
1*
* 
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

ntrace_0* 

otrace_0* 

0
1*

0
1*
* 
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

utrace_0* 

vtrace_0* 

0
 1*

0
 1*
* 
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

|trace_0* 

}trace_0* 
* 

0
1
2*
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
:
~	variables
	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
^X
VARIABLE_VALUEAdam/m/dense/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/dense/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/dense/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
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

�0
�1*

~	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp'Adam/m/dense/kernel/Read/ReadVariableOp'Adam/v/dense/kernel/Read/ReadVariableOp%Adam/m/dense/bias/Read/ReadVariableOp%Adam/v/dense/bias/Read/ReadVariableOp)Adam/m/dense_1/kernel/Read/ReadVariableOp)Adam/v/dense_1/kernel/Read/ReadVariableOp'Adam/m/dense_1/bias/Read/ReadVariableOp'Adam/v/dense_1/bias/Read/ReadVariableOp)Adam/m/dense_2/kernel/Read/ReadVariableOp)Adam/v/dense_2/kernel/Read/ReadVariableOp'Adam/m/dense_2/bias/Read/ReadVariableOp'Adam/v/dense_2/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*%
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *(
f#R!
__inference__traced_save_394754
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	iterationlearning_rateAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biastotal_1count_1totalcount*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *+
f&R$
"__inference__traced_restore_394836�
�4
�	
__inference__traced_save_394754
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop2
.savev2_adam_m_dense_kernel_read_readvariableop2
.savev2_adam_v_dense_kernel_read_readvariableop0
,savev2_adam_m_dense_bias_read_readvariableop0
,savev2_adam_v_dense_bias_read_readvariableop4
0savev2_adam_m_dense_1_kernel_read_readvariableop4
0savev2_adam_v_dense_1_kernel_read_readvariableop2
.savev2_adam_m_dense_1_bias_read_readvariableop2
.savev2_adam_v_dense_1_bias_read_readvariableop4
0savev2_adam_m_dense_2_kernel_read_readvariableop4
0savev2_adam_v_dense_2_kernel_read_readvariableop2
.savev2_adam_m_dense_2_bias_read_readvariableop2
.savev2_adam_v_dense_2_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop.savev2_adam_m_dense_kernel_read_readvariableop.savev2_adam_v_dense_kernel_read_readvariableop,savev2_adam_m_dense_bias_read_readvariableop,savev2_adam_v_dense_bias_read_readvariableop0savev2_adam_m_dense_1_kernel_read_readvariableop0savev2_adam_v_dense_1_kernel_read_readvariableop.savev2_adam_m_dense_1_bias_read_readvariableop.savev2_adam_v_dense_1_bias_read_readvariableop0savev2_adam_m_dense_2_kernel_read_readvariableop0savev2_adam_v_dense_2_kernel_read_readvariableop.savev2_adam_m_dense_2_bias_read_readvariableop.savev2_adam_v_dense_2_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *'
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :2:2:22:2:2:: : :2:2:2:2:22:22:2:2:2:2::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:2: 

_output_shapes
:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :$	 

_output_shapes

:2:$
 

_output_shapes

:2: 

_output_shapes
:2: 

_output_shapes
:2:$ 

_output_shapes

:22:$ 

_output_shapes

:22: 

_output_shapes
:2: 

_output_shapes
:2:$ 

_output_shapes

:2:$ 

_output_shapes

:2: 

_output_shapes
:: 

_output_shapes
::
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
: 
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_394137
dense_input
dense_394121:2
dense_394123:2 
dense_1_394126:22
dense_1_394128:2 
dense_2_394131:2
dense_2_394133:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_394121dense_394123*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_393944�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_394126dense_1_394128*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_393961�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_394131dense_2_394133*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_393977w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_namedense_input
�G
�
A__inference_model_layer_call_and_return_conditional_losses_394488

inputsA
/sequential_dense_matmul_readvariableop_resource:2>
0sequential_dense_biasadd_readvariableop_resource:2C
1sequential_dense_1_matmul_readvariableop_resource:22@
2sequential_dense_1_biasadd_readvariableop_resource:2C
1sequential_dense_2_matmul_readvariableop_resource:2@
2sequential_dense_2_biasadd_readvariableop_resource:
identity��'sequential/dense/BiasAdd/ReadVariableOp�)sequential/dense/BiasAdd_1/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�(sequential/dense/MatMul_1/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�+sequential/dense_1/BiasAdd_1/ReadVariableOp�(sequential/dense_1/MatMul/ReadVariableOp�*sequential/dense_1/MatMul_1/ReadVariableOp�)sequential/dense_2/BiasAdd/ReadVariableOp�+sequential/dense_2/BiasAdd_1/ReadVariableOp�(sequential/dense_2/MatMul/ReadVariableOp�*sequential/dense_2/MatMul_1/ReadVariableOp
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(tf.__operators__.getitem_1/strided_sliceStridedSliceinputs7tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask}
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs5tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
sequential/dense/MatMulMatMul/tf.__operators__.getitem/strided_slice:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2v
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
sequential/dense_2/MatMulMatMul%sequential/dense_1/Relu:activations:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(sequential/dense/MatMul_1/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
sequential/dense/MatMul_1MatMul1tf.__operators__.getitem_1/strided_slice:output:00sequential/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)sequential/dense/BiasAdd_1/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
sequential/dense/BiasAdd_1BiasAdd#sequential/dense/MatMul_1:product:01sequential/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2v
sequential/dense/Relu_1Relu#sequential/dense/BiasAdd_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential/dense_1/MatMul_1/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
sequential/dense_1/MatMul_1MatMul%sequential/dense/Relu_1:activations:02sequential/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
+sequential/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
sequential/dense_1/BiasAdd_1BiasAdd%sequential/dense_1/MatMul_1:product:03sequential/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2z
sequential/dense_1/Relu_1Relu%sequential/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential/dense_2/MatMul_1/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
sequential/dense_2/MatMul_1MatMul'sequential/dense_1/Relu_1:activations:02sequential/dense_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential/dense_2/BiasAdd_1/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/dense_2/BiasAdd_1BiasAdd%sequential/dense_2/MatMul_1:product:03sequential/dense_2/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
tf.stack/stackPack#sequential/dense_2/BiasAdd:output:0%sequential/dense_2/BiasAdd_1:output:0*
N*
T0*+
_output_shapes
:���������*

axisj
IdentityIdentitytf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/BiasAdd_1/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp)^sequential/dense/MatMul_1/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/BiasAdd_1/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp+^sequential/dense_1/MatMul_1/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp,^sequential/dense_2/BiasAdd_1/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp+^sequential/dense_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/BiasAdd_1/ReadVariableOp)sequential/dense/BiasAdd_1/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2T
(sequential/dense/MatMul_1/ReadVariableOp(sequential/dense/MatMul_1/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/BiasAdd_1/ReadVariableOp+sequential/dense_1/BiasAdd_1/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2X
*sequential/dense_1/MatMul_1/ReadVariableOp*sequential/dense_1/MatMul_1/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2Z
+sequential/dense_2/BiasAdd_1/ReadVariableOp+sequential/dense_2/BiasAdd_1/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2X
*sequential/dense_2/MatMul_1/ReadVariableOp*sequential/dense_2/MatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_dense_2_layer_call_fn_394649

inputs
unknown:2
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_393977o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_394600

inputs6
$dense_matmul_readvariableop_resource:23
%dense_biasadd_readvariableop_resource:28
&dense_1_matmul_readvariableop_resource:225
'dense_1_biasadd_readvariableop_resource:28
&dense_2_matmul_readvariableop_resource:25
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0u
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_394377

inputs
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_394174s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
A__inference_dense_layer_call_and_return_conditional_losses_394620

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_394067

inputs
dense_394051:2
dense_394053:2 
dense_1_394056:22
dense_1_394058:2 
dense_2_394061:2
dense_2_394063:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_394051dense_394053*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_393944�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_394056dense_1_394058*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_393961�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_394061dense_2_394063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_393977w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_model_layer_call_and_return_conditional_losses_394339
input_1#
sequential_394317:2
sequential_394319:2#
sequential_394321:22
sequential_394323:2#
sequential_394325:2
sequential_394327:
identity��"sequential/StatefulPartitionedCall�$sequential/StatefulPartitionedCall_1
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(tf.__operators__.getitem_1/strided_sliceStridedSliceinput_17tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask}
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&tf.__operators__.getitem/strided_sliceStridedSliceinput_15tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
"sequential/StatefulPartitionedCallStatefulPartitionedCall/tf.__operators__.getitem/strided_slice:output:0sequential_394317sequential_394319sequential_394321sequential_394323sequential_394325sequential_394327*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_394067�
$sequential/StatefulPartitionedCall_1StatefulPartitionedCall1tf.__operators__.getitem_1/strided_slice:output:0sequential_394317sequential_394319sequential_394321sequential_394323sequential_394325sequential_394327*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_394067�
tf.stack/stackPack+sequential/StatefulPartitionedCall:output:0-sequential/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:���������*

axisj
IdentityIdentitytf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential/StatefulPartitionedCall_1$sequential/StatefulPartitionedCall_1:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�	
�
+__inference_sequential_layer_call_fn_393999
dense_input
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_393984o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_namedense_input
�	
�
+__inference_sequential_layer_call_fn_394099
dense_input
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_394067o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_namedense_input
�
O
#__inference__update_step_xla_394493
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:2: *
	_noinline(:H D

_output_shapes

:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_394576

inputs6
$dense_matmul_readvariableop_resource:23
%dense_biasadd_readvariableop_resource:28
&dense_1_matmul_readvariableop_resource:225
'dense_1_biasadd_readvariableop_resource:28
&dense_2_matmul_readvariableop_resource:25
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0u
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
C__inference_dense_2_layer_call_and_return_conditional_losses_394659

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
C__inference_dense_1_layer_call_and_return_conditional_losses_393961

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
O
#__inference__update_step_xla_394513
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:2: *
	_noinline(:H D

_output_shapes

:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
#__inference__update_step_xla_394498
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:2: *
	_noinline(:D @

_output_shapes
:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
+__inference_sequential_layer_call_fn_394552

inputs
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_394067o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
A__inference_dense_layer_call_and_return_conditional_losses_393944

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_394508
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:2: *
	_noinline(:D @

_output_shapes
:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
(__inference_dense_1_layer_call_fn_394629

inputs
unknown:22
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_393961o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
C__inference_dense_1_layer_call_and_return_conditional_losses_394640

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_394189
input_1
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_394174s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�e
�
"__inference__traced_restore_394836
file_prefix/
assignvariableop_dense_kernel:2+
assignvariableop_1_dense_bias:23
!assignvariableop_2_dense_1_kernel:22-
assignvariableop_3_dense_1_bias:23
!assignvariableop_4_dense_2_kernel:2-
assignvariableop_5_dense_2_bias:&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: 8
&assignvariableop_8_adam_m_dense_kernel:28
&assignvariableop_9_adam_v_dense_kernel:23
%assignvariableop_10_adam_m_dense_bias:23
%assignvariableop_11_adam_v_dense_bias:2;
)assignvariableop_12_adam_m_dense_1_kernel:22;
)assignvariableop_13_adam_v_dense_1_kernel:225
'assignvariableop_14_adam_m_dense_1_bias:25
'assignvariableop_15_adam_v_dense_1_bias:2;
)assignvariableop_16_adam_m_dense_2_kernel:2;
)assignvariableop_17_adam_v_dense_2_kernel:25
'assignvariableop_18_adam_m_dense_2_bias:5
'assignvariableop_19_adam_v_dense_2_bias:%
assignvariableop_20_total_1: %
assignvariableop_21_count_1: #
assignvariableop_22_total: #
assignvariableop_23_count: 
identity_25��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp&assignvariableop_8_adam_m_dense_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp&assignvariableop_9_adam_v_dense_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_adam_m_dense_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp%assignvariableop_11_adam_v_dense_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp)assignvariableop_12_adam_m_dense_1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_v_dense_1_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_m_dense_1_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_v_dense_1_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_m_dense_2_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_v_dense_2_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_m_dense_2_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_v_dense_2_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
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
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_393984

inputs
dense_393945:2
dense_393947:2 
dense_1_393962:22
dense_1_393964:2 
dense_2_393978:2
dense_2_393980:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_393945dense_393947*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_393944�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_393962dense_1_393964*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_393961�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_393978dense_2_393980*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_393977w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
O
#__inference__update_step_xla_394503
gradient
variable:22*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:22: *
	_noinline(:H D

_output_shapes

:22
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�G
�
A__inference_model_layer_call_and_return_conditional_losses_394441

inputsA
/sequential_dense_matmul_readvariableop_resource:2>
0sequential_dense_biasadd_readvariableop_resource:2C
1sequential_dense_1_matmul_readvariableop_resource:22@
2sequential_dense_1_biasadd_readvariableop_resource:2C
1sequential_dense_2_matmul_readvariableop_resource:2@
2sequential_dense_2_biasadd_readvariableop_resource:
identity��'sequential/dense/BiasAdd/ReadVariableOp�)sequential/dense/BiasAdd_1/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�(sequential/dense/MatMul_1/ReadVariableOp�)sequential/dense_1/BiasAdd/ReadVariableOp�+sequential/dense_1/BiasAdd_1/ReadVariableOp�(sequential/dense_1/MatMul/ReadVariableOp�*sequential/dense_1/MatMul_1/ReadVariableOp�)sequential/dense_2/BiasAdd/ReadVariableOp�+sequential/dense_2/BiasAdd_1/ReadVariableOp�(sequential/dense_2/MatMul/ReadVariableOp�*sequential/dense_2/MatMul_1/ReadVariableOp
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(tf.__operators__.getitem_1/strided_sliceStridedSliceinputs7tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask}
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs5tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
sequential/dense/MatMulMatMul/tf.__operators__.getitem/strided_slice:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2v
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
sequential/dense_2/MatMulMatMul%sequential/dense_1/Relu:activations:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(sequential/dense/MatMul_1/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
sequential/dense/MatMul_1MatMul1tf.__operators__.getitem_1/strided_slice:output:00sequential/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
)sequential/dense/BiasAdd_1/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
sequential/dense/BiasAdd_1BiasAdd#sequential/dense/MatMul_1:product:01sequential/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2v
sequential/dense/Relu_1Relu#sequential/dense/BiasAdd_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential/dense_1/MatMul_1/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
sequential/dense_1/MatMul_1MatMul%sequential/dense/Relu_1:activations:02sequential/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
+sequential/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
sequential/dense_1/BiasAdd_1BiasAdd%sequential/dense_1/MatMul_1:product:03sequential/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2z
sequential/dense_1/Relu_1Relu%sequential/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:���������2�
*sequential/dense_2/MatMul_1/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
sequential/dense_2/MatMul_1MatMul'sequential/dense_1/Relu_1:activations:02sequential/dense_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential/dense_2/BiasAdd_1/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/dense_2/BiasAdd_1BiasAdd%sequential/dense_2/MatMul_1:product:03sequential/dense_2/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
tf.stack/stackPack#sequential/dense_2/BiasAdd:output:0%sequential/dense_2/BiasAdd_1:output:0*
N*
T0*+
_output_shapes
:���������*

axisj
IdentityIdentitytf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/BiasAdd_1/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp)^sequential/dense/MatMul_1/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/BiasAdd_1/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp+^sequential/dense_1/MatMul_1/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp,^sequential/dense_2/BiasAdd_1/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp+^sequential/dense_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/BiasAdd_1/ReadVariableOp)sequential/dense/BiasAdd_1/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2T
(sequential/dense/MatMul_1/ReadVariableOp(sequential/dense/MatMul_1/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/BiasAdd_1/ReadVariableOp+sequential/dense_1/BiasAdd_1/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2X
*sequential/dense_1/MatMul_1/ReadVariableOp*sequential/dense_1/MatMul_1/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2Z
+sequential/dense_2/BiasAdd_1/ReadVariableOp+sequential/dense_2/BiasAdd_1/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2X
*sequential/dense_2/MatMul_1/ReadVariableOp*sequential/dense_2/MatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_model_layer_call_and_return_conditional_losses_394174

inputs#
sequential_394152:2
sequential_394154:2#
sequential_394156:22
sequential_394158:2#
sequential_394160:2
sequential_394162:
identity��"sequential/StatefulPartitionedCall�$sequential/StatefulPartitionedCall_1
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(tf.__operators__.getitem_1/strided_sliceStridedSliceinputs7tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask}
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs5tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
"sequential/StatefulPartitionedCallStatefulPartitionedCall/tf.__operators__.getitem/strided_slice:output:0sequential_394152sequential_394154sequential_394156sequential_394158sequential_394160sequential_394162*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_393984�
$sequential/StatefulPartitionedCall_1StatefulPartitionedCall1tf.__operators__.getitem_1/strided_slice:output:0sequential_394152sequential_394154sequential_394156sequential_394158sequential_394160sequential_394162*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_393984�
tf.stack/stackPack+sequential/StatefulPartitionedCall:output:0-sequential/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:���������*

axisj
IdentityIdentitytf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential/StatefulPartitionedCall_1$sequential/StatefulPartitionedCall_1:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�M
�
!__inference__wrapped_model_393926
input_1G
5model_sequential_dense_matmul_readvariableop_resource:2D
6model_sequential_dense_biasadd_readvariableop_resource:2I
7model_sequential_dense_1_matmul_readvariableop_resource:22F
8model_sequential_dense_1_biasadd_readvariableop_resource:2I
7model_sequential_dense_2_matmul_readvariableop_resource:2F
8model_sequential_dense_2_biasadd_readvariableop_resource:
identity��-model/sequential/dense/BiasAdd/ReadVariableOp�/model/sequential/dense/BiasAdd_1/ReadVariableOp�,model/sequential/dense/MatMul/ReadVariableOp�.model/sequential/dense/MatMul_1/ReadVariableOp�/model/sequential/dense_1/BiasAdd/ReadVariableOp�1model/sequential/dense_1/BiasAdd_1/ReadVariableOp�.model/sequential/dense_1/MatMul/ReadVariableOp�0model/sequential/dense_1/MatMul_1/ReadVariableOp�/model/sequential/dense_2/BiasAdd/ReadVariableOp�1model/sequential/dense_2/BiasAdd_1/ReadVariableOp�.model/sequential/dense_2/MatMul/ReadVariableOp�0model/sequential/dense_2/MatMul_1/ReadVariableOp�
4model/tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
6model/tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
6model/tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.model/tf.__operators__.getitem_1/strided_sliceStridedSliceinput_1=model/tf.__operators__.getitem_1/strided_slice/stack:output:0?model/tf.__operators__.getitem_1/strided_slice/stack_1:output:0?model/tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
2model/tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
4model/tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
4model/tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
,model/tf.__operators__.getitem/strided_sliceStridedSliceinput_1;model/tf.__operators__.getitem/strided_slice/stack:output:0=model/tf.__operators__.getitem/strided_slice/stack_1:output:0=model/tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
,model/sequential/dense/MatMul/ReadVariableOpReadVariableOp5model_sequential_dense_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
model/sequential/dense/MatMulMatMul5model/tf.__operators__.getitem/strided_slice:output:04model/sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
-model/sequential/dense/BiasAdd/ReadVariableOpReadVariableOp6model_sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
model/sequential/dense/BiasAddBiasAdd'model/sequential/dense/MatMul:product:05model/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2~
model/sequential/dense/ReluRelu'model/sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
.model/sequential/dense_1/MatMul/ReadVariableOpReadVariableOp7model_sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
model/sequential/dense_1/MatMulMatMul)model/sequential/dense/Relu:activations:06model/sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/model/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp8model_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
 model/sequential/dense_1/BiasAddBiasAdd)model/sequential/dense_1/MatMul:product:07model/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
model/sequential/dense_1/ReluRelu)model/sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
.model/sequential/dense_2/MatMul/ReadVariableOpReadVariableOp7model_sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
model/sequential/dense_2/MatMulMatMul+model/sequential/dense_1/Relu:activations:06model/sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/model/sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp8model_sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 model/sequential/dense_2/BiasAddBiasAdd)model/sequential/dense_2/MatMul:product:07model/sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.model/sequential/dense/MatMul_1/ReadVariableOpReadVariableOp5model_sequential_dense_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
model/sequential/dense/MatMul_1MatMul7model/tf.__operators__.getitem_1/strided_slice:output:06model/sequential/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
/model/sequential/dense/BiasAdd_1/ReadVariableOpReadVariableOp6model_sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
 model/sequential/dense/BiasAdd_1BiasAdd)model/sequential/dense/MatMul_1:product:07model/sequential/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
model/sequential/dense/Relu_1Relu)model/sequential/dense/BiasAdd_1:output:0*
T0*'
_output_shapes
:���������2�
0model/sequential/dense_1/MatMul_1/ReadVariableOpReadVariableOp7model_sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0�
!model/sequential/dense_1/MatMul_1MatMul+model/sequential/dense/Relu_1:activations:08model/sequential/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
1model/sequential/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp8model_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
"model/sequential/dense_1/BiasAdd_1BiasAdd+model/sequential/dense_1/MatMul_1:product:09model/sequential/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
model/sequential/dense_1/Relu_1Relu+model/sequential/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:���������2�
0model/sequential/dense_2/MatMul_1/ReadVariableOpReadVariableOp7model_sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
!model/sequential/dense_2/MatMul_1MatMul-model/sequential/dense_1/Relu_1:activations:08model/sequential/dense_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1model/sequential/dense_2/BiasAdd_1/ReadVariableOpReadVariableOp8model_sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"model/sequential/dense_2/BiasAdd_1BiasAdd+model/sequential/dense_2/MatMul_1:product:09model/sequential/dense_2/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
model/tf.stack/stackPack)model/sequential/dense_2/BiasAdd:output:0+model/sequential/dense_2/BiasAdd_1:output:0*
N*
T0*+
_output_shapes
:���������*

axisp
IdentityIdentitymodel/tf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp.^model/sequential/dense/BiasAdd/ReadVariableOp0^model/sequential/dense/BiasAdd_1/ReadVariableOp-^model/sequential/dense/MatMul/ReadVariableOp/^model/sequential/dense/MatMul_1/ReadVariableOp0^model/sequential/dense_1/BiasAdd/ReadVariableOp2^model/sequential/dense_1/BiasAdd_1/ReadVariableOp/^model/sequential/dense_1/MatMul/ReadVariableOp1^model/sequential/dense_1/MatMul_1/ReadVariableOp0^model/sequential/dense_2/BiasAdd/ReadVariableOp2^model/sequential/dense_2/BiasAdd_1/ReadVariableOp/^model/sequential/dense_2/MatMul/ReadVariableOp1^model/sequential/dense_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2^
-model/sequential/dense/BiasAdd/ReadVariableOp-model/sequential/dense/BiasAdd/ReadVariableOp2b
/model/sequential/dense/BiasAdd_1/ReadVariableOp/model/sequential/dense/BiasAdd_1/ReadVariableOp2\
,model/sequential/dense/MatMul/ReadVariableOp,model/sequential/dense/MatMul/ReadVariableOp2`
.model/sequential/dense/MatMul_1/ReadVariableOp.model/sequential/dense/MatMul_1/ReadVariableOp2b
/model/sequential/dense_1/BiasAdd/ReadVariableOp/model/sequential/dense_1/BiasAdd/ReadVariableOp2f
1model/sequential/dense_1/BiasAdd_1/ReadVariableOp1model/sequential/dense_1/BiasAdd_1/ReadVariableOp2`
.model/sequential/dense_1/MatMul/ReadVariableOp.model/sequential/dense_1/MatMul/ReadVariableOp2d
0model/sequential/dense_1/MatMul_1/ReadVariableOp0model/sequential/dense_1/MatMul_1/ReadVariableOp2b
/model/sequential/dense_2/BiasAdd/ReadVariableOp/model/sequential/dense_2/BiasAdd/ReadVariableOp2f
1model/sequential/dense_2/BiasAdd_1/ReadVariableOp1model/sequential/dense_2/BiasAdd_1/ReadVariableOp2`
.model/sequential/dense_2/MatMul/ReadVariableOp.model/sequential/dense_2/MatMul/ReadVariableOp2d
0model/sequential/dense_2/MatMul_1/ReadVariableOp0model/sequential/dense_2/MatMul_1/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
$__inference_signature_wrapper_394360
input_1
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� **
f%R#
!__inference__wrapped_model_393926s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
K
#__inference__update_step_xla_394518
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
+__inference_sequential_layer_call_fn_394535

inputs
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_393984o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_model_layer_call_and_return_conditional_losses_394241

inputs#
sequential_394219:2
sequential_394221:2#
sequential_394223:22
sequential_394225:2#
sequential_394227:2
sequential_394229:
identity��"sequential/StatefulPartitionedCall�$sequential/StatefulPartitionedCall_1
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(tf.__operators__.getitem_1/strided_sliceStridedSliceinputs7tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask}
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs5tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
"sequential/StatefulPartitionedCallStatefulPartitionedCall/tf.__operators__.getitem/strided_slice:output:0sequential_394219sequential_394221sequential_394223sequential_394225sequential_394227sequential_394229*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_394067�
$sequential/StatefulPartitionedCall_1StatefulPartitionedCall1tf.__operators__.getitem_1/strided_slice:output:0sequential_394219sequential_394221sequential_394223sequential_394225sequential_394227sequential_394229*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_394067�
tf.stack/stackPack+sequential/StatefulPartitionedCall:output:0-sequential/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:���������*

axisj
IdentityIdentitytf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential/StatefulPartitionedCall_1$sequential/StatefulPartitionedCall_1:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_394394

inputs
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_394241s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_394118
dense_input
dense_394102:2
dense_394104:2 
dense_1_394107:22
dense_1_394109:2 
dense_2_394112:2
dense_2_394114:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_394102dense_394104*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_393944�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_394107dense_1_394109*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_393961�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_394112dense_2_394114*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_393977w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_namedense_input
�	
�
C__inference_dense_2_layer_call_and_return_conditional_losses_393977

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
&__inference_dense_layer_call_fn_394609

inputs
unknown:2
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_393944o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_model_layer_call_and_return_conditional_losses_394306
input_1#
sequential_394284:2
sequential_394286:2#
sequential_394288:22
sequential_394290:2#
sequential_394292:2
sequential_394294:
identity��"sequential/StatefulPartitionedCall�$sequential/StatefulPartitionedCall_1
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(tf.__operators__.getitem_1/strided_sliceStridedSliceinput_17tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask}
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&tf.__operators__.getitem/strided_sliceStridedSliceinput_15tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
"sequential/StatefulPartitionedCallStatefulPartitionedCall/tf.__operators__.getitem/strided_slice:output:0sequential_394284sequential_394286sequential_394288sequential_394290sequential_394292sequential_394294*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_393984�
$sequential/StatefulPartitionedCall_1StatefulPartitionedCall1tf.__operators__.getitem_1/strided_slice:output:0sequential_394284sequential_394286sequential_394288sequential_394290sequential_394292sequential_394294*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_393984�
tf.stack/stackPack+sequential/StatefulPartitionedCall:output:0-sequential/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:���������*

axisj
IdentityIdentitytf.stack/stack:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential/StatefulPartitionedCall_1$sequential/StatefulPartitionedCall_1:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
&__inference_model_layer_call_fn_394273
input_1
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_394241s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������@
tf.stack4
StatefulPartitionedCall:0���������tensorflow/serving/predict:ǳ
�
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
(
	keras_api"
_tf_keras_layer
J
0
1
2
3
4
 5"
trackable_list_wrapper
J
0
1
2
3
4
 5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
&trace_0
'trace_1
(trace_2
)trace_32�
&__inference_model_layer_call_fn_394189
&__inference_model_layer_call_fn_394377
&__inference_model_layer_call_fn_394394
&__inference_model_layer_call_fn_394273�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z&trace_0z'trace_1z(trace_2z)trace_3
�
*trace_0
+trace_1
,trace_2
-trace_32�
A__inference_model_layer_call_and_return_conditional_losses_394441
A__inference_model_layer_call_and_return_conditional_losses_394488
A__inference_model_layer_call_and_return_conditional_losses_394306
A__inference_model_layer_call_and_return_conditional_losses_394339�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z*trace_0z+trace_1z,trace_2z-trace_3
�B�
!__inference__wrapped_model_393926input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
.
_variables
/_iterations
0_learning_rate
1_index_dict
2
_momentums
3_velocities
4_update_step_xla"
experimentalOptimizer
,
5serving_default"
signature_map
"
_generic_user_object
"
_generic_user_object
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

kernel
 bias"
_tf_keras_layer
J
0
1
2
3
4
 5"
trackable_list_wrapper
J
0
1
2
3
4
 5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Mtrace_0
Ntrace_1
Otrace_2
Ptrace_32�
+__inference_sequential_layer_call_fn_393999
+__inference_sequential_layer_call_fn_394535
+__inference_sequential_layer_call_fn_394552
+__inference_sequential_layer_call_fn_394099�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zMtrace_0zNtrace_1zOtrace_2zPtrace_3
�
Qtrace_0
Rtrace_1
Strace_2
Ttrace_32�
F__inference_sequential_layer_call_and_return_conditional_losses_394576
F__inference_sequential_layer_call_and_return_conditional_losses_394600
F__inference_sequential_layer_call_and_return_conditional_losses_394118
F__inference_sequential_layer_call_and_return_conditional_losses_394137�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zQtrace_0zRtrace_1zStrace_2zTtrace_3
"
_generic_user_object
:22dense/kernel
:22
dense/bias
 :222dense_1/kernel
:22dense_1/bias
 :22dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_model_layer_call_fn_394189input_1"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_model_layer_call_fn_394377inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_model_layer_call_fn_394394inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_model_layer_call_fn_394273input_1"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_394441inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_394488inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_394306input_1"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_394339input_1"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
~
/0
W1
X2
Y3
Z4
[5
\6
]7
^8
_9
`10
a11
b12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
J
W0
Y1
[2
]3
_4
a5"
trackable_list_wrapper
J
X0
Z1
\2
^3
`4
b5"
trackable_list_wrapper
�
ctrace_0
dtrace_1
etrace_2
ftrace_3
gtrace_4
htrace_52�
#__inference__update_step_xla_394493
#__inference__update_step_xla_394498
#__inference__update_step_xla_394503
#__inference__update_step_xla_394508
#__inference__update_step_xla_394513
#__inference__update_step_xla_394518�
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
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
 0zctrace_0zdtrace_1zetrace_2zftrace_3zgtrace_4zhtrace_5
�B�
$__inference_signature_wrapper_394360input_1"�
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
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
ntrace_02�
&__inference_dense_layer_call_fn_394609�
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
 zntrace_0
�
otrace_02�
A__inference_dense_layer_call_and_return_conditional_losses_394620�
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
 zotrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
utrace_02�
(__inference_dense_1_layer_call_fn_394629�
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
 zutrace_0
�
vtrace_02�
C__inference_dense_1_layer_call_and_return_conditional_losses_394640�
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
 zvtrace_0
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
|trace_02�
(__inference_dense_2_layer_call_fn_394649�
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
 z|trace_0
�
}trace_02�
C__inference_dense_2_layer_call_and_return_conditional_losses_394659�
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
 z}trace_0
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_sequential_layer_call_fn_393999dense_input"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_394535inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_394552inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_394099dense_input"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_394576inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_394600inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_394118dense_input"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_394137dense_input"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
P
~	variables
	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
#:!22Adam/m/dense/kernel
#:!22Adam/v/dense/kernel
:22Adam/m/dense/bias
:22Adam/v/dense/bias
%:#222Adam/m/dense_1/kernel
%:#222Adam/v/dense_1/kernel
:22Adam/m/dense_1/bias
:22Adam/v/dense_1/bias
%:#22Adam/m/dense_2/kernel
%:#22Adam/v/dense_2/kernel
:2Adam/m/dense_2/bias
:2Adam/v/dense_2/bias
�B�
#__inference__update_step_xla_394493gradientvariable"�
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
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
�B�
#__inference__update_step_xla_394498gradientvariable"�
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
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
�B�
#__inference__update_step_xla_394503gradientvariable"�
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
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
�B�
#__inference__update_step_xla_394508gradientvariable"�
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
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
�B�
#__inference__update_step_xla_394513gradientvariable"�
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
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
�B�
#__inference__update_step_xla_394518gradientvariable"�
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
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
�B�
&__inference_dense_layer_call_fn_394609inputs"�
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
�B�
A__inference_dense_layer_call_and_return_conditional_losses_394620inputs"�
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
�B�
(__inference_dense_1_layer_call_fn_394629inputs"�
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
�B�
C__inference_dense_1_layer_call_and_return_conditional_losses_394640inputs"�
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
�B�
(__inference_dense_2_layer_call_fn_394649inputs"�
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
�B�
C__inference_dense_2_layer_call_and_return_conditional_losses_394659inputs"�
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
0
�0
�1"
trackable_list_wrapper
-
~	variables"
_generic_user_object
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
trackable_dict_wrapper�
#__inference__update_step_xla_394493nh�e
^�[
�
gradient2
4�1	�
�2
�
p
` VariableSpec 
`��߃��?
� "
 �
#__inference__update_step_xla_394498f`�]
V�S
�
gradient2
0�-	�
�2
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_394503nh�e
^�[
�
gradient22
4�1	�
�22
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_394508f`�]
V�S
�
gradient2
0�-	�
�2
�
p
` VariableSpec 
`ಉ���?
� "
 �
#__inference__update_step_xla_394513nh�e
^�[
�
gradient2
4�1	�
�2
�
p
` VariableSpec 
`�𤃝�?
� "
 �
#__inference__update_step_xla_394518f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`������?
� "
 �
!__inference__wrapped_model_393926s 0�-
&�#
!�
input_1���������
� "7�4
2
tf.stack&�#
tf_stack����������
C__inference_dense_1_layer_call_and_return_conditional_losses_394640c/�,
%�"
 �
inputs���������2
� ",�)
"�
tensor_0���������2
� �
(__inference_dense_1_layer_call_fn_394629X/�,
%�"
 �
inputs���������2
� "!�
unknown���������2�
C__inference_dense_2_layer_call_and_return_conditional_losses_394659c /�,
%�"
 �
inputs���������2
� ",�)
"�
tensor_0���������
� �
(__inference_dense_2_layer_call_fn_394649X /�,
%�"
 �
inputs���������2
� "!�
unknown����������
A__inference_dense_layer_call_and_return_conditional_losses_394620c/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������2
� �
&__inference_dense_layer_call_fn_394609X/�,
%�"
 �
inputs���������
� "!�
unknown���������2�
A__inference_model_layer_call_and_return_conditional_losses_394306t 8�5
.�+
!�
input_1���������
p 

 
� "0�-
&�#
tensor_0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_394339t 8�5
.�+
!�
input_1���������
p

 
� "0�-
&�#
tensor_0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_394441s 7�4
-�*
 �
inputs���������
p 

 
� "0�-
&�#
tensor_0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_394488s 7�4
-�*
 �
inputs���������
p

 
� "0�-
&�#
tensor_0���������
� �
&__inference_model_layer_call_fn_394189i 8�5
.�+
!�
input_1���������
p 

 
� "%�"
unknown����������
&__inference_model_layer_call_fn_394273i 8�5
.�+
!�
input_1���������
p

 
� "%�"
unknown����������
&__inference_model_layer_call_fn_394377h 7�4
-�*
 �
inputs���������
p 

 
� "%�"
unknown����������
&__inference_model_layer_call_fn_394394h 7�4
-�*
 �
inputs���������
p

 
� "%�"
unknown����������
F__inference_sequential_layer_call_and_return_conditional_losses_394118t <�9
2�/
%�"
dense_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_394137t <�9
2�/
%�"
dense_input���������
p

 
� ",�)
"�
tensor_0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_394576o 7�4
-�*
 �
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_394600o 7�4
-�*
 �
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
+__inference_sequential_layer_call_fn_393999i <�9
2�/
%�"
dense_input���������
p 

 
� "!�
unknown����������
+__inference_sequential_layer_call_fn_394099i <�9
2�/
%�"
dense_input���������
p

 
� "!�
unknown����������
+__inference_sequential_layer_call_fn_394535d 7�4
-�*
 �
inputs���������
p 

 
� "!�
unknown����������
+__inference_sequential_layer_call_fn_394552d 7�4
-�*
 �
inputs���������
p

 
� "!�
unknown����������
$__inference_signature_wrapper_394360~ ;�8
� 
1�.
,
input_1!�
input_1���������"7�4
2
tf.stack&�#
tf_stack���������