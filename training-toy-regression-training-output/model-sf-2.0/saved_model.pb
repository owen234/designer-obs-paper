Їй
џЊ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Ѕ
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
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.11.02unknown8Х°
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
А
Adam/v/dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_14/bias
y
(Adam/v/dense_14/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_14/bias*
_output_shapes
:*
dtype0
А
Adam/m/dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_14/bias
y
(Adam/m/dense_14/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_14/bias*
_output_shapes
:*
dtype0
И
Adam/v/dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/v/dense_14/kernel
Б
*Adam/v/dense_14/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_14/kernel*
_output_shapes

:2*
dtype0
И
Adam/m/dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/m/dense_14/kernel
Б
*Adam/m/dense_14/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_14/kernel*
_output_shapes

:2*
dtype0
А
Adam/v/dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/v/dense_13/bias
y
(Adam/v/dense_13/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_13/bias*
_output_shapes
:2*
dtype0
А
Adam/m/dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/m/dense_13/bias
y
(Adam/m/dense_13/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_13/bias*
_output_shapes
:2*
dtype0
И
Adam/v/dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*'
shared_nameAdam/v/dense_13/kernel
Б
*Adam/v/dense_13/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_13/kernel*
_output_shapes

:22*
dtype0
И
Adam/m/dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*'
shared_nameAdam/m/dense_13/kernel
Б
*Adam/m/dense_13/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_13/kernel*
_output_shapes

:22*
dtype0
А
Adam/v/dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/v/dense_12/bias
y
(Adam/v/dense_12/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_12/bias*
_output_shapes
:2*
dtype0
А
Adam/m/dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/m/dense_12/bias
y
(Adam/m/dense_12/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_12/bias*
_output_shapes
:2*
dtype0
И
Adam/v/dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/v/dense_12/kernel
Б
*Adam/v/dense_12/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_12/kernel*
_output_shapes

:2*
dtype0
И
Adam/m/dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/m/dense_12/kernel
Б
*Adam/m/dense_12/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_12/kernel*
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
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:2*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:2*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:22*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:2*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:2*
dtype0
z
serving_default_input_5Placeholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
®
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_5dense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *.
f)R'
%__inference_signature_wrapper_1974152

NoOpNoOp
µ2
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*р1
valueж1Bг1 B№1
І
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
Е
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
∞
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
Б
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
¶
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

kernel
bias*
¶
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias*
¶
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
У
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
OI
VARIABLE_VALUEdense_12/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_12/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_13/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_13/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_14/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_14/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
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
У
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
У
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
У
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

Аtotal

Бcount*
M
В	variables
Г	keras_api

Дtotal

Еcount
Ж
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/dense_12/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_12/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_12/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_12/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_13/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_13/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_13/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_13/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_14/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_14/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_14/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_14/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
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
А0
Б1*

~	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Д0
Е1*

В	variables*
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
«	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp*Adam/m/dense_12/kernel/Read/ReadVariableOp*Adam/v/dense_12/kernel/Read/ReadVariableOp(Adam/m/dense_12/bias/Read/ReadVariableOp(Adam/v/dense_12/bias/Read/ReadVariableOp*Adam/m/dense_13/kernel/Read/ReadVariableOp*Adam/v/dense_13/kernel/Read/ReadVariableOp(Adam/m/dense_13/bias/Read/ReadVariableOp(Adam/v/dense_13/bias/Read/ReadVariableOp*Adam/m/dense_14/kernel/Read/ReadVariableOp*Adam/v/dense_14/kernel/Read/ReadVariableOp(Adam/m/dense_14/bias/Read/ReadVariableOp(Adam/v/dense_14/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*%
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
GPU2 *0J 8В *)
f$R"
 __inference__traced_save_1974546
в
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/bias	iterationlearning_rateAdam/m/dense_12/kernelAdam/v/dense_12/kernelAdam/m/dense_12/biasAdam/v/dense_12/biasAdam/m/dense_13/kernelAdam/v/dense_13/kernelAdam/m/dense_13/biasAdam/v/dense_13/biasAdam/m/dense_14/kernelAdam/v/dense_14/kernelAdam/m/dense_14/biasAdam/v/dense_14/biastotal_1count_1totalcount*$
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
GPU2 *0J 8В *,
f'R%
#__inference__traced_restore_1974628√≠
»	
ц
E__inference_dense_14_layer_call_and_return_conditional_losses_1973769

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
ъ
Г
)__inference_model_4_layer_call_fn_1974065
input_5
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_1974033s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_5
Ь

ц
E__inference_dense_13_layer_call_and_return_conditional_losses_1973753

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
…
Ч
*__inference_dense_13_layer_call_fn_1974421

inputs
unknown:22
	unknown_0:2
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_1973753o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
ВK
ƒ
D__inference_model_4_layer_call_and_return_conditional_losses_1974280

inputsF
4sequential_4_dense_12_matmul_readvariableop_resource:2C
5sequential_4_dense_12_biasadd_readvariableop_resource:2F
4sequential_4_dense_13_matmul_readvariableop_resource:22C
5sequential_4_dense_13_biasadd_readvariableop_resource:2F
4sequential_4_dense_14_matmul_readvariableop_resource:2C
5sequential_4_dense_14_biasadd_readvariableop_resource:
identityИҐ,sequential_4/dense_12/BiasAdd/ReadVariableOpҐ.sequential_4/dense_12/BiasAdd_1/ReadVariableOpҐ+sequential_4/dense_12/MatMul/ReadVariableOpҐ-sequential_4/dense_12/MatMul_1/ReadVariableOpҐ,sequential_4/dense_13/BiasAdd/ReadVariableOpҐ.sequential_4/dense_13/BiasAdd_1/ReadVariableOpҐ+sequential_4/dense_13/MatMul/ReadVariableOpҐ-sequential_4/dense_13/MatMul_1/ReadVariableOpҐ,sequential_4/dense_14/BiasAdd/ReadVariableOpҐ.sequential_4/dense_14/BiasAdd_1/ReadVariableOpҐ+sequential_4/dense_14/MatMul/ReadVariableOpҐ-sequential_4/dense_14/MatMul_1/ReadVariableOp
.tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      –
(tf.__operators__.getitem_9/strided_sliceStridedSliceinputs7tf.__operators__.getitem_9/strided_slice/stack:output:09tf.__operators__.getitem_9/strided_slice/stack_1:output:09tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask
.tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      –
(tf.__operators__.getitem_8/strided_sliceStridedSliceinputs7tf.__operators__.getitem_8/strided_slice/stack:output:09tf.__operators__.getitem_8/strided_slice/stack_1:output:09tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask†
+sequential_4/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_12_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ј
sequential_4/dense_12/MatMulMatMul1tf.__operators__.getitem_8/strided_slice:output:03sequential_4/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2Ю
,sequential_4/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_12_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Є
sequential_4/dense_12/BiasAddBiasAdd&sequential_4/dense_12/MatMul:product:04sequential_4/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2|
sequential_4/dense_12/ReluRelu&sequential_4/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2†
+sequential_4/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_13_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0Ј
sequential_4/dense_13/MatMulMatMul(sequential_4/dense_12/Relu:activations:03sequential_4/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2Ю
,sequential_4/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Є
sequential_4/dense_13/BiasAddBiasAdd&sequential_4/dense_13/MatMul:product:04sequential_4/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2|
sequential_4/dense_13/ReluRelu&sequential_4/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2†
+sequential_4/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Ј
sequential_4/dense_14/MatMulMatMul(sequential_4/dense_13/Relu:activations:03sequential_4/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
,sequential_4/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
sequential_4/dense_14/BiasAddBiasAdd&sequential_4/dense_14/MatMul:product:04sequential_4/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
-sequential_4/dense_12/MatMul_1/ReadVariableOpReadVariableOp4sequential_4_dense_12_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ƒ
sequential_4/dense_12/MatMul_1MatMul1tf.__operators__.getitem_9/strided_slice:output:05sequential_4/dense_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2†
.sequential_4/dense_12/BiasAdd_1/ReadVariableOpReadVariableOp5sequential_4_dense_12_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Њ
sequential_4/dense_12/BiasAdd_1BiasAdd(sequential_4/dense_12/MatMul_1:product:06sequential_4/dense_12/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2А
sequential_4/dense_12/Relu_1Relu(sequential_4/dense_12/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Ґ
-sequential_4/dense_13/MatMul_1/ReadVariableOpReadVariableOp4sequential_4_dense_13_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0љ
sequential_4/dense_13/MatMul_1MatMul*sequential_4/dense_12/Relu_1:activations:05sequential_4/dense_13/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2†
.sequential_4/dense_13/BiasAdd_1/ReadVariableOpReadVariableOp5sequential_4_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Њ
sequential_4/dense_13/BiasAdd_1BiasAdd(sequential_4/dense_13/MatMul_1:product:06sequential_4/dense_13/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2А
sequential_4/dense_13/Relu_1Relu(sequential_4/dense_13/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Ґ
-sequential_4/dense_14/MatMul_1/ReadVariableOpReadVariableOp4sequential_4_dense_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0љ
sequential_4/dense_14/MatMul_1MatMul*sequential_4/dense_13/Relu_1:activations:05sequential_4/dense_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
.sequential_4/dense_14/BiasAdd_1/ReadVariableOpReadVariableOp5sequential_4_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Њ
sequential_4/dense_14/BiasAdd_1BiasAdd(sequential_4/dense_14/MatMul_1:product:06sequential_4/dense_14/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€µ
tf.stack_4/stackPack&sequential_4/dense_14/BiasAdd:output:0(sequential_4/dense_14/BiasAdd_1:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€*

axisl
IdentityIdentitytf.stack_4/stack:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€А
NoOpNoOp-^sequential_4/dense_12/BiasAdd/ReadVariableOp/^sequential_4/dense_12/BiasAdd_1/ReadVariableOp,^sequential_4/dense_12/MatMul/ReadVariableOp.^sequential_4/dense_12/MatMul_1/ReadVariableOp-^sequential_4/dense_13/BiasAdd/ReadVariableOp/^sequential_4/dense_13/BiasAdd_1/ReadVariableOp,^sequential_4/dense_13/MatMul/ReadVariableOp.^sequential_4/dense_13/MatMul_1/ReadVariableOp-^sequential_4/dense_14/BiasAdd/ReadVariableOp/^sequential_4/dense_14/BiasAdd_1/ReadVariableOp,^sequential_4/dense_14/MatMul/ReadVariableOp.^sequential_4/dense_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2\
,sequential_4/dense_12/BiasAdd/ReadVariableOp,sequential_4/dense_12/BiasAdd/ReadVariableOp2`
.sequential_4/dense_12/BiasAdd_1/ReadVariableOp.sequential_4/dense_12/BiasAdd_1/ReadVariableOp2Z
+sequential_4/dense_12/MatMul/ReadVariableOp+sequential_4/dense_12/MatMul/ReadVariableOp2^
-sequential_4/dense_12/MatMul_1/ReadVariableOp-sequential_4/dense_12/MatMul_1/ReadVariableOp2\
,sequential_4/dense_13/BiasAdd/ReadVariableOp,sequential_4/dense_13/BiasAdd/ReadVariableOp2`
.sequential_4/dense_13/BiasAdd_1/ReadVariableOp.sequential_4/dense_13/BiasAdd_1/ReadVariableOp2Z
+sequential_4/dense_13/MatMul/ReadVariableOp+sequential_4/dense_13/MatMul/ReadVariableOp2^
-sequential_4/dense_13/MatMul_1/ReadVariableOp-sequential_4/dense_13/MatMul_1/ReadVariableOp2\
,sequential_4/dense_14/BiasAdd/ReadVariableOp,sequential_4/dense_14/BiasAdd/ReadVariableOp2`
.sequential_4/dense_14/BiasAdd_1/ReadVariableOp.sequential_4/dense_14/BiasAdd_1/ReadVariableOp2Z
+sequential_4/dense_14/MatMul/ReadVariableOp+sequential_4/dense_14/MatMul/ReadVariableOp2^
-sequential_4/dense_14/MatMul_1/ReadVariableOp-sequential_4/dense_14/MatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ь

ц
E__inference_dense_12_layer_call_and_return_conditional_losses_1974412

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
£
Э
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973859

inputs"
dense_12_1973843:2
dense_12_1973845:2"
dense_13_1973848:22
dense_13_1973850:2"
dense_14_1973853:2
dense_14_1973855:
identityИҐ dense_12/StatefulPartitionedCallҐ dense_13/StatefulPartitionedCallҐ dense_14/StatefulPartitionedCallш
 dense_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_12_1973843dense_12_1973845*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_1973736Ы
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_1973848dense_13_1973850*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_1973753Ы
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_1973853dense_14_1973855*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_1973769x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ѓ
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
£
Э
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973776

inputs"
dense_12_1973737:2
dense_12_1973739:2"
dense_13_1973754:22
dense_13_1973756:2"
dense_14_1973770:2
dense_14_1973772:
identityИҐ dense_12/StatefulPartitionedCallҐ dense_13/StatefulPartitionedCallҐ dense_14/StatefulPartitionedCallш
 dense_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_12_1973737dense_12_1973739*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_1973736Ы
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_1973754dense_13_1973756*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_1973753Ы
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_1973770dense_14_1973772*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_1973769x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ѓ
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≠
L
$__inference__update_step_xla_1974310
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
Ь

ц
E__inference_dense_12_layer_call_and_return_conditional_losses_1973736

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ВK
ƒ
D__inference_model_4_layer_call_and_return_conditional_losses_1974233

inputsF
4sequential_4_dense_12_matmul_readvariableop_resource:2C
5sequential_4_dense_12_biasadd_readvariableop_resource:2F
4sequential_4_dense_13_matmul_readvariableop_resource:22C
5sequential_4_dense_13_biasadd_readvariableop_resource:2F
4sequential_4_dense_14_matmul_readvariableop_resource:2C
5sequential_4_dense_14_biasadd_readvariableop_resource:
identityИҐ,sequential_4/dense_12/BiasAdd/ReadVariableOpҐ.sequential_4/dense_12/BiasAdd_1/ReadVariableOpҐ+sequential_4/dense_12/MatMul/ReadVariableOpҐ-sequential_4/dense_12/MatMul_1/ReadVariableOpҐ,sequential_4/dense_13/BiasAdd/ReadVariableOpҐ.sequential_4/dense_13/BiasAdd_1/ReadVariableOpҐ+sequential_4/dense_13/MatMul/ReadVariableOpҐ-sequential_4/dense_13/MatMul_1/ReadVariableOpҐ,sequential_4/dense_14/BiasAdd/ReadVariableOpҐ.sequential_4/dense_14/BiasAdd_1/ReadVariableOpҐ+sequential_4/dense_14/MatMul/ReadVariableOpҐ-sequential_4/dense_14/MatMul_1/ReadVariableOp
.tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      –
(tf.__operators__.getitem_9/strided_sliceStridedSliceinputs7tf.__operators__.getitem_9/strided_slice/stack:output:09tf.__operators__.getitem_9/strided_slice/stack_1:output:09tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask
.tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      –
(tf.__operators__.getitem_8/strided_sliceStridedSliceinputs7tf.__operators__.getitem_8/strided_slice/stack:output:09tf.__operators__.getitem_8/strided_slice/stack_1:output:09tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask†
+sequential_4/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_12_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ј
sequential_4/dense_12/MatMulMatMul1tf.__operators__.getitem_8/strided_slice:output:03sequential_4/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2Ю
,sequential_4/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_12_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Є
sequential_4/dense_12/BiasAddBiasAdd&sequential_4/dense_12/MatMul:product:04sequential_4/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2|
sequential_4/dense_12/ReluRelu&sequential_4/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2†
+sequential_4/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_13_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0Ј
sequential_4/dense_13/MatMulMatMul(sequential_4/dense_12/Relu:activations:03sequential_4/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2Ю
,sequential_4/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Є
sequential_4/dense_13/BiasAddBiasAdd&sequential_4/dense_13/MatMul:product:04sequential_4/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2|
sequential_4/dense_13/ReluRelu&sequential_4/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2†
+sequential_4/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Ј
sequential_4/dense_14/MatMulMatMul(sequential_4/dense_13/Relu:activations:03sequential_4/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
,sequential_4/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
sequential_4/dense_14/BiasAddBiasAdd&sequential_4/dense_14/MatMul:product:04sequential_4/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
-sequential_4/dense_12/MatMul_1/ReadVariableOpReadVariableOp4sequential_4_dense_12_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ƒ
sequential_4/dense_12/MatMul_1MatMul1tf.__operators__.getitem_9/strided_slice:output:05sequential_4/dense_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2†
.sequential_4/dense_12/BiasAdd_1/ReadVariableOpReadVariableOp5sequential_4_dense_12_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Њ
sequential_4/dense_12/BiasAdd_1BiasAdd(sequential_4/dense_12/MatMul_1:product:06sequential_4/dense_12/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2А
sequential_4/dense_12/Relu_1Relu(sequential_4/dense_12/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Ґ
-sequential_4/dense_13/MatMul_1/ReadVariableOpReadVariableOp4sequential_4_dense_13_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0љ
sequential_4/dense_13/MatMul_1MatMul*sequential_4/dense_12/Relu_1:activations:05sequential_4/dense_13/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2†
.sequential_4/dense_13/BiasAdd_1/ReadVariableOpReadVariableOp5sequential_4_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Њ
sequential_4/dense_13/BiasAdd_1BiasAdd(sequential_4/dense_13/MatMul_1:product:06sequential_4/dense_13/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2А
sequential_4/dense_13/Relu_1Relu(sequential_4/dense_13/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Ґ
-sequential_4/dense_14/MatMul_1/ReadVariableOpReadVariableOp4sequential_4_dense_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0љ
sequential_4/dense_14/MatMul_1MatMul*sequential_4/dense_13/Relu_1:activations:05sequential_4/dense_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
.sequential_4/dense_14/BiasAdd_1/ReadVariableOpReadVariableOp5sequential_4_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Њ
sequential_4/dense_14/BiasAdd_1BiasAdd(sequential_4/dense_14/MatMul_1:product:06sequential_4/dense_14/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€µ
tf.stack_4/stackPack&sequential_4/dense_14/BiasAdd:output:0(sequential_4/dense_14/BiasAdd_1:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€*

axisl
IdentityIdentitytf.stack_4/stack:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€А
NoOpNoOp-^sequential_4/dense_12/BiasAdd/ReadVariableOp/^sequential_4/dense_12/BiasAdd_1/ReadVariableOp,^sequential_4/dense_12/MatMul/ReadVariableOp.^sequential_4/dense_12/MatMul_1/ReadVariableOp-^sequential_4/dense_13/BiasAdd/ReadVariableOp/^sequential_4/dense_13/BiasAdd_1/ReadVariableOp,^sequential_4/dense_13/MatMul/ReadVariableOp.^sequential_4/dense_13/MatMul_1/ReadVariableOp-^sequential_4/dense_14/BiasAdd/ReadVariableOp/^sequential_4/dense_14/BiasAdd_1/ReadVariableOp,^sequential_4/dense_14/MatMul/ReadVariableOp.^sequential_4/dense_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2\
,sequential_4/dense_12/BiasAdd/ReadVariableOp,sequential_4/dense_12/BiasAdd/ReadVariableOp2`
.sequential_4/dense_12/BiasAdd_1/ReadVariableOp.sequential_4/dense_12/BiasAdd_1/ReadVariableOp2Z
+sequential_4/dense_12/MatMul/ReadVariableOp+sequential_4/dense_12/MatMul/ReadVariableOp2^
-sequential_4/dense_12/MatMul_1/ReadVariableOp-sequential_4/dense_12/MatMul_1/ReadVariableOp2\
,sequential_4/dense_13/BiasAdd/ReadVariableOp,sequential_4/dense_13/BiasAdd/ReadVariableOp2`
.sequential_4/dense_13/BiasAdd_1/ReadVariableOp.sequential_4/dense_13/BiasAdd_1/ReadVariableOp2Z
+sequential_4/dense_13/MatMul/ReadVariableOp+sequential_4/dense_13/MatMul/ReadVariableOp2^
-sequential_4/dense_13/MatMul_1/ReadVariableOp-sequential_4/dense_13/MatMul_1/ReadVariableOp2\
,sequential_4/dense_14/BiasAdd/ReadVariableOp,sequential_4/dense_14/BiasAdd/ReadVariableOp2`
.sequential_4/dense_14/BiasAdd_1/ReadVariableOp.sequential_4/dense_14/BiasAdd_1/ReadVariableOp2Z
+sequential_4/dense_14/MatMul/ReadVariableOp+sequential_4/dense_14/MatMul/ReadVariableOp2^
-sequential_4/dense_14/MatMul_1/ReadVariableOp-sequential_4/dense_14/MatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ч
В
)__inference_model_4_layer_call_fn_1974186

inputs
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИҐStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_1974033s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ї
Ч
D__inference_model_4_layer_call_and_return_conditional_losses_1973966

inputs&
sequential_4_1973944:2"
sequential_4_1973946:2&
sequential_4_1973948:22"
sequential_4_1973950:2&
sequential_4_1973952:2"
sequential_4_1973954:
identityИҐ$sequential_4/StatefulPartitionedCallҐ&sequential_4/StatefulPartitionedCall_1
.tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      –
(tf.__operators__.getitem_9/strided_sliceStridedSliceinputs7tf.__operators__.getitem_9/strided_slice/stack:output:09tf.__operators__.getitem_9/strided_slice/stack_1:output:09tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask
.tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      –
(tf.__operators__.getitem_8/strided_sliceStridedSliceinputs7tf.__operators__.getitem_8/strided_slice/stack:output:09tf.__operators__.getitem_8/strided_slice/stack_1:output:09tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_maskУ
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_8/strided_slice:output:0sequential_4_1973944sequential_4_1973946sequential_4_1973948sequential_4_1973950sequential_4_1973952sequential_4_1973954*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973776Х
&sequential_4/StatefulPartitionedCall_1StatefulPartitionedCall1tf.__operators__.getitem_9/strided_slice:output:0sequential_4_1973944sequential_4_1973946sequential_4_1973948sequential_4_1973950sequential_4_1973952sequential_4_1973954*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973776√
tf.stack_4/stackPack-sequential_4/StatefulPartitionedCall:output:0/sequential_4/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€*

axisl
IdentityIdentitytf.stack_4/stack:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Ц
NoOpNoOp%^sequential_4/StatefulPartitionedCall'^sequential_4/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2P
&sequential_4/StatefulPartitionedCall_1&sequential_4/StatefulPartitionedCall_1:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
»	
ц
E__inference_dense_14_layer_call_and_return_conditional_losses_1974451

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
ј
К
I__inference_sequential_4_layer_call_and_return_conditional_losses_1974392

inputs9
'dense_12_matmul_readvariableop_resource:26
(dense_12_biasadd_readvariableop_resource:29
'dense_13_matmul_readvariableop_resource:226
(dense_13_biasadd_readvariableop_resource:29
'dense_14_matmul_readvariableop_resource:26
(dense_14_biasadd_readvariableop_resource:
identityИҐdense_12/BiasAdd/ReadVariableOpҐdense_12/MatMul/ReadVariableOpҐdense_13/BiasAdd/ReadVariableOpҐdense_13/MatMul/ReadVariableOpҐdense_14/BiasAdd/ReadVariableOpҐdense_14/MatMul/ReadVariableOpЖ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0{
dense_12/MatMulMatMulinputs&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2Д
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0С
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2b
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Ж
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0Р
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2Д
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0С
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2b
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Ж
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Р
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_14/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€П
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
щ
З
.__inference_sequential_4_layer_call_fn_1974344

inputs
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973859o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
є
P
$__inference__update_step_xla_1974305
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
њ
Ш
D__inference_model_4_layer_call_and_return_conditional_losses_1974098
input_5&
sequential_4_1974076:2"
sequential_4_1974078:2&
sequential_4_1974080:22"
sequential_4_1974082:2&
sequential_4_1974084:2"
sequential_4_1974086:
identityИҐ$sequential_4/StatefulPartitionedCallҐ&sequential_4/StatefulPartitionedCall_1
.tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      —
(tf.__operators__.getitem_9/strided_sliceStridedSliceinput_57tf.__operators__.getitem_9/strided_slice/stack:output:09tf.__operators__.getitem_9/strided_slice/stack_1:output:09tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask
.tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      —
(tf.__operators__.getitem_8/strided_sliceStridedSliceinput_57tf.__operators__.getitem_8/strided_slice/stack:output:09tf.__operators__.getitem_8/strided_slice/stack_1:output:09tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_maskУ
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_8/strided_slice:output:0sequential_4_1974076sequential_4_1974078sequential_4_1974080sequential_4_1974082sequential_4_1974084sequential_4_1974086*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973776Х
&sequential_4/StatefulPartitionedCall_1StatefulPartitionedCall1tf.__operators__.getitem_9/strided_slice:output:0sequential_4_1974076sequential_4_1974078sequential_4_1974080sequential_4_1974082sequential_4_1974084sequential_4_1974086*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973776√
tf.stack_4/stackPack-sequential_4/StatefulPartitionedCall:output:0/sequential_4/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€*

axisl
IdentityIdentitytf.stack_4/stack:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Ц
NoOpNoOp%^sequential_4/StatefulPartitionedCall'^sequential_4/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2P
&sequential_4/StatefulPartitionedCall_1&sequential_4/StatefulPartitionedCall_1:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_5
ї
•
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973929
dense_12_input"
dense_12_1973913:2
dense_12_1973915:2"
dense_13_1973918:22
dense_13_1973920:2"
dense_14_1973923:2
dense_14_1973925:
identityИҐ dense_12/StatefulPartitionedCallҐ dense_13/StatefulPartitionedCallҐ dense_14/StatefulPartitionedCallА
 dense_12/StatefulPartitionedCallStatefulPartitionedCalldense_12_inputdense_12_1973913dense_12_1973915*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_1973736Ы
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_1973918dense_13_1973920*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_1973753Ы
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_1973923dense_14_1973925*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_1973769x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ѓ
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namedense_12_input
њ
Ш
D__inference_model_4_layer_call_and_return_conditional_losses_1974131
input_5&
sequential_4_1974109:2"
sequential_4_1974111:2&
sequential_4_1974113:22"
sequential_4_1974115:2&
sequential_4_1974117:2"
sequential_4_1974119:
identityИҐ$sequential_4/StatefulPartitionedCallҐ&sequential_4/StatefulPartitionedCall_1
.tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      —
(tf.__operators__.getitem_9/strided_sliceStridedSliceinput_57tf.__operators__.getitem_9/strided_slice/stack:output:09tf.__operators__.getitem_9/strided_slice/stack_1:output:09tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask
.tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      —
(tf.__operators__.getitem_8/strided_sliceStridedSliceinput_57tf.__operators__.getitem_8/strided_slice/stack:output:09tf.__operators__.getitem_8/strided_slice/stack_1:output:09tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_maskУ
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_8/strided_slice:output:0sequential_4_1974109sequential_4_1974111sequential_4_1974113sequential_4_1974115sequential_4_1974117sequential_4_1974119*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973859Х
&sequential_4/StatefulPartitionedCall_1StatefulPartitionedCall1tf.__operators__.getitem_9/strided_slice:output:0sequential_4_1974109sequential_4_1974111sequential_4_1974113sequential_4_1974115sequential_4_1974117sequential_4_1974119*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973859√
tf.stack_4/stackPack-sequential_4/StatefulPartitionedCall:output:0/sequential_4/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€*

axisl
IdentityIdentitytf.stack_4/stack:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Ц
NoOpNoOp%^sequential_4/StatefulPartitionedCall'^sequential_4/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2P
&sequential_4/StatefulPartitionedCall_1&sequential_4/StatefulPartitionedCall_1:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_5
≠
L
$__inference__update_step_xla_1974300
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
ї
Ч
D__inference_model_4_layer_call_and_return_conditional_losses_1974033

inputs&
sequential_4_1974011:2"
sequential_4_1974013:2&
sequential_4_1974015:22"
sequential_4_1974017:2&
sequential_4_1974019:2"
sequential_4_1974021:
identityИҐ$sequential_4/StatefulPartitionedCallҐ&sequential_4/StatefulPartitionedCall_1
.tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      –
(tf.__operators__.getitem_9/strided_sliceStridedSliceinputs7tf.__operators__.getitem_9/strided_slice/stack:output:09tf.__operators__.getitem_9/strided_slice/stack_1:output:09tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask
.tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      –
(tf.__operators__.getitem_8/strided_sliceStridedSliceinputs7tf.__operators__.getitem_8/strided_slice/stack:output:09tf.__operators__.getitem_8/strided_slice/stack_1:output:09tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_maskУ
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall1tf.__operators__.getitem_8/strided_slice:output:0sequential_4_1974011sequential_4_1974013sequential_4_1974015sequential_4_1974017sequential_4_1974019sequential_4_1974021*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973859Х
&sequential_4/StatefulPartitionedCall_1StatefulPartitionedCall1tf.__operators__.getitem_9/strided_slice:output:0sequential_4_1974011sequential_4_1974013sequential_4_1974015sequential_4_1974017sequential_4_1974019sequential_4_1974021*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973859√
tf.stack_4/stackPack-sequential_4/StatefulPartitionedCall:output:0/sequential_4/StatefulPartitionedCall_1:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€*

axisl
IdentityIdentitytf.stack_4/stack:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Ц
NoOpNoOp%^sequential_4/StatefulPartitionedCall'^sequential_4/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2P
&sequential_4/StatefulPartitionedCall_1&sequential_4/StatefulPartitionedCall_1:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≠
L
$__inference__update_step_xla_1974290
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
ї
•
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973910
dense_12_input"
dense_12_1973894:2
dense_12_1973896:2"
dense_13_1973899:22
dense_13_1973901:2"
dense_14_1973904:2
dense_14_1973906:
identityИҐ dense_12/StatefulPartitionedCallҐ dense_13/StatefulPartitionedCallҐ dense_14/StatefulPartitionedCallА
 dense_12/StatefulPartitionedCallStatefulPartitionedCalldense_12_inputdense_12_1973894dense_12_1973896*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_1973736Ы
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_1973899dense_13_1973901*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_1973753Ы
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_1973904dense_14_1973906*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_1973769x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ѓ
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namedense_12_input
й4
Г

 __inference__traced_save_1974546
file_prefix.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop5
1savev2_adam_m_dense_12_kernel_read_readvariableop5
1savev2_adam_v_dense_12_kernel_read_readvariableop3
/savev2_adam_m_dense_12_bias_read_readvariableop3
/savev2_adam_v_dense_12_bias_read_readvariableop5
1savev2_adam_m_dense_13_kernel_read_readvariableop5
1savev2_adam_v_dense_13_kernel_read_readvariableop3
/savev2_adam_m_dense_13_bias_read_readvariableop3
/savev2_adam_v_dense_13_bias_read_readvariableop5
1savev2_adam_m_dense_14_kernel_read_readvariableop5
1savev2_adam_v_dense_14_kernel_read_readvariableop3
/savev2_adam_m_dense_14_bias_read_readvariableop3
/savev2_adam_v_dense_14_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: †

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*…	
valueњ	BЉ	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЯ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B ¶

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop1savev2_adam_m_dense_12_kernel_read_readvariableop1savev2_adam_v_dense_12_kernel_read_readvariableop/savev2_adam_m_dense_12_bias_read_readvariableop/savev2_adam_v_dense_12_bias_read_readvariableop1savev2_adam_m_dense_13_kernel_read_readvariableop1savev2_adam_v_dense_13_kernel_read_readvariableop/savev2_adam_m_dense_13_bias_read_readvariableop/savev2_adam_v_dense_13_bias_read_readvariableop1savev2_adam_m_dense_14_kernel_read_readvariableop1savev2_adam_v_dense_14_kernel_read_readvariableop/savev2_adam_m_dense_14_bias_read_readvariableop/savev2_adam_v_dense_14_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *'
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
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

identity_1Identity_1:output:0*µ
_input_shapes£
†: :2:2:22:2:2:: : :2:2:2:2:22:22:2:2:2:2::: : : : : 2(
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
є
P
$__inference__update_step_xla_1974285
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
Ь

ц
E__inference_dense_13_layer_call_and_return_conditional_losses_1974432

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
…
Ч
*__inference_dense_12_layer_call_fn_1974401

inputs
unknown:2
	unknown_0:2
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_1973736o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
щ
З
.__inference_sequential_4_layer_call_fn_1974327

inputs
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973776o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
‘
€
%__inference_signature_wrapper_1974152
input_5
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИҐStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *+
f&R$
"__inference__wrapped_model_1973718s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_5
ч
В
)__inference_model_4_layer_call_fn_1974169

inputs
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИҐStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_1973966s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
…
Ч
*__inference_dense_14_layer_call_fn_1974441

inputs
unknown:2
	unknown_0:
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_1973769o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
ј
К
I__inference_sequential_4_layer_call_and_return_conditional_losses_1974368

inputs9
'dense_12_matmul_readvariableop_resource:26
(dense_12_biasadd_readvariableop_resource:29
'dense_13_matmul_readvariableop_resource:226
(dense_13_biasadd_readvariableop_resource:29
'dense_14_matmul_readvariableop_resource:26
(dense_14_biasadd_readvariableop_resource:
identityИҐdense_12/BiasAdd/ReadVariableOpҐdense_12/MatMul/ReadVariableOpҐdense_13/BiasAdd/ReadVariableOpҐdense_13/MatMul/ReadVariableOpҐdense_14/BiasAdd/ReadVariableOpҐdense_14/MatMul/ReadVariableOpЖ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0{
dense_12/MatMulMatMulinputs&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2Д
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0С
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2b
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Ж
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0Р
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2Д
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0С
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2b
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Ж
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Р
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_14/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€П
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ъ
Г
)__inference_model_4_layer_call_fn_1973981
input_5
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_1973966s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_5
»S
≥	
"__inference__wrapped_model_1973718
input_5N
<model_4_sequential_4_dense_12_matmul_readvariableop_resource:2K
=model_4_sequential_4_dense_12_biasadd_readvariableop_resource:2N
<model_4_sequential_4_dense_13_matmul_readvariableop_resource:22K
=model_4_sequential_4_dense_13_biasadd_readvariableop_resource:2N
<model_4_sequential_4_dense_14_matmul_readvariableop_resource:2K
=model_4_sequential_4_dense_14_biasadd_readvariableop_resource:
identityИҐ4model_4/sequential_4/dense_12/BiasAdd/ReadVariableOpҐ6model_4/sequential_4/dense_12/BiasAdd_1/ReadVariableOpҐ3model_4/sequential_4/dense_12/MatMul/ReadVariableOpҐ5model_4/sequential_4/dense_12/MatMul_1/ReadVariableOpҐ4model_4/sequential_4/dense_13/BiasAdd/ReadVariableOpҐ6model_4/sequential_4/dense_13/BiasAdd_1/ReadVariableOpҐ3model_4/sequential_4/dense_13/MatMul/ReadVariableOpҐ5model_4/sequential_4/dense_13/MatMul_1/ReadVariableOpҐ4model_4/sequential_4/dense_14/BiasAdd/ReadVariableOpҐ6model_4/sequential_4/dense_14/BiasAdd_1/ReadVariableOpҐ3model_4/sequential_4/dense_14/MatMul/ReadVariableOpҐ5model_4/sequential_4/dense_14/MatMul_1/ReadVariableOpЗ
6model_4/tf.__operators__.getitem_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       Й
8model_4/tf.__operators__.getitem_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Й
8model_4/tf.__operators__.getitem_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      с
0model_4/tf.__operators__.getitem_9/strided_sliceStridedSliceinput_5?model_4/tf.__operators__.getitem_9/strided_slice/stack:output:0Amodel_4/tf.__operators__.getitem_9/strided_slice/stack_1:output:0Amodel_4/tf.__operators__.getitem_9/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_maskЗ
6model_4/tf.__operators__.getitem_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Й
8model_4/tf.__operators__.getitem_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Й
8model_4/tf.__operators__.getitem_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      с
0model_4/tf.__operators__.getitem_8/strided_sliceStridedSliceinput_5?model_4/tf.__operators__.getitem_8/strided_slice/stack:output:0Amodel_4/tf.__operators__.getitem_8/strided_slice/stack_1:output:0Amodel_4/tf.__operators__.getitem_8/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask∞
3model_4/sequential_4/dense_12/MatMul/ReadVariableOpReadVariableOp<model_4_sequential_4_dense_12_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Ў
$model_4/sequential_4/dense_12/MatMulMatMul9model_4/tf.__operators__.getitem_8/strided_slice:output:0;model_4/sequential_4/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2Ѓ
4model_4/sequential_4/dense_12/BiasAdd/ReadVariableOpReadVariableOp=model_4_sequential_4_dense_12_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0–
%model_4/sequential_4/dense_12/BiasAddBiasAdd.model_4/sequential_4/dense_12/MatMul:product:0<model_4/sequential_4/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2М
"model_4/sequential_4/dense_12/ReluRelu.model_4/sequential_4/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2∞
3model_4/sequential_4/dense_13/MatMul/ReadVariableOpReadVariableOp<model_4_sequential_4_dense_13_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0ѕ
$model_4/sequential_4/dense_13/MatMulMatMul0model_4/sequential_4/dense_12/Relu:activations:0;model_4/sequential_4/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2Ѓ
4model_4/sequential_4/dense_13/BiasAdd/ReadVariableOpReadVariableOp=model_4_sequential_4_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0–
%model_4/sequential_4/dense_13/BiasAddBiasAdd.model_4/sequential_4/dense_13/MatMul:product:0<model_4/sequential_4/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2М
"model_4/sequential_4/dense_13/ReluRelu.model_4/sequential_4/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2∞
3model_4/sequential_4/dense_14/MatMul/ReadVariableOpReadVariableOp<model_4_sequential_4_dense_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ѕ
$model_4/sequential_4/dense_14/MatMulMatMul0model_4/sequential_4/dense_13/Relu:activations:0;model_4/sequential_4/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ѓ
4model_4/sequential_4/dense_14/BiasAdd/ReadVariableOpReadVariableOp=model_4_sequential_4_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0–
%model_4/sequential_4/dense_14/BiasAddBiasAdd.model_4/sequential_4/dense_14/MatMul:product:0<model_4/sequential_4/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€≤
5model_4/sequential_4/dense_12/MatMul_1/ReadVariableOpReadVariableOp<model_4_sequential_4_dense_12_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0№
&model_4/sequential_4/dense_12/MatMul_1MatMul9model_4/tf.__operators__.getitem_9/strided_slice:output:0=model_4/sequential_4/dense_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2∞
6model_4/sequential_4/dense_12/BiasAdd_1/ReadVariableOpReadVariableOp=model_4_sequential_4_dense_12_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0÷
'model_4/sequential_4/dense_12/BiasAdd_1BiasAdd0model_4/sequential_4/dense_12/MatMul_1:product:0>model_4/sequential_4/dense_12/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2Р
$model_4/sequential_4/dense_12/Relu_1Relu0model_4/sequential_4/dense_12/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2≤
5model_4/sequential_4/dense_13/MatMul_1/ReadVariableOpReadVariableOp<model_4_sequential_4_dense_13_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0’
&model_4/sequential_4/dense_13/MatMul_1MatMul2model_4/sequential_4/dense_12/Relu_1:activations:0=model_4/sequential_4/dense_13/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2∞
6model_4/sequential_4/dense_13/BiasAdd_1/ReadVariableOpReadVariableOp=model_4_sequential_4_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0÷
'model_4/sequential_4/dense_13/BiasAdd_1BiasAdd0model_4/sequential_4/dense_13/MatMul_1:product:0>model_4/sequential_4/dense_13/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2Р
$model_4/sequential_4/dense_13/Relu_1Relu0model_4/sequential_4/dense_13/BiasAdd_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2≤
5model_4/sequential_4/dense_14/MatMul_1/ReadVariableOpReadVariableOp<model_4_sequential_4_dense_14_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0’
&model_4/sequential_4/dense_14/MatMul_1MatMul2model_4/sequential_4/dense_13/Relu_1:activations:0=model_4/sequential_4/dense_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€∞
6model_4/sequential_4/dense_14/BiasAdd_1/ReadVariableOpReadVariableOp=model_4_sequential_4_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0÷
'model_4/sequential_4/dense_14/BiasAdd_1BiasAdd0model_4/sequential_4/dense_14/MatMul_1:product:0>model_4/sequential_4/dense_14/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ќ
model_4/tf.stack_4/stackPack.model_4/sequential_4/dense_14/BiasAdd:output:00model_4/sequential_4/dense_14/BiasAdd_1:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€*

axist
IdentityIdentity!model_4/tf.stack_4/stack:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€а
NoOpNoOp5^model_4/sequential_4/dense_12/BiasAdd/ReadVariableOp7^model_4/sequential_4/dense_12/BiasAdd_1/ReadVariableOp4^model_4/sequential_4/dense_12/MatMul/ReadVariableOp6^model_4/sequential_4/dense_12/MatMul_1/ReadVariableOp5^model_4/sequential_4/dense_13/BiasAdd/ReadVariableOp7^model_4/sequential_4/dense_13/BiasAdd_1/ReadVariableOp4^model_4/sequential_4/dense_13/MatMul/ReadVariableOp6^model_4/sequential_4/dense_13/MatMul_1/ReadVariableOp5^model_4/sequential_4/dense_14/BiasAdd/ReadVariableOp7^model_4/sequential_4/dense_14/BiasAdd_1/ReadVariableOp4^model_4/sequential_4/dense_14/MatMul/ReadVariableOp6^model_4/sequential_4/dense_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 2l
4model_4/sequential_4/dense_12/BiasAdd/ReadVariableOp4model_4/sequential_4/dense_12/BiasAdd/ReadVariableOp2p
6model_4/sequential_4/dense_12/BiasAdd_1/ReadVariableOp6model_4/sequential_4/dense_12/BiasAdd_1/ReadVariableOp2j
3model_4/sequential_4/dense_12/MatMul/ReadVariableOp3model_4/sequential_4/dense_12/MatMul/ReadVariableOp2n
5model_4/sequential_4/dense_12/MatMul_1/ReadVariableOp5model_4/sequential_4/dense_12/MatMul_1/ReadVariableOp2l
4model_4/sequential_4/dense_13/BiasAdd/ReadVariableOp4model_4/sequential_4/dense_13/BiasAdd/ReadVariableOp2p
6model_4/sequential_4/dense_13/BiasAdd_1/ReadVariableOp6model_4/sequential_4/dense_13/BiasAdd_1/ReadVariableOp2j
3model_4/sequential_4/dense_13/MatMul/ReadVariableOp3model_4/sequential_4/dense_13/MatMul/ReadVariableOp2n
5model_4/sequential_4/dense_13/MatMul_1/ReadVariableOp5model_4/sequential_4/dense_13/MatMul_1/ReadVariableOp2l
4model_4/sequential_4/dense_14/BiasAdd/ReadVariableOp4model_4/sequential_4/dense_14/BiasAdd/ReadVariableOp2p
6model_4/sequential_4/dense_14/BiasAdd_1/ReadVariableOp6model_4/sequential_4/dense_14/BiasAdd_1/ReadVariableOp2j
3model_4/sequential_4/dense_14/MatMul/ReadVariableOp3model_4/sequential_4/dense_14/MatMul/ReadVariableOp2n
5model_4/sequential_4/dense_14/MatMul_1/ReadVariableOp5model_4/sequential_4/dense_14/MatMul_1/ReadVariableOp:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_5
є
P
$__inference__update_step_xla_1974295
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
С	
П
.__inference_sequential_4_layer_call_fn_1973891
dense_12_input
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИҐStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCalldense_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973859o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namedense_12_input
С	
П
.__inference_sequential_4_layer_call_fn_1973791
dense_12_input
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:
identityИҐStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCalldense_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8В *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973776o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namedense_12_input
Тf
ђ
#__inference__traced_restore_1974628
file_prefix2
 assignvariableop_dense_12_kernel:2.
 assignvariableop_1_dense_12_bias:24
"assignvariableop_2_dense_13_kernel:22.
 assignvariableop_3_dense_13_bias:24
"assignvariableop_4_dense_14_kernel:2.
 assignvariableop_5_dense_14_bias:&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: ;
)assignvariableop_8_adam_m_dense_12_kernel:2;
)assignvariableop_9_adam_v_dense_12_kernel:26
(assignvariableop_10_adam_m_dense_12_bias:26
(assignvariableop_11_adam_v_dense_12_bias:2<
*assignvariableop_12_adam_m_dense_13_kernel:22<
*assignvariableop_13_adam_v_dense_13_kernel:226
(assignvariableop_14_adam_m_dense_13_bias:26
(assignvariableop_15_adam_v_dense_13_bias:2<
*assignvariableop_16_adam_m_dense_14_kernel:2<
*assignvariableop_17_adam_v_dense_14_kernel:26
(assignvariableop_18_adam_m_dense_14_bias:6
(assignvariableop_19_adam_v_dense_14_bias:%
assignvariableop_20_total_1: %
assignvariableop_21_count_1: #
assignvariableop_22_total: #
assignvariableop_23_count: 
identity_25ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9£

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*…	
valueњ	BЉ	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHҐ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B Ы
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOpAssignVariableOp assignvariableop_dense_12_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_12_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_13_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_13_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_14_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_14_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:≥
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_8AssignVariableOp)assignvariableop_8_adam_m_dense_12_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_9AssignVariableOp)assignvariableop_9_adam_v_dense_12_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_10AssignVariableOp(assignvariableop_10_adam_m_dense_12_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_11AssignVariableOp(assignvariableop_11_adam_v_dense_12_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_12AssignVariableOp*assignvariableop_12_adam_m_dense_13_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_v_dense_13_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_14AssignVariableOp(assignvariableop_14_adam_m_dense_13_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_v_dense_13_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_m_dense_14_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_v_dense_14_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_m_dense_14_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_v_dense_14_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 я
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: ћ
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
_user_specified_namefile_prefix"Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*±
serving_defaultЭ
;
input_50
serving_default_input_5:0€€€€€€€€€B

tf.stack_44
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:№µ
Њ
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
Я
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
 
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
ў
&trace_0
'trace_1
(trace_2
)trace_32о
)__inference_model_4_layer_call_fn_1973981
)__inference_model_4_layer_call_fn_1974169
)__inference_model_4_layer_call_fn_1974186
)__inference_model_4_layer_call_fn_1974065њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z&trace_0z'trace_1z(trace_2z)trace_3
≈
*trace_0
+trace_1
,trace_2
-trace_32Џ
D__inference_model_4_layer_call_and_return_conditional_losses_1974233
D__inference_model_4_layer_call_and_return_conditional_losses_1974280
D__inference_model_4_layer_call_and_return_conditional_losses_1974098
D__inference_model_4_layer_call_and_return_conditional_losses_1974131њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z*trace_0z+trace_1z,trace_2z-trace_3
ЌB 
"__inference__wrapped_model_1973718input_5"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ь
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
ї
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
ї
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
ї
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
≠
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
н
Mtrace_0
Ntrace_1
Otrace_2
Ptrace_32В
.__inference_sequential_4_layer_call_fn_1973791
.__inference_sequential_4_layer_call_fn_1974327
.__inference_sequential_4_layer_call_fn_1974344
.__inference_sequential_4_layer_call_fn_1973891њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zMtrace_0zNtrace_1zOtrace_2zPtrace_3
ў
Qtrace_0
Rtrace_1
Strace_2
Ttrace_32о
I__inference_sequential_4_layer_call_and_return_conditional_losses_1974368
I__inference_sequential_4_layer_call_and_return_conditional_losses_1974392
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973910
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973929њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zQtrace_0zRtrace_1zStrace_2zTtrace_3
"
_generic_user_object
!:22dense_12/kernel
:22dense_12/bias
!:222dense_13/kernel
:22dense_13/bias
!:22dense_14/kernel
:2dense_14/bias
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
ыBш
)__inference_model_4_layer_call_fn_1973981input_5"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
)__inference_model_4_layer_call_fn_1974169inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
)__inference_model_4_layer_call_fn_1974186inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
)__inference_model_4_layer_call_fn_1974065input_5"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
D__inference_model_4_layer_call_and_return_conditional_losses_1974233inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
D__inference_model_4_layer_call_and_return_conditional_losses_1974280inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
D__inference_model_4_layer_call_and_return_conditional_losses_1974098input_5"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
D__inference_model_4_layer_call_and_return_conditional_losses_1974131input_5"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
њ
ctrace_0
dtrace_1
etrace_2
ftrace_3
gtrace_4
htrace_52†
$__inference__update_step_xla_1974285
$__inference__update_step_xla_1974290
$__inference__update_step_xla_1974295
$__inference__update_step_xla_1974300
$__inference__update_step_xla_1974305
$__inference__update_step_xla_1974310є
Ѓ≤™
FullArgSpec2
args*Ъ'
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0zctrace_0zdtrace_1zetrace_2zftrace_3zgtrace_4zhtrace_5
ћB…
%__inference_signature_wrapper_1974152input_5"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
≠
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
о
ntrace_02—
*__inference_dense_12_layer_call_fn_1974401Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zntrace_0
Й
otrace_02м
E__inference_dense_12_layer_call_and_return_conditional_losses_1974412Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
≠
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
о
utrace_02—
*__inference_dense_13_layer_call_fn_1974421Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zutrace_0
Й
vtrace_02м
E__inference_dense_13_layer_call_and_return_conditional_losses_1974432Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
≠
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
о
|trace_02—
*__inference_dense_14_layer_call_fn_1974441Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z|trace_0
Й
}trace_02м
E__inference_dense_14_layer_call_and_return_conditional_losses_1974451Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЗBД
.__inference_sequential_4_layer_call_fn_1973791dense_12_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
.__inference_sequential_4_layer_call_fn_1974327inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
.__inference_sequential_4_layer_call_fn_1974344inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЗBД
.__inference_sequential_4_layer_call_fn_1973891dense_12_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_sequential_4_layer_call_and_return_conditional_losses_1974368inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_sequential_4_layer_call_and_return_conditional_losses_1974392inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ҐBЯ
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973910dense_12_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ҐBЯ
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973929dense_12_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
P
~	variables
	keras_api

Аtotal

Бcount"
_tf_keras_metric
c
В	variables
Г	keras_api

Дtotal

Еcount
Ж
_fn_kwargs"
_tf_keras_metric
&:$22Adam/m/dense_12/kernel
&:$22Adam/v/dense_12/kernel
 :22Adam/m/dense_12/bias
 :22Adam/v/dense_12/bias
&:$222Adam/m/dense_13/kernel
&:$222Adam/v/dense_13/kernel
 :22Adam/m/dense_13/bias
 :22Adam/v/dense_13/bias
&:$22Adam/m/dense_14/kernel
&:$22Adam/v/dense_14/kernel
 :2Adam/m/dense_14/bias
 :2Adam/v/dense_14/bias
щBц
$__inference__update_step_xla_1974285gradientvariable"Ј
Ѓ≤™
FullArgSpec2
args*Ъ'
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
$__inference__update_step_xla_1974290gradientvariable"Ј
Ѓ≤™
FullArgSpec2
args*Ъ'
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
$__inference__update_step_xla_1974295gradientvariable"Ј
Ѓ≤™
FullArgSpec2
args*Ъ'
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
$__inference__update_step_xla_1974300gradientvariable"Ј
Ѓ≤™
FullArgSpec2
args*Ъ'
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
$__inference__update_step_xla_1974305gradientvariable"Ј
Ѓ≤™
FullArgSpec2
args*Ъ'
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
$__inference__update_step_xla_1974310gradientvariable"Ј
Ѓ≤™
FullArgSpec2
args*Ъ'
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ёBџ
*__inference_dense_12_layer_call_fn_1974401inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
E__inference_dense_12_layer_call_and_return_conditional_losses_1974412inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ёBџ
*__inference_dense_13_layer_call_fn_1974421inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
E__inference_dense_13_layer_call_and_return_conditional_losses_1974432inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ёBџ
*__inference_dense_14_layer_call_fn_1974441inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
E__inference_dense_14_layer_call_and_return_conditional_losses_1974451inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
А0
Б1"
trackable_list_wrapper
-
~	variables"
_generic_user_object
:  (2total
:  (2count
0
Д0
Е1"
trackable_list_wrapper
.
В	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЦ
$__inference__update_step_xla_1974285nhҐe
^Ґ[
К
gradient2
4Т1	Ґ
ъ2
А
p
` VariableSpec 
`а•ЯЫ¶и?
™ "
 О
$__inference__update_step_xla_1974290f`Ґ]
VҐS
К
gradient2
0Т-	Ґ
ъ2
А
p
` VariableSpec 
`аВЯЫ¶и?
™ "
 Ц
$__inference__update_step_xla_1974295nhҐe
^Ґ[
К
gradient22
4Т1	Ґ
ъ22
А
p
` VariableSpec 
`АЫФВЭи?
™ "
 О
$__inference__update_step_xla_1974300f`Ґ]
VҐS
К
gradient2
0Т-	Ґ
ъ2
А
p
` VariableSpec 
`јђФВЭи?
™ "
 Ц
$__inference__update_step_xla_1974305nhҐe
^Ґ[
К
gradient2
4Т1	Ґ
ъ2
А
p
` VariableSpec 
`јщеЖЭи?
™ "
 О
$__inference__update_step_xla_1974310f`Ґ]
VҐS
К
gradient
0Т-	Ґ
ъ
А
p
` VariableSpec 
`†сиВЭи?
™ "
 Э
"__inference__wrapped_model_1973718w 0Ґ-
&Ґ#
!К
input_5€€€€€€€€€
™ ";™8
6

tf.stack_4(К%

tf_stack_4€€€€€€€€€ђ
E__inference_dense_12_layer_call_and_return_conditional_losses_1974412c/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€2
Ъ Ж
*__inference_dense_12_layer_call_fn_1974401X/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€2ђ
E__inference_dense_13_layer_call_and_return_conditional_losses_1974432c/Ґ,
%Ґ"
 К
inputs€€€€€€€€€2
™ ",Ґ)
"К
tensor_0€€€€€€€€€2
Ъ Ж
*__inference_dense_13_layer_call_fn_1974421X/Ґ,
%Ґ"
 К
inputs€€€€€€€€€2
™ "!К
unknown€€€€€€€€€2ђ
E__inference_dense_14_layer_call_and_return_conditional_losses_1974451c /Ґ,
%Ґ"
 К
inputs€€€€€€€€€2
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ж
*__inference_dense_14_layer_call_fn_1974441X /Ґ,
%Ґ"
 К
inputs€€€€€€€€€2
™ "!К
unknown€€€€€€€€€Љ
D__inference_model_4_layer_call_and_return_conditional_losses_1974098t 8Ґ5
.Ґ+
!К
input_5€€€€€€€€€
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ Љ
D__inference_model_4_layer_call_and_return_conditional_losses_1974131t 8Ґ5
.Ґ+
!К
input_5€€€€€€€€€
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ ї
D__inference_model_4_layer_call_and_return_conditional_losses_1974233s 7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ ї
D__inference_model_4_layer_call_and_return_conditional_losses_1974280s 7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ Ц
)__inference_model_4_layer_call_fn_1973981i 8Ґ5
.Ґ+
!К
input_5€€€€€€€€€
p 

 
™ "%К"
unknown€€€€€€€€€Ц
)__inference_model_4_layer_call_fn_1974065i 8Ґ5
.Ґ+
!К
input_5€€€€€€€€€
p

 
™ "%К"
unknown€€€€€€€€€Х
)__inference_model_4_layer_call_fn_1974169h 7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "%К"
unknown€€€€€€€€€Х
)__inference_model_4_layer_call_fn_1974186h 7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "%К"
unknown€€€€€€€€€ƒ
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973910w ?Ґ<
5Ґ2
(К%
dense_12_input€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ƒ
I__inference_sequential_4_layer_call_and_return_conditional_losses_1973929w ?Ґ<
5Ґ2
(К%
dense_12_input€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Љ
I__inference_sequential_4_layer_call_and_return_conditional_losses_1974368o 7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Љ
I__inference_sequential_4_layer_call_and_return_conditional_losses_1974392o 7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ю
.__inference_sequential_4_layer_call_fn_1973791l ?Ґ<
5Ґ2
(К%
dense_12_input€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€Ю
.__inference_sequential_4_layer_call_fn_1973891l ?Ґ<
5Ґ2
(К%
dense_12_input€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€Ц
.__inference_sequential_4_layer_call_fn_1974327d 7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€Ц
.__inference_sequential_4_layer_call_fn_1974344d 7Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€ђ
%__inference_signature_wrapper_1974152В ;Ґ8
Ґ 
1™.
,
input_5!К
input_5€€€€€€€€€";™8
6

tf.stack_4(К%

tf_stack_4€€€€€€€€€