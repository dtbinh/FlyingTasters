/* This file was generated automatically: DO NOT MODIFY IT ! */

/* Declaration of the functions that have to be provided by the user */

#ifndef __USER_CODE_H_socketclient__
#define __USER_CODE_H_socketclient__

#include "C_ASN1_Types.h"

#ifdef __cplusplus
extern "C" {
#endif

void socketclient_startup();

void socketclient_PI_readStabilizerSendThrust(const asn1SccMyPositionControlData *,
                                              const asn1SccMyPositionControlData *,
                                              const asn1SccMyPositionControlData *);

extern void socketclient_RI_controlAction(const asn1SccMyPositionControlData *,
                                          const asn1SccMySensorData *,
                                          const asn1SccMyPositionControlData *,
                                          asn1SccMyDroneData *);

extern void socketclient_RI_getReference(const asn1SccMyPositionControlData *,
                                         const asn1SccMyPositionControlData *,
                                         const asn1SccMyPositionControlData *,
                                         asn1SccMyPositionControlData *,
                                         asn1SccMyPositionControlData *,
                                         asn1SccMyPositionControlData *);

extern void socketclient_RI_controlAction2(const asn1SccMyPositionControlData *,
                                           const asn1SccMySensorData *,
                                           const asn1SccMyPositionControlData *,
                                           asn1SccMyDroneData *);

extern void socketclient_RI_controlAction3(const asn1SccMyPositionControlData *,
                                           const asn1SccMySensorData *,
                                           const asn1SccMyPositionControlData *,
                                           asn1SccMyDroneData *);

extern void socketclient_RI_processData(const asn1SccMyPositionControlData *,
                                        asn1SccMyPositionControlData *);

#ifdef __cplusplus
}
#endif


#endif
