#ifndef __OCARINA_GENERATED_DEPLOYMENT_H_
#define __OCARINA_GENERATED_DEPLOYMENT_H_ 
#include <po_hi_types.h>
/*****************************************************/

/*  This file was automatically generated by Ocarina */

/*  Do NOT hand-modify this file, as your            */

/*  changes will be lost when you re-run Ocarina     */

/*****************************************************/

#define __PO_HI_MY_NODE x86_partition_k

#define __po_hi_gcs_nb_ports 1

#define __po_hi_vt_supervisor_takeoff_nb_ports 1

/*  For each node in the distributed application add an enumerator*/

typedef enum
{
  x86_partition_k = 0
} __po_hi_node_t;

typedef enum
{
  invalid_protocol = -1
} __po_hi_protocol_t;

/*  For each thread in the distributed application nodes, add an enumerator*/

typedef enum
{
  x86_partition_gcs_k_entity = 0,
  x86_partition_vt_supervisor_pulse_k_entity = 1,
  x86_partition_vt_supervisor_takeoff_k_entity = 2,
  invalid_entity = -1
} __po_hi_entity_t;

typedef enum
{
  x86_partition_gcs_k = 0,
  x86_partition_vt_supervisor_pulse_k = 1,
  x86_partition_vt_supervisor_takeoff_k = 2,
  invalid_task_id = -1
} __po_hi_task_id;

typedef enum
{
  invalid_device_id = -1
} __po_hi_device_id;

typedef enum
{
  invalid_bus_id = -1
} __po_hi_bus_id;

#define __PO_HI_NB_TASKS 3

#define __PO_HI_TASKS_STACK 150000

#define __PO_HI_NB_PROTECTED 1

#define __PO_HI_NB_NODES 1

#define __PO_HI_NB_ENTITIES 3

#define __PO_HI_NB_PORTS 2

typedef enum
{
  gcs_global_outport_takeoff = 0,
  vt_supervisor_takeoff_global_inport_artificial_takeoff = 1,
  invalid_port_t = -1,
  constant_out_identifier = 3
} __po_hi_port_t;

typedef enum
{
  gcs_local_outport_takeoff = 0,
  vt_supervisor_takeoff_local_inport_artificial_takeoff = 0,
  invalid_local_port_t = -1
} __po_hi_local_port_t;

#define __PO_HI_NB_DEVICES 0

#define __PO_HI_NB_BUSES 0

#define __PO_HI_NB_PROTOCOLS 0

#define __PO_HI_PORT_TYPE_CONTENT __po_hi_gcs_nb_ports, __po_hi_vt_supervisor_takeoff_nb_ports

#endif
