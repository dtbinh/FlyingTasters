/* This file was generated automatically: DO NOT MODIFY IT ! */

#ifdef __unix__
    #include <stdlib.h>
    #include <stdio.h>
#else
    typedef unsigned size_t;
#endif

#include "socketclient_vm_if.h"

#include "socketclient.h"

#include "C_ASN1_Types.h"

void init_socketclient()
{
    static int init = 0;

    if (!init) {
        init = 1;
        socketclient_startup();
    }
}

void socketclient_readStabilizerSendThrust (void *pmy_ref_thrust, size_t size_my_ref_thrust, void *pmy_updated_thrust, size_t *psize_my_updated_thrust)
{
    /* Decoded input variable(s): developer can use them */
    asn1SccMyReal IN_ref_thrust;

    /* Output variable(s): developer has to fill them */
    asn1SccMyReal OUT_updated_thrust;

#ifdef __unix__
    asn1SccMyReal_Initialize(&IN_ref_thrust);
    asn1SccMyReal_Initialize(&OUT_updated_thrust);
#endif

    /* Decode each input parameter */
    if (0 != Decode_NATIVE_MyReal (&IN_ref_thrust, pmy_ref_thrust, size_my_ref_thrust)) {
        #ifdef __unix__
            printf("\nError Decoding MyReal\n");
        #endif
        return;
    }

    /* Call to User-defined function */
    socketclient_PI_readStabilizerSendThrust (&IN_ref_thrust, &OUT_updated_thrust);

    /* Encode each output parameter */

    *psize_my_updated_thrust = Encode_NATIVE_MyReal (pmy_updated_thrust, sizeof (asn1SccMyReal), &OUT_updated_thrust);
}
