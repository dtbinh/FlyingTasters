#include "po_hi_gqueue.h"
/* This file was generated automatically: DO NOT MODIFY IT ! */

#include "vt_ground_gui_polling_ground_polyorb_interface.h"

#include "activity.h"
#include "types.h"
#include "po_hi_task.h"
/* ------------------------------------------------------
-- Asynchronous Provided Interface "artificial_gui_polling_ground"
------------------------------------------------------ */
void po_hi_c_vt_ground_gui_polling_ground_artificial_gui_polling_ground(__po_hi_task_id e)
{
	sync_ground_gui_polling_ground ();
}

/* ------------------------------------------------------
--  Synchronous Required Interface "gui_polling_ground"
------------------------------------------------------ */
void vm_vt_ground_gui_polling_ground_gui_polling_ground()
{
	sync_ground_gui_polling_ground();
}

/* ------------------------------------------------------
--  Asynchronous Required Interface "Start_work_vt"
------------------------------------------------------ */
void vm_async_vt_ground_gui_polling_ground_Start_work_vt(void *Int_F, size_t Int_F_len)
{
	__po_hi_request_t request;

	__po_hi_copy_array(&(request.vars.vt_ground_gui_polling_ground_global_outport_start_work_vt.vt_ground_gui_polling_ground_global_outport_start_work_vt.buffer), Int_F, Int_F_len);
	request.vars.vt_ground_gui_polling_ground_global_outport_start_work_vt.vt_ground_gui_polling_ground_global_outport_start_work_vt.length = Int_F_len;
	request.port = vt_ground_gui_polling_ground_global_outport_start_work_vt;
	__po_hi_gqueue_store_out(x86_partition_vt_ground_gui_polling_ground_k, vt_ground_gui_polling_ground_local_outport_start_work_vt, &request);
	__po_hi_send_output(x86_partition_vt_ground_gui_polling_ground_k, vt_ground_gui_polling_ground_global_outport_start_work_vt);
}

