#ifndef __OCARINA_GENERATED_REQUEST_H_
#define __OCARINA_GENERATED_REQUEST_H_ 
#include <types.h>
#include <deployment.h>
/*****************************************************/

/*  This file was automatically generated by Ocarina */

/*  Do NOT hand-modify this file, as your            */

/*  changes will be lost when you re-run Ocarina     */

/*****************************************************/

/*  Enumeration type for all the operations in the distributed application.*/

typedef struct
{
  __po_hi_port_t port;

  union
  {
    struct
    {
      dataview__myreal_buffer_impl vt_obsw_pulse_global_outport_thrust_update_vt;

    } vt_obsw_pulse_global_outport_thrust_update_vt;

    struct
    {
      dataview__myreal_buffer_impl vt_obsw_pulse_global_outport_dheight_vt;

    } vt_obsw_pulse_global_outport_dheight_vt;

    struct
    {
      dataview__myreal_buffer_impl vt_obsw_start_work_global_inport_artificial_start_work;

    } vt_obsw_start_work_global_inport_artificial_start_work;

    struct
    {
      dataview__myreal_buffer_impl vt_obsw_start_work_global_outport_thrust_update_vt;

    } vt_obsw_start_work_global_outport_thrust_update_vt;

    struct
    {
      dataview__myreal_buffer_impl vt_obsw_start_work_global_outport_dheight_vt;

    } vt_obsw_start_work_global_outport_dheight_vt;

    struct
    {
      dataview__myreal_buffer_impl vt_ground_thrust_update_global_inport_artificial_thrust_update;

    } vt_ground_thrust_update_global_inport_artificial_thrust_update;

    struct
    {
      dataview__myreal_buffer_impl vt_ground_thrust_update_global_outport_start_work_vt;

    } vt_ground_thrust_update_global_outport_start_work_vt;

    struct
    {
      dataview__myreal_buffer_impl vt_ground_dheight_global_inport_artificial_dheight;

    } vt_ground_dheight_global_inport_artificial_dheight;

    struct
    {
      dataview__myreal_buffer_impl vt_ground_dheight_global_outport_start_work_vt;

    } vt_ground_dheight_global_outport_start_work_vt;

    struct
    {
      dataview__myreal_buffer_impl vt_ground_gui_polling_ground_global_outport_start_work_vt;

    } vt_ground_gui_polling_ground_global_outport_start_work_vt;

  } vars;

} __po_hi_request_t;

#define __PO_HI_NB_OPERATIONS 0

#endif