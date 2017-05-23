/* This file was generated automatically: DO NOT MODIFY IT ! */

#include <stdlib.h>
#ifdef __unix__
#include <stdio.h>
#include "PrintTypesAsASN1.h"
#include "timeInMS.h"
#endif

#include "C_ASN1_Types.h"
#include "ground_polyorb_interface.h"

void ground_RI_Takeoff(const asn1SccMyReal *IN_ReferenceHeight)
{
#ifdef __unix__
    static int innerMsc = -1;
    if (-1 == innerMsc)
        innerMsc = (NULL != getenv("TASTE_INNER_MSC"))?1:0;
    if (1 == innerMsc) {
        long long msc_time = getTimeInMilliseconds();

        {
            PrintASN1MyReal ("INNERDATA: Takeoff::MyReal::ReferenceHeight", IN_ReferenceHeight);
        }
        printf ("\nINNER: ground,obsw,Takeoff,%lld\n", msc_time);
        fflush(stdout);
    }
#endif

    /* Buffer(s) to put the encoded input parameter(s) */
    static char IN_buf_ReferenceHeight[asn1SccMyReal_REQUIRED_BYTES_FOR_ENCODING] = {0};
    int size_IN_buf_ReferenceHeight=0;

    /* Encode each input parameter */
    size_IN_buf_ReferenceHeight = Encode_UPER_MyReal(IN_buf_ReferenceHeight, asn1SccMyReal_REQUIRED_BYTES_FOR_ENCODING, IN_ReferenceHeight);
    if (-1 == size_IN_buf_ReferenceHeight) {
#ifdef __unix__
        printf ("** Encoding error in ground_RI_Takeoff!!\n");
#endif
        /* Crash the application due to message loss */
        extern void abort (void);
        abort();
    }

    /* Call to VM callback function */
    extern void vm_async_ground_Takeoff(void *, size_t);

    vm_async_ground_Takeoff(IN_buf_ReferenceHeight, size_IN_buf_ReferenceHeight);

}
