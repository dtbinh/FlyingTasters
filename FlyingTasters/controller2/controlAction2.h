/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: controlAction2.h
 *
 * Code generated for Simulink model 'controlAction2'.
 *
 * Model version                  : 1.1
 * Simulink Coder version         : 8.11 (R2016b) 25-Aug-2016
 * C/C++ source code generated on : Tue Jun 27 22:10:57 2017
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_controlAction2_h_
#define RTW_HEADER_controlAction2_h_
#include <math.h>
#include <string.h>
#include <stddef.h>
#ifndef controlAction2_COMMON_INCLUDES_
# define controlAction2_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* controlAction2_COMMON_INCLUDES_ */

#include "controlAction2_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

/* Block signals for system '<S1>/Dead Zone' */
typedef struct {
  real_T error_dz;                     /* '<S1>/Dead Zone' */
} B_DeadZone_controlAction2_T;

/* Block signals (auto storage) */
typedef struct {
  B_DeadZone_controlAction2_T sf_DeadZone1;/* '<S1>/Dead Zone1' */
  B_DeadZone_controlAction2_T sf_DeadZone;/* '<S1>/Dead Zone' */
} B_controlAction2_T;

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  real_T UD_DSTATE;                    /* '<S5>/UD' */
  real_T UD_DSTATE_g;                  /* '<S6>/UD' */
} DW_controlAction2_T;

/* External inputs (root inport signals with auto storage) */
typedef struct {
  MyPositionControlData posData2;      /* '<Root>/posData2' */
  MySensorData sensorData2;            /* '<Root>/sensorData2' */
  MyPositionControlData refData2;      /* '<Root>/refData2' */
} ExtU_controlAction2_T;

/* External outputs (root outports fed by signals with auto storage) */
typedef struct {
  MyDroneData droneData2;              /* '<Root>/droneData2' */
} ExtY_controlAction2_T;

/* Real-time Model Data Structure */
struct tag_RTM_controlAction2_T {
  const char_T * volatile errorStatus;
};

/* Block signals (auto storage) */
extern B_controlAction2_T controlAction2_B;

/* Block states (auto storage) */
extern DW_controlAction2_T controlAction2_DW;

/* External inputs (root inport signals with auto storage) */
extern ExtU_controlAction2_T controlAction2_U;

/* External outputs (root outports fed by signals with auto storage) */
extern ExtY_controlAction2_T controlAction2_Y;

/* External data declarations for dependent source files */
extern const MyDroneData controlAction2_rtZMyDroneData;/* MyDroneData ground */

/* Model entry point functions */
extern void controlAction2_initialize(void);
extern void controlAction2_step(void);
extern void controlAction2_terminate(void);

/* Real-time Model object */
extern RT_MODEL_controlAction2_T *const controlAction2_M;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S5>/Data Type Duplicate' : Unused code path elimination
 * Block '<S6>/Data Type Duplicate' : Unused code path elimination
 */

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'controlAction2'
 * '<S1>'   : 'controlAction2/Position Control'
 * '<S2>'   : 'controlAction2/yaw control'
 * '<S3>'   : 'controlAction2/Position Control/Dead Zone'
 * '<S4>'   : 'controlAction2/Position Control/Dead Zone1'
 * '<S5>'   : 'controlAction2/Position Control/Discrete Derivative'
 * '<S6>'   : 'controlAction2/Position Control/Discrete Derivative1'
 */
#endif                                 /* RTW_HEADER_controlAction2_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
