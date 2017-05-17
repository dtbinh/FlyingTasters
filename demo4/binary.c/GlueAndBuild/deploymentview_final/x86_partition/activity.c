#include <types.h>
#include <deployment.h>
#include <po_hi_gqueue.h>
#include <po_hi_types.h>
#include <request.h>
#include <activity.h>
#include <po_hi_task.h>
#include <po_hi_main.h>
#include <po_hi_time.h>
#include <po_hi_transport.h>
/*****************************************************/
/*  This file was automatically generated by Ocarina */
/*  Do NOT hand-modify this file, as your            */
/*  changes will be lost when you re-run Ocarina     */
/*****************************************************/
extern process_package__taste_protected_object obsw_protected;
extern process_package__taste_protected_object ground_protected;
__po_hi_port_t __po_hi_vt_obsw_pulse_outport_thrust_update_vt_local_destinations[1] = {vt_ground_thrust_update_global_inport_artificial_thrust_update};
__po_hi_port_t __po_hi_vt_obsw_pulse_outport_dheight_vt_local_destinations[1] = {vt_ground_dheight_global_inport_artificial_dheight};
__po_hi_uint8_t __po_hi_vt_obsw_pulse_woffsets[__po_hi_vt_obsw_pulse_nb_ports];
__po_hi_uint8_t __po_hi_vt_obsw_pulse_offsets[__po_hi_vt_obsw_pulse_nb_ports];
__po_hi_uint8_t __po_hi_vt_obsw_pulse_used_size[__po_hi_vt_obsw_pulse_nb_ports];
__po_hi_uint8_t __po_hi_vt_obsw_pulse_empties[__po_hi_vt_obsw_pulse_nb_ports];
__po_hi_uint8_t __po_hi_vt_obsw_pulse_first[__po_hi_vt_obsw_pulse_nb_ports];
__po_hi_request_t __po_hi_vt_obsw_pulse_recent[__po_hi_vt_obsw_pulse_nb_ports];
__po_hi_port_t __po_hi_vt_obsw_pulse_queue[0 * sizeof (__po_hi_request_t)];
__po_hi_uint16_t __po_hi_vt_obsw_pulse_total_fifo_size = 0;
__po_hi_local_port_t __po_hi_vt_obsw_pulse_history[0];
__po_hi_uint8_t __po_hi_vt_obsw_pulse_n_dest[__po_hi_vt_obsw_pulse_nb_ports] = {1,1};
__po_hi_int8_t __po_hi_vt_obsw_pulse_fifo_size[__po_hi_vt_obsw_pulse_nb_ports] = {__PO_HI_GQUEUE_FIFO_OUT,__PO_HI_GQUEUE_FIFO_OUT};
__po_hi_port_t* __po_hi_vt_obsw_pulse_destinations[__po_hi_vt_obsw_pulse_nb_ports] = {__po_hi_vt_obsw_pulse_outport_thrust_update_vt_local_destinations,__po_hi_vt_obsw_pulse_outport_dheight_vt_local_destinations};

/*!
 * \fn void* vt_obsw_pulse_job (void)
 * \brief Function executed by the task vt_obsw_pulse
 *
 * This function is executed as soon as the task  is created. It performs the 
 * following operations:  Receive incoming data,  Execute tasks subprograms,  
 * Send output data.
 */
/*  Periodic task : vt_obsw_pulse*/
extern void po_hi_c_vt_obsw_pulse_artificial_pulse 
    (__po_hi_task_id self);
void* vt_obsw_pulse_job (void)
{
  __po_hi_int32_t error;

  __po_hi_gqueue_init (x86_partition_vt_obsw_pulse_k, __po_hi_vt_obsw_pulse_nb_ports, __po_hi_vt_obsw_pulse_queue, __po_hi_vt_obsw_pulse_fifo_size, __po_hi_vt_obsw_pulse_first, __po_hi_vt_obsw_pulse_offsets, __po_hi_vt_obsw_pulse_woffsets, __po_hi_vt_obsw_pulse_n_dest, __po_hi_vt_obsw_pulse_destinations, __po_hi_vt_obsw_pulse_used_size, __po_hi_vt_obsw_pulse_history, __po_hi_vt_obsw_pulse_recent, __po_hi_vt_obsw_pulse_empties, __po_hi_vt_obsw_pulse_total_fifo_size);
  
/*!
 * Waiting for other tasks initialization
 */
  __po_hi_wait_initialization ();
  __po_hi_time_t offset;
  __po_hi_milliseconds (&(offset), 0);
  __po_hi_task_wait_offset (&(offset));
  __po_hi_compute_next_period (x86_partition_vt_obsw_pulse_k);
  
/*!
 * Waiting for the first dispatch instant
 */
  __po_hi_wait_for_next_period (x86_partition_vt_obsw_pulse_k);
  
/*!
 * Task body
 */
  while (1)
  {
    /*  Make_Thread_Compute_Entrypoint*/
    po_hi_c_vt_obsw_pulse_artificial_pulse (x86_partition_vt_obsw_pulse_k);
    /*  Send the OUT ports*/
    error =
     __po_hi_send_output (x86_partition_vt_obsw_pulse_k, vt_obsw_pulse_global_outport_thrust_update_vt);
    error =
     __po_hi_send_output (x86_partition_vt_obsw_pulse_k, vt_obsw_pulse_global_outport_dheight_vt);
    __po_hi_wait_for_next_period (x86_partition_vt_obsw_pulse_k);
  }
}

__po_hi_port_t __po_hi_vt_obsw_start_work_outport_thrust_update_vt_local_destinations[1] = {vt_ground_thrust_update_global_inport_artificial_thrust_update};
__po_hi_port_t __po_hi_vt_obsw_start_work_outport_dheight_vt_local_destinations[1] = {vt_ground_dheight_global_inport_artificial_dheight};
__po_hi_uint8_t __po_hi_vt_obsw_start_work_woffsets[__po_hi_vt_obsw_start_work_nb_ports];
__po_hi_uint8_t __po_hi_vt_obsw_start_work_offsets[__po_hi_vt_obsw_start_work_nb_ports];
__po_hi_uint8_t __po_hi_vt_obsw_start_work_used_size[__po_hi_vt_obsw_start_work_nb_ports];
__po_hi_uint8_t __po_hi_vt_obsw_start_work_empties[__po_hi_vt_obsw_start_work_nb_ports];
__po_hi_uint8_t __po_hi_vt_obsw_start_work_first[__po_hi_vt_obsw_start_work_nb_ports];
__po_hi_request_t __po_hi_vt_obsw_start_work_recent[__po_hi_vt_obsw_start_work_nb_ports];
__po_hi_port_t __po_hi_vt_obsw_start_work_queue[1 * sizeof (__po_hi_request_t)];
__po_hi_uint16_t __po_hi_vt_obsw_start_work_total_fifo_size = 1;
__po_hi_local_port_t __po_hi_vt_obsw_start_work_history[1];
__po_hi_uint8_t __po_hi_vt_obsw_start_work_n_dest[__po_hi_vt_obsw_start_work_nb_ports] = {0,1,1};
__po_hi_int8_t __po_hi_vt_obsw_start_work_fifo_size[__po_hi_vt_obsw_start_work_nb_ports] = {1,__PO_HI_GQUEUE_FIFO_OUT,__PO_HI_GQUEUE_FIFO_OUT};
__po_hi_port_t* __po_hi_vt_obsw_start_work_destinations[__po_hi_vt_obsw_start_work_nb_ports] = {NULL,__po_hi_vt_obsw_start_work_outport_thrust_update_vt_local_destinations,__po_hi_vt_obsw_start_work_outport_dheight_vt_local_destinations};

/*!
 * \fn void vt_obsw_start_work_deliver (__po_hi_request_t* request)
 * \brief Function that delivers requests to the task vt_obsw_start_work
 *
 * When the generated application received a request, it calls a main delivery
 *  function that redirects to localfunctions for each task. This function 
 * (vt_obsw_start_work_deliver) stores the incoming request for the 
 * taskvt_obsw_start_work
 */
void vt_obsw_start_work_deliver 
    (__po_hi_request_t* request)
{

  switch (request->port)
  {
    case vt_obsw_start_work_global_inport_artificial_start_work:
    {
      __po_hi_gqueue_store_in (x86_partition_vt_obsw_start_work_k, vt_obsw_start_work_local_inport_artificial_start_work, request);

      break;
    }
    default:
    {
      break;
    }
  }
}


/*!
 * \fn void* vt_obsw_start_work_job (void)
 * \brief Function executed by the task vt_obsw_start_work
 *
 * This function is executed as soon as the task  is created. It performs the 
 * following operations:  Receive incoming data,  Execute tasks subprograms,  
 * Send output data.
 */
/*  Sporadic task : vt_obsw_start_work*/
extern void po_hi_c_vt_obsw_start_work_artificial_start_work 
    (__po_hi_task_id self,
    dataview__myreal_buffer_impl inport_artificial_start_work);
void* vt_obsw_start_work_job (void)
{
  __po_hi_local_port_t port;
  __po_hi_request_t static inport_artificial_start_work_request;
  __po_hi_int32_t error;

  __po_hi_gqueue_init (x86_partition_vt_obsw_start_work_k, __po_hi_vt_obsw_start_work_nb_ports, __po_hi_vt_obsw_start_work_queue, __po_hi_vt_obsw_start_work_fifo_size, __po_hi_vt_obsw_start_work_first, __po_hi_vt_obsw_start_work_offsets, __po_hi_vt_obsw_start_work_woffsets, __po_hi_vt_obsw_start_work_n_dest, __po_hi_vt_obsw_start_work_destinations, __po_hi_vt_obsw_start_work_used_size, __po_hi_vt_obsw_start_work_history, __po_hi_vt_obsw_start_work_recent, __po_hi_vt_obsw_start_work_empties, __po_hi_vt_obsw_start_work_total_fifo_size);
  
/*!
 * Waiting for other tasks initialization
 */
  __po_hi_wait_initialization ();
  __po_hi_compute_next_period (x86_partition_vt_obsw_start_work_k);
  
/*!
 * Task body
 */
  while (1)
  {
    __po_hi_gqueue_wait_for_incoming_event (x86_partition_vt_obsw_start_work_k, &(port));
    __po_hi_compute_next_period (x86_partition_vt_obsw_start_work_k);
    /*  Make_Ports_Compute_Entrypoint*/
    switch (port)
    {
      case vt_obsw_start_work_local_inport_artificial_start_work:
      {
        /* :: Yes if commentary :: */if (__po_hi_gqueue_get_count (x86_partition_vt_obsw_start_work_k, vt_obsw_start_work_local_inport_artificial_start_work))
        {
                  __po_hi_gqueue_get_value (x86_partition_vt_obsw_start_work_k, vt_obsw_start_work_local_inport_artificial_start_work, &(inport_artificial_start_work_request));
          __po_hi_gqueue_next_value (x86_partition_vt_obsw_start_work_k, vt_obsw_start_work_local_inport_artificial_start_work);

        }

        po_hi_c_vt_obsw_start_work_artificial_start_work (x86_partition_vt_obsw_start_work_k, inport_artificial_start_work_request.vars.vt_obsw_start_work_global_inport_artificial_start_work.vt_obsw_start_work_global_inport_artificial_start_work);

        break;
      }
      default:
      {
        break;
      }
    }
    /*  Send the OUT ports*/
    error =
     __po_hi_send_output (x86_partition_vt_obsw_start_work_k, vt_obsw_start_work_global_outport_thrust_update_vt);
    error =
     __po_hi_send_output (x86_partition_vt_obsw_start_work_k, vt_obsw_start_work_global_outport_dheight_vt);
    __po_hi_wait_for_next_period (x86_partition_vt_obsw_start_work_k);
  }
}

__po_hi_port_t __po_hi_vt_ground_thrust_update_outport_start_work_vt_local_destinations[1] = {vt_obsw_start_work_global_inport_artificial_start_work};
__po_hi_uint8_t __po_hi_vt_ground_thrust_update_woffsets[__po_hi_vt_ground_thrust_update_nb_ports];
__po_hi_uint8_t __po_hi_vt_ground_thrust_update_offsets[__po_hi_vt_ground_thrust_update_nb_ports];
__po_hi_uint8_t __po_hi_vt_ground_thrust_update_used_size[__po_hi_vt_ground_thrust_update_nb_ports];
__po_hi_uint8_t __po_hi_vt_ground_thrust_update_empties[__po_hi_vt_ground_thrust_update_nb_ports];
__po_hi_uint8_t __po_hi_vt_ground_thrust_update_first[__po_hi_vt_ground_thrust_update_nb_ports];
__po_hi_request_t __po_hi_vt_ground_thrust_update_recent[__po_hi_vt_ground_thrust_update_nb_ports];
__po_hi_port_t __po_hi_vt_ground_thrust_update_queue[1 * sizeof (__po_hi_request_t)];
__po_hi_uint16_t __po_hi_vt_ground_thrust_update_total_fifo_size = 1;
__po_hi_local_port_t __po_hi_vt_ground_thrust_update_history[1];
__po_hi_uint8_t __po_hi_vt_ground_thrust_update_n_dest[__po_hi_vt_ground_thrust_update_nb_ports] = {0,1};
__po_hi_int8_t __po_hi_vt_ground_thrust_update_fifo_size[__po_hi_vt_ground_thrust_update_nb_ports] = {1,__PO_HI_GQUEUE_FIFO_OUT};
__po_hi_port_t* __po_hi_vt_ground_thrust_update_destinations[__po_hi_vt_ground_thrust_update_nb_ports] = {NULL,__po_hi_vt_ground_thrust_update_outport_start_work_vt_local_destinations};

/*!
 * \fn void vt_ground_thrust_update_deliver (__po_hi_request_t* request)
 * \brief Function that delivers requests to the task vt_ground_thrust_update
 *
 * When the generated application received a request, it calls a main delivery
 *  function that redirects to localfunctions for each task. This function 
 * (vt_ground_thrust_update_deliver) stores the incoming request for the 
 * taskvt_ground_thrust_update
 */
void vt_ground_thrust_update_deliver 
    (__po_hi_request_t* request)
{

  switch (request->port)
  {
    case vt_ground_thrust_update_global_inport_artificial_thrust_update:
    {
      __po_hi_gqueue_store_in (x86_partition_vt_ground_thrust_update_k, vt_ground_thrust_update_local_inport_artificial_thrust_update, request);

      break;
    }
    default:
    {
      break;
    }
  }
}


/*!
 * \fn void* vt_ground_thrust_update_job (void)
 * \brief Function executed by the task vt_ground_thrust_update
 *
 * This function is executed as soon as the task  is created. It performs the 
 * following operations:  Receive incoming data,  Execute tasks subprograms,  
 * Send output data.
 */
/*  Sporadic task : vt_ground_thrust_update*/
extern void po_hi_c_vt_ground_thrust_update_artificial_thrust_update 
    (__po_hi_task_id self,
    dataview__myreal_buffer_impl inport_artificial_thrust_update);
void* vt_ground_thrust_update_job (void)
{
  __po_hi_local_port_t port;
  __po_hi_request_t static inport_artificial_thrust_update_request;
  __po_hi_int32_t error;

  __po_hi_gqueue_init (x86_partition_vt_ground_thrust_update_k, __po_hi_vt_ground_thrust_update_nb_ports, __po_hi_vt_ground_thrust_update_queue, __po_hi_vt_ground_thrust_update_fifo_size, __po_hi_vt_ground_thrust_update_first, __po_hi_vt_ground_thrust_update_offsets, __po_hi_vt_ground_thrust_update_woffsets, __po_hi_vt_ground_thrust_update_n_dest, __po_hi_vt_ground_thrust_update_destinations, __po_hi_vt_ground_thrust_update_used_size, __po_hi_vt_ground_thrust_update_history, __po_hi_vt_ground_thrust_update_recent, __po_hi_vt_ground_thrust_update_empties, __po_hi_vt_ground_thrust_update_total_fifo_size);
  
/*!
 * Waiting for other tasks initialization
 */
  __po_hi_wait_initialization ();
  __po_hi_compute_next_period (x86_partition_vt_ground_thrust_update_k);
  
/*!
 * Task body
 */
  while (1)
  {
    __po_hi_gqueue_wait_for_incoming_event (x86_partition_vt_ground_thrust_update_k, &(port));
    __po_hi_compute_next_period (x86_partition_vt_ground_thrust_update_k);
    /*  Make_Ports_Compute_Entrypoint*/
    switch (port)
    {
      case vt_ground_thrust_update_local_inport_artificial_thrust_update:
      {
        /* :: Yes if commentary :: */if (__po_hi_gqueue_get_count (x86_partition_vt_ground_thrust_update_k, vt_ground_thrust_update_local_inport_artificial_thrust_update))
        {
                  __po_hi_gqueue_get_value (x86_partition_vt_ground_thrust_update_k, vt_ground_thrust_update_local_inport_artificial_thrust_update, &(inport_artificial_thrust_update_request));
          __po_hi_gqueue_next_value (x86_partition_vt_ground_thrust_update_k, vt_ground_thrust_update_local_inport_artificial_thrust_update);

        }

        po_hi_c_vt_ground_thrust_update_artificial_thrust_update (x86_partition_vt_ground_thrust_update_k, inport_artificial_thrust_update_request.vars.vt_ground_thrust_update_global_inport_artificial_thrust_update.vt_ground_thrust_update_global_inport_artificial_thrust_update);

        break;
      }
      default:
      {
        break;
      }
    }
    /*  Send the OUT ports*/
    error =
     __po_hi_send_output (x86_partition_vt_ground_thrust_update_k, vt_ground_thrust_update_global_outport_start_work_vt);
    __po_hi_wait_for_next_period (x86_partition_vt_ground_thrust_update_k);
  }
}

__po_hi_port_t __po_hi_vt_ground_dheight_outport_start_work_vt_local_destinations[1] = {vt_obsw_start_work_global_inport_artificial_start_work};
__po_hi_uint8_t __po_hi_vt_ground_dheight_woffsets[__po_hi_vt_ground_dheight_nb_ports];
__po_hi_uint8_t __po_hi_vt_ground_dheight_offsets[__po_hi_vt_ground_dheight_nb_ports];
__po_hi_uint8_t __po_hi_vt_ground_dheight_used_size[__po_hi_vt_ground_dheight_nb_ports];
__po_hi_uint8_t __po_hi_vt_ground_dheight_empties[__po_hi_vt_ground_dheight_nb_ports];
__po_hi_uint8_t __po_hi_vt_ground_dheight_first[__po_hi_vt_ground_dheight_nb_ports];
__po_hi_request_t __po_hi_vt_ground_dheight_recent[__po_hi_vt_ground_dheight_nb_ports];
__po_hi_port_t __po_hi_vt_ground_dheight_queue[1 * sizeof (__po_hi_request_t)];
__po_hi_uint16_t __po_hi_vt_ground_dheight_total_fifo_size = 1;
__po_hi_local_port_t __po_hi_vt_ground_dheight_history[1];
__po_hi_uint8_t __po_hi_vt_ground_dheight_n_dest[__po_hi_vt_ground_dheight_nb_ports] = {0,1};
__po_hi_int8_t __po_hi_vt_ground_dheight_fifo_size[__po_hi_vt_ground_dheight_nb_ports] = {1,__PO_HI_GQUEUE_FIFO_OUT};
__po_hi_port_t* __po_hi_vt_ground_dheight_destinations[__po_hi_vt_ground_dheight_nb_ports] = {NULL,__po_hi_vt_ground_dheight_outport_start_work_vt_local_destinations};

/*!
 * \fn void vt_ground_dheight_deliver (__po_hi_request_t* request)
 * \brief Function that delivers requests to the task vt_ground_dheight
 *
 * When the generated application received a request, it calls a main delivery
 *  function that redirects to localfunctions for each task. This function 
 * (vt_ground_dheight_deliver) stores the incoming request for the 
 * taskvt_ground_dheight
 */
void vt_ground_dheight_deliver 
    (__po_hi_request_t* request)
{

  switch (request->port)
  {
    case vt_ground_dheight_global_inport_artificial_dheight:
    {
      __po_hi_gqueue_store_in (x86_partition_vt_ground_dheight_k, vt_ground_dheight_local_inport_artificial_dheight, request);

      break;
    }
    default:
    {
      break;
    }
  }
}


/*!
 * \fn void* vt_ground_dheight_job (void)
 * \brief Function executed by the task vt_ground_dheight
 *
 * This function is executed as soon as the task  is created. It performs the 
 * following operations:  Receive incoming data,  Execute tasks subprograms,  
 * Send output data.
 */
/*  Sporadic task : vt_ground_dheight*/
extern void po_hi_c_vt_ground_dheight_artificial_dheight 
    (__po_hi_task_id self,
    dataview__myreal_buffer_impl inport_artificial_dheight);
void* vt_ground_dheight_job (void)
{
  __po_hi_local_port_t port;
  __po_hi_request_t static inport_artificial_dheight_request;
  __po_hi_int32_t error;

  __po_hi_gqueue_init (x86_partition_vt_ground_dheight_k, __po_hi_vt_ground_dheight_nb_ports, __po_hi_vt_ground_dheight_queue, __po_hi_vt_ground_dheight_fifo_size, __po_hi_vt_ground_dheight_first, __po_hi_vt_ground_dheight_offsets, __po_hi_vt_ground_dheight_woffsets, __po_hi_vt_ground_dheight_n_dest, __po_hi_vt_ground_dheight_destinations, __po_hi_vt_ground_dheight_used_size, __po_hi_vt_ground_dheight_history, __po_hi_vt_ground_dheight_recent, __po_hi_vt_ground_dheight_empties, __po_hi_vt_ground_dheight_total_fifo_size);
  
/*!
 * Waiting for other tasks initialization
 */
  __po_hi_wait_initialization ();
  __po_hi_compute_next_period (x86_partition_vt_ground_dheight_k);
  
/*!
 * Task body
 */
  while (1)
  {
    __po_hi_gqueue_wait_for_incoming_event (x86_partition_vt_ground_dheight_k, &(port));
    __po_hi_compute_next_period (x86_partition_vt_ground_dheight_k);
    /*  Make_Ports_Compute_Entrypoint*/
    switch (port)
    {
      case vt_ground_dheight_local_inport_artificial_dheight:
      {
        /* :: Yes if commentary :: */if (__po_hi_gqueue_get_count (x86_partition_vt_ground_dheight_k, vt_ground_dheight_local_inport_artificial_dheight))
        {
                  __po_hi_gqueue_get_value (x86_partition_vt_ground_dheight_k, vt_ground_dheight_local_inport_artificial_dheight, &(inport_artificial_dheight_request));
          __po_hi_gqueue_next_value (x86_partition_vt_ground_dheight_k, vt_ground_dheight_local_inport_artificial_dheight);

        }

        po_hi_c_vt_ground_dheight_artificial_dheight (x86_partition_vt_ground_dheight_k, inport_artificial_dheight_request.vars.vt_ground_dheight_global_inport_artificial_dheight.vt_ground_dheight_global_inport_artificial_dheight);

        break;
      }
      default:
      {
        break;
      }
    }
    /*  Send the OUT ports*/
    error =
     __po_hi_send_output (x86_partition_vt_ground_dheight_k, vt_ground_dheight_global_outport_start_work_vt);
    __po_hi_wait_for_next_period (x86_partition_vt_ground_dheight_k);
  }
}

__po_hi_port_t __po_hi_vt_ground_gui_polling_ground_outport_start_work_vt_local_destinations[1] = {vt_obsw_start_work_global_inport_artificial_start_work};
__po_hi_uint8_t __po_hi_vt_ground_gui_polling_ground_woffsets[__po_hi_vt_ground_gui_polling_ground_nb_ports];
__po_hi_uint8_t __po_hi_vt_ground_gui_polling_ground_offsets[__po_hi_vt_ground_gui_polling_ground_nb_ports];
__po_hi_uint8_t __po_hi_vt_ground_gui_polling_ground_used_size[__po_hi_vt_ground_gui_polling_ground_nb_ports];
__po_hi_uint8_t __po_hi_vt_ground_gui_polling_ground_empties[__po_hi_vt_ground_gui_polling_ground_nb_ports];
__po_hi_uint8_t __po_hi_vt_ground_gui_polling_ground_first[__po_hi_vt_ground_gui_polling_ground_nb_ports];
__po_hi_request_t __po_hi_vt_ground_gui_polling_ground_recent[__po_hi_vt_ground_gui_polling_ground_nb_ports];
__po_hi_port_t __po_hi_vt_ground_gui_polling_ground_queue[0 * sizeof (__po_hi_request_t)];
__po_hi_uint16_t __po_hi_vt_ground_gui_polling_ground_total_fifo_size = 0;
__po_hi_local_port_t __po_hi_vt_ground_gui_polling_ground_history[0];
__po_hi_uint8_t __po_hi_vt_ground_gui_polling_ground_n_dest[__po_hi_vt_ground_gui_polling_ground_nb_ports] = {1};
__po_hi_int8_t __po_hi_vt_ground_gui_polling_ground_fifo_size[__po_hi_vt_ground_gui_polling_ground_nb_ports] = {__PO_HI_GQUEUE_FIFO_OUT};
__po_hi_port_t* __po_hi_vt_ground_gui_polling_ground_destinations[__po_hi_vt_ground_gui_polling_ground_nb_ports] = {__po_hi_vt_ground_gui_polling_ground_outport_start_work_vt_local_destinations};

/*!
 * \fn void* vt_ground_gui_polling_ground_job (void)
 * \brief Function executed by the task vt_ground_gui_polling_ground
 *
 * This function is executed as soon as the task  is created. It performs the 
 * following operations:  Receive incoming data,  Execute tasks subprograms,  
 * Send output data.
 */
/*  Periodic task : vt_ground_gui_polling_ground*/
extern void po_hi_c_vt_ground_gui_polling_ground_artificial_gui_polling_ground 
    (__po_hi_task_id self);
void* vt_ground_gui_polling_ground_job (void)
{
  __po_hi_int32_t error;

  __po_hi_gqueue_init (x86_partition_vt_ground_gui_polling_ground_k, __po_hi_vt_ground_gui_polling_ground_nb_ports, __po_hi_vt_ground_gui_polling_ground_queue, __po_hi_vt_ground_gui_polling_ground_fifo_size, __po_hi_vt_ground_gui_polling_ground_first, __po_hi_vt_ground_gui_polling_ground_offsets, __po_hi_vt_ground_gui_polling_ground_woffsets, __po_hi_vt_ground_gui_polling_ground_n_dest, __po_hi_vt_ground_gui_polling_ground_destinations, __po_hi_vt_ground_gui_polling_ground_used_size, __po_hi_vt_ground_gui_polling_ground_history, __po_hi_vt_ground_gui_polling_ground_recent, __po_hi_vt_ground_gui_polling_ground_empties, __po_hi_vt_ground_gui_polling_ground_total_fifo_size);
  
/*!
 * Waiting for other tasks initialization
 */
  __po_hi_wait_initialization ();
  __po_hi_time_t offset;
  __po_hi_milliseconds (&(offset), 0);
  __po_hi_task_wait_offset (&(offset));
  __po_hi_compute_next_period (x86_partition_vt_ground_gui_polling_ground_k);
  
/*!
 * Waiting for the first dispatch instant
 */
  __po_hi_wait_for_next_period (x86_partition_vt_ground_gui_polling_ground_k);
  
/*!
 * Task body
 */
  while (1)
  {
    /*  Make_Thread_Compute_Entrypoint*/
    po_hi_c_vt_ground_gui_polling_ground_artificial_gui_polling_ground (x86_partition_vt_ground_gui_polling_ground_k);
    /*  Send the OUT ports*/
    error =
     __po_hi_send_output (x86_partition_vt_ground_gui_polling_ground_k, vt_ground_gui_polling_ground_global_outport_start_work_vt);
    __po_hi_wait_for_next_period (x86_partition_vt_ground_gui_polling_ground_k);
  }
}


/*!
 * \fn void __po_hi_main_deliver (__po_hi_request_t* request)
 * \brief Used to deliver request to the appropriate ports
 *
 * This function takes a request as argument (\arg request) and calls the 
 * appropriate function for its delivery.To specify which function should be 
 * called, it extracts the receiver entity using the destination port.
 */
void __po_hi_main_deliver 
    (__po_hi_request_t* request)
{
  __po_hi_entity_t entity;

  entity = __po_hi_get_entity_from_global_port (request->port);
  switch (entity)
  {
    case x86_partition_vt_obsw_start_work_k_entity:
    {
      vt_obsw_start_work_deliver (request);

      break;
    }
    case x86_partition_vt_ground_thrust_update_k_entity:
    {
      vt_ground_thrust_update_deliver (request);

      break;
    }
    case x86_partition_vt_ground_dheight_k_entity:
    {
      vt_ground_dheight_deliver (request);

      break;
    }
    default:
    {
      break;
    }
  }
}


