#include <activity.h>
#include <po_hi_task.h>
#include <po_hi_main.h>
#include <types.h>
#include <po_hi_time.h>
/*****************************************************/
/*  This file was automatically generated by Ocarina */
/*  Do NOT hand-modify this file, as your            */
/*  changes will be lost when you re-run Ocarina     */
/*****************************************************/
extern void init_obsw (void);
extern void init_obsw (void);
extern void init_ground (void);
extern void init_ground (void);
process_package__taste_protected_object obsw_protected;
process_package__taste_protected_object ground_protected;

/*!
 * \fn __PO_HI_MAIN_TYPE __PO_HI_MAIN_NAME (void)
 * \brief Main function executed by the system
 *
 * Full function name and return types are available  in the PolyORB-HI-C 
 * runtime header files.
 */
__PO_HI_MAIN_TYPE __PO_HI_MAIN_NAME (void)
{
  
/*!
 * \var period
 * \brief Variable for task period
 *
 * This variable is used to store the valueof the period of a task when we 
 * create it. The value put in the variable is set according to AADL model 
 * description
 */
  __po_hi_time_t period;

  __po_hi_initialize_early ();
  
/*!
 * Initialize the runtime
 */
  __po_hi_initialize ();
  init_obsw ();
  init_obsw ();
  init_ground ();
  init_ground ();
  obsw_protected.protected_id = 0;
  ground_protected.protected_id = 1;
  
/*!
 * Store the period time for task vt_obsw_pulse
 */
  __po_hi_milliseconds (&(period), 100);
  
/*!
 * \brief Making Periodic Task vt_obsw_pulse
 *
 * Make a periodic task according to AADL model requirements. The first 
 * parameter is the task identifier defined in deployment.h 
 * (x86_partition_vt_obsw_pulse_k) the second is the period defined in the 
 * AADL model. Third is the task priority ( 5), fourth is the stack size ( 
 * 50000 bytes) and last is the subprogram executed by the task
 */
  __po_hi_create_periodic_task (x86_partition_vt_obsw_pulse_k, &(period), 5, 50000, vt_obsw_pulse_job);
  
/*!
 * Store the period time for task vt_obsw_takeoff
 */
  __po_hi_milliseconds (&(period), 1);
  
/*!
 * Making Sporadic task
 */
  __po_hi_create_sporadic_task (x86_partition_vt_obsw_takeoff_k, &(period), 1, 50000, vt_obsw_takeoff_job);
  
/*!
 * Store the period time for task vt_ground_height
 */
  __po_hi_milliseconds (&(period), 1);
  
/*!
 * Making Sporadic task
 */
  __po_hi_create_sporadic_task (x86_partition_vt_ground_height_k, &(period), 1, 50000, vt_ground_height_job);
  
/*!
 * Store the period time for task vt_ground_gui_polling_ground
 */
  __po_hi_milliseconds (&(period), 40);
  
/*!
 * \brief Making Periodic Task vt_ground_gui_polling_ground
 *
 * Make a periodic task according to AADL model requirements. The first 
 * parameter is the task identifier defined in deployment.h 
 * (x86_partition_vt_ground_gui_polling_ground_k) the second is the period 
 * defined in the AADL model. Third is the task priority ( 1), fourth is the
 *  stack size ( 50000 bytes) and last is the subprogram executed by the 
 * task
 */
  __po_hi_create_periodic_task (x86_partition_vt_ground_gui_polling_ground_k, &(period), 1, 50000, vt_ground_gui_polling_ground_job);
  
/*!
 * Waiting for other tasks initialization
 */
  __po_hi_wait_initialization ();
  
/*!
 * Used to switch the main task to sleep all the time
 */
  __po_hi_wait_for_tasks ();
  
/*!
 * Return Statement
 */
  return (__PO_HI_MAIN_RETURN);
}


