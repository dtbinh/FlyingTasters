/* This file was generated automatically: DO NOT MODIFY IT ! */

#ifndef VM_IF_gcs
#define VM_IF_gcs

#ifdef __cplusplus
extern "C" {
#endif

#include "C_ASN1_Types.h"

/*
 * Function initialization:
 * Calls all dependent user (or GUI) startup code - including sychronous RI
*/
void init_gcs();

void gcs_SensorData (void *pmy_updated_thrust, size_t size_my_updated_thrust);
extern void gcs_PI_SensorData (const asn1SccMyReal *);
void gcs_gui_polling_gcs ();
extern void gcs_PI_gui_polling_gcs ();
#ifdef __cplusplus
}
#endif

#endif
