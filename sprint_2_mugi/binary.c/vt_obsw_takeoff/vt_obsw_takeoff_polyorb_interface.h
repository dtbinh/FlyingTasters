/* This file was generated automatically: DO NOT MODIFY IT ! */

#ifndef vt_obsw_takeoff_POLYORB_INTERFACE
#define vt_obsw_takeoff_POLYORB_INTERFACE
#include <stddef.h>

#include "types.h"
#include "deployment.h"
#include "po_hi_transport.h"
#include "../../obsw/obsw_polyorb_interface.h"
#include "../../controller/controller_polyorb_interface.h"
#include "../../drone_model/drone_model_polyorb_interface.h"
#include "../../x86_partition_taste_api/x86_partition_taste_api_polyorb_interface.h"
/*----------------------------------------------------
-- Asynchronous Provided Interface "artificial_Takeoff"
----------------------------------------------------*/
void po_hi_c_vt_obsw_takeoff_artificial_takeoff(__po_hi_task_id, dataview__mytrajectory_buffer_impl);

/* ------------------------------------------------------
--  Synchronous Required Interface "Takeoff"
------------------------------------------------------ */
void vm_vt_obsw_takeoff_Takeoff(void *Trajectory, size_t Trajectory_len);
/* ------------------------------------------------------
--  Synchronous Required Interface "Compute_PWM_vt"
------------------------------------------------------ */
void vm_vt_obsw_takeoff_Compute_PWM_vt(void *Trajectory, size_t Trajectory_len, void *States, size_t States_len, void *, size_t *);
/* ------------------------------------------------------
--  Synchronous Required Interface "Respond_state_vt"
------------------------------------------------------ */
void vm_vt_obsw_takeoff_Respond_state_vt(void *PWM, size_t PWM_len, void *, size_t *);
/* ------------------------------------------------------
--  Asynchronous Required Interface "GetHeight_vt"
------------------------------------------------------ */
void vm_async_vt_obsw_takeoff_GetHeight_vt(void *Height, size_t Height_len);
/* ------------------------------------------------------
--  Synchronous Required Interface "check_queue_vt"
------------------------------------------------------ */
void vm_vt_obsw_takeoff_check_queue_vt(void *, size_t *);
#endif
