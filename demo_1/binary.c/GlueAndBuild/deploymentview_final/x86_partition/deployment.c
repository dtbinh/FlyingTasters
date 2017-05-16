#include <po_hi_protected.h>
#include <deployment.h>
#include <po_hi_types.h>
#include <po_hi_transport.h>
/*****************************************************/
/*  This file was automatically generated by Ocarina */
/*  Do NOT hand-modify this file, as your            */
/*  changes will be lost when you re-run Ocarina     */
/*****************************************************/
__po_hi_protected_protocol_t __po_hi_protected_configuration[__PO_HI_NB_PROTECTED] = {__PO_HI_PROTECTED_REGULAR,__PO_HI_PROTECTED_REGULAR};
__po_hi_uint8_t __po_hi_protected_priorities[__PO_HI_NB_PROTECTED] = {0,0};
__po_hi_entity_t __po_hi_port_global_to_entity[__PO_HI_NB_PORTS] = {x86_partition_vt_obsw_pulse_k_entity,x86_partition_vt_obsw_takeoff_k_entity,x86_partition_vt_obsw_takeoff_k_entity,x86_partition_vt_ground_height_k_entity,x86_partition_vt_ground_height_k_entity,x86_partition_vt_ground_gui_polling_ground_k_entity};
char* __po_hi_port_global_names[__PO_HI_NB_PORTS] = {"vt_obsw_pulse_global_outport_height_vt","vt_obsw_takeoff_global_inport_artificial_takeoff","vt_obsw_takeoff_global_outport_height_vt","vt_ground_height_global_inport_artificial_height","vt_ground_height_global_outport_takeoff_vt","vt_ground_gui_polling_ground_global_outport_takeoff_vt"};
char* __po_hi_port_global_model_names[__PO_HI_NB_PORTS] = {"outport_height_vt","inport_artificial_takeoff","outport_height_vt","inport_artificial_height","outport_takeoff_vt","outport_takeoff_vt"};
__po_hi_port_kind_t __po_hi_port_global_kind[__PO_HI_NB_PORTS] = {__PO_HI_OUT_EVENT_DATA_INTRA_PROCESS,__PO_HI_IN_EVENT_DATA_INTRA_PROCESS,__PO_HI_OUT_EVENT_DATA_INTRA_PROCESS,__PO_HI_IN_EVENT_DATA_INTRA_PROCESS,__PO_HI_OUT_EVENT_DATA_INTRA_PROCESS,__PO_HI_OUT_EVENT_DATA_INTRA_PROCESS};
__po_hi_uint32_t __po_hi_port_global_data_size[__PO_HI_NB_PORTS] = {sizeof (dataview__myreal_buffer_impl),sizeof (dataview__myreal_buffer_impl),sizeof (dataview__myreal_buffer_impl),sizeof (dataview__myreal_buffer_impl),sizeof (dataview__myreal_buffer_impl),sizeof (dataview__myreal_buffer_impl)};
__po_hi_uint32_t __po_hi_port_global_queue_size[__PO_HI_NB_PORTS] = {1,1,1,1,1,1};
__po_hi_local_port_t __po_hi_port_global_to_local[__PO_HI_NB_PORTS] = {vt_obsw_pulse_local_outport_height_vt,vt_obsw_takeoff_local_inport_artificial_takeoff,vt_obsw_takeoff_local_outport_height_vt,vt_ground_height_local_inport_artificial_height,vt_ground_height_local_outport_takeoff_vt,vt_ground_gui_polling_ground_local_outport_takeoff_vt};
__po_hi_node_t __po_hi_entity_table[__PO_HI_NB_ENTITIES] = {x86_partition_k,x86_partition_k,x86_partition_k,x86_partition_k};
__po_hi_uint8_t __po_hi_deployment_endiannesses[__PO_HI_NB_NODES] = {__PO_HI_LITTLEENDIAN};
__po_hi_device_id __po_hi_port_to_device[__PO_HI_NB_PORTS] = {0,0,0,0,0,0};

