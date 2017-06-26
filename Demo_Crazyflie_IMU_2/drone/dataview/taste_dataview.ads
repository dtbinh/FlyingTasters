-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
USE adaasn1rtl;
use type adaasn1rtl.OctetBuffer;
use type adaasn1rtl.BitArray;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;
WITH System;
WITH TASTE_BasicTypes;
--# inherit adaasn1rtl,TASTE_BasicTypes;


PACKAGE TASTE_Dataview
IS


-----------------------------------------------------------asn1SccMyInteger-------------------------------------------------------------
SUBTYPE asn1SccMyInteger IS TASTE_BasicTypes.asn1SccT_UInt8;

asn1SccMyInteger_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 1;
asn1SccMyInteger_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 8;
asn1SccMyInteger_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 1;
asn1SccMyInteger_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 8;
asn1SccMyInteger_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccMyInteger_Init return asn1SccMyInteger;
---# derives val from;
FUNCTION asn1SccMyInteger_IsConstraintValid(val : in asn1SccMyInteger) return adaasn1rtl.ASN1_RESULT;
---# derives result from val;

SUBTYPE asn1SccMyInteger_uPER_bit_array_range is Natural range 1..asn1SccMyInteger_REQUIRED_BITS_FOR_ENCODING;
SUBTYPE asn1SccMyInteger_uPER_bit_array is adaasn1rtl.BitArray(asn1SccMyInteger_uPER_bit_array_range);

TYPE asn1SccMyInteger_uPER_Stream IS RECORD
    K	: Natural;
    DataLen	: Natural;
    Data : asn1SccMyInteger_uPER_bit_array;
END RECORD;
PROCEDURE asn1SccMyInteger_uPER_Encode(val:in asn1SccMyInteger; Stream : OUT asn1SccMyInteger_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives Stream from val & result from val ;
PROCEDURE asn1SccMyInteger_uPER_Decode(val: out asn1SccMyInteger; Stream : IN asn1SccMyInteger_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from Stream & result from Stream;

PROCEDURE asn1SccMyInteger_uPER_Encode_aux(val:in asn1SccMyInteger; S : in out adaasn1rtl.BitArray; K : in out Natural; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives S from S , K, val & K from K, val & result from val ;
--# pre K+1>= S'First and K + asn1SccMyInteger_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K>=K~ and K<=K~+asn1SccMyInteger_REQUIRED_BITS_FOR_ENCODING;
PROCEDURE asn1SccMyInteger_uPER_Decode_aux(val: out asn1SccMyInteger; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from S , K &
--#         K from K  & result from K,S;
--# pre K.K+1>= S'First and K.K + asn1SccMyInteger_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K.K>=K~.K and K.K<=K~.K+asn1SccMyInteger_REQUIRED_BITS_FOR_ENCODING;


-----------------------------------------------------------asn1SccMyReal-------------------------------------------------------------
SUBTYPE asn1SccMyReal IS adaasn1rtl.Asn1Real;

asn1SccMyReal_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 13;
asn1SccMyReal_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 104;
asn1SccMyReal_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 13;
asn1SccMyReal_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 104;
asn1SccMyReal_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccMyReal_Init return asn1SccMyReal;
---# derives val from;
FUNCTION asn1SccMyReal_IsConstraintValid(val : in asn1SccMyReal) return adaasn1rtl.ASN1_RESULT;
---# derives result from val;

SUBTYPE asn1SccMyReal_uPER_bit_array_range is Natural range 1..asn1SccMyReal_REQUIRED_BITS_FOR_ENCODING;
SUBTYPE asn1SccMyReal_uPER_bit_array is adaasn1rtl.BitArray(asn1SccMyReal_uPER_bit_array_range);

TYPE asn1SccMyReal_uPER_Stream IS RECORD
    K	: Natural;
    DataLen	: Natural;
    Data : asn1SccMyReal_uPER_bit_array;
END RECORD;
PROCEDURE asn1SccMyReal_uPER_Encode(val:in asn1SccMyReal; Stream : OUT asn1SccMyReal_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives Stream from val & result from val ;
PROCEDURE asn1SccMyReal_uPER_Decode(val: out asn1SccMyReal; Stream : IN asn1SccMyReal_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from Stream & result from Stream;

PROCEDURE asn1SccMyReal_uPER_Encode_aux(val:in asn1SccMyReal; S : in out adaasn1rtl.BitArray; K : in out Natural; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives S from S , K, val & K from K, val & result from val ;
--# pre K+1>= S'First and K + asn1SccMyReal_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K>=K~ and K<=K~+asn1SccMyReal_REQUIRED_BITS_FOR_ENCODING;
PROCEDURE asn1SccMyReal_uPER_Decode_aux(val: out asn1SccMyReal; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from S , K &
--#         K from K ,S & result from K,S;
--# pre K.K+1>= S'First and K.K + asn1SccMyReal_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K.K>=K~.K and K.K<=K~.K+asn1SccMyReal_REQUIRED_BITS_FOR_ENCODING;

ERR_asn1SccMyReal:CONSTANT INTEGER := 1001; -- (0.00000000000000000000E+000 .. 1.00000000000000000000E+003)

-----------------------------------------------------------asn1SccMyBool-------------------------------------------------------------
SUBTYPE asn1SccMyBool IS adaasn1rtl.Asn1Boolean;

asn1SccMyBool_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 1;
asn1SccMyBool_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 1;
asn1SccMyBool_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 1;
asn1SccMyBool_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 1;
asn1SccMyBool_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccMyBool_Init return asn1SccMyBool;
---# derives val from;

SUBTYPE asn1SccMyBool_uPER_bit_array_range is Natural range 1..asn1SccMyBool_REQUIRED_BITS_FOR_ENCODING;
SUBTYPE asn1SccMyBool_uPER_bit_array is adaasn1rtl.BitArray(asn1SccMyBool_uPER_bit_array_range);

TYPE asn1SccMyBool_uPER_Stream IS RECORD
    K	: Natural;
    DataLen	: Natural;
    Data : asn1SccMyBool_uPER_bit_array;
END RECORD;
PROCEDURE asn1SccMyBool_uPER_Encode(val:in asn1SccMyBool; Stream : OUT asn1SccMyBool_uPER_Stream);
--# derives Stream from val;
PROCEDURE asn1SccMyBool_uPER_Decode(val: out asn1SccMyBool; Stream : IN asn1SccMyBool_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from Stream & result from Stream;

PROCEDURE asn1SccMyBool_uPER_Encode_aux(val:in asn1SccMyBool; S : in out adaasn1rtl.BitArray; K : in out Natural);
--# derives S from S , K, val & K from K;
--# pre K+1>= S'First and K + asn1SccMyBool_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K>=K~ and K<=K~+asn1SccMyBool_REQUIRED_BITS_FOR_ENCODING;
PROCEDURE asn1SccMyBool_uPER_Decode_aux(val: out asn1SccMyBool; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from S , K &
--#         K from K  & result from K;
--# pre K.K+1>= S'First and K.K + asn1SccMyBool_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K.K>=K~.K and K.K<=K~.K+asn1SccMyBool_REQUIRED_BITS_FOR_ENCODING;


-----------------------------------------------------------asn1SccMyEnum-------------------------------------------------------------
SUBTYPE asn1SccMyEnum_index_range is integer range 0..2;
TYPE asn1SccMyEnum IS (asn1Scchello, asn1Sccworld, asn1Scchowareyou);
for asn1SccMyEnum use
    (asn1Scchello => 0, asn1Sccworld => 1, asn1Scchowareyou => 2);
for asn1SccMyEnum'Size use 32;

asn1SccMyEnum_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 1;
asn1SccMyEnum_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 2;
asn1SccMyEnum_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 1;
asn1SccMyEnum_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 2;
asn1SccMyEnum_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccMyEnum_Init return asn1SccMyEnum;
---# derives val from;
FUNCTION asn1SccMyEnum_IsConstraintValid(val : in asn1SccMyEnum) return adaasn1rtl.ASN1_RESULT;
---# derives result from val;

SUBTYPE asn1SccMyEnum_uPER_bit_array_range is Natural range 1..asn1SccMyEnum_REQUIRED_BITS_FOR_ENCODING;
SUBTYPE asn1SccMyEnum_uPER_bit_array is adaasn1rtl.BitArray(asn1SccMyEnum_uPER_bit_array_range);

TYPE asn1SccMyEnum_uPER_Stream IS RECORD
    K	: Natural;
    DataLen	: Natural;
    Data : asn1SccMyEnum_uPER_bit_array;
END RECORD;
PROCEDURE asn1SccMyEnum_uPER_Encode(val:in asn1SccMyEnum; Stream : OUT asn1SccMyEnum_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives Stream from val & result from val ;
PROCEDURE asn1SccMyEnum_uPER_Decode(val: out asn1SccMyEnum; Stream : IN asn1SccMyEnum_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from Stream & result from Stream;

PROCEDURE asn1SccMyEnum_uPER_Encode_aux(val:in asn1SccMyEnum; S : in out adaasn1rtl.BitArray; K : in out Natural; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives S from S , K, val & K from K, val & result from val ;
--# pre K+1>= S'First and K + asn1SccMyEnum_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K>=K~ and K<=K~+asn1SccMyEnum_REQUIRED_BITS_FOR_ENCODING;
PROCEDURE asn1SccMyEnum_uPER_Decode_aux(val: out asn1SccMyEnum; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from S , K &
--#         K from K  & result from K,S;
--# pre K.K+1>= S'First and K.K + asn1SccMyEnum_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K.K>=K~.K and K.K<=K~.K+asn1SccMyEnum_REQUIRED_BITS_FOR_ENCODING;

ERR_asn1SccMyEnum_unknown_enumeration_value:CONSTANT INTEGER := 1003; -- 
ERR_asn1SccMyEnum:CONSTANT INTEGER := 1002; -- 

-----------------------------------------------------------asn1SccMySeqOf-------------------------------------------------------------
SUBTYPE asn1SccMySeqOf_index is integer range 1..2;
TYPE asn1SccMySeqOf_array IS ARRAY (asn1SccMySeqOf_index) OF asn1SccMyEnum;
TYPE asn1SccMySeqOf IS  RECORD
    Data  : asn1SccMySeqOf_array;
END RECORD;

asn1SccMySeqOf_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 1;
asn1SccMySeqOf_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 4;
asn1SccMySeqOf_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 1;
asn1SccMySeqOf_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 4;
asn1SccMySeqOf_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccMySeqOf_Init return asn1SccMySeqOf;
---# derives val from;
FUNCTION asn1SccMySeqOf_IsConstraintValid(val : in asn1SccMySeqOf) return adaasn1rtl.ASN1_RESULT;
---# derives result from val;

SUBTYPE asn1SccMySeqOf_uPER_bit_array_range is Natural range 1..asn1SccMySeqOf_REQUIRED_BITS_FOR_ENCODING;
SUBTYPE asn1SccMySeqOf_uPER_bit_array is adaasn1rtl.BitArray(asn1SccMySeqOf_uPER_bit_array_range);

TYPE asn1SccMySeqOf_uPER_Stream IS RECORD
    K	: Natural;
    DataLen	: Natural;
    Data : asn1SccMySeqOf_uPER_bit_array;
END RECORD;
PROCEDURE asn1SccMySeqOf_uPER_Encode(val:in asn1SccMySeqOf; Stream : OUT asn1SccMySeqOf_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives Stream from val & result from val ;
PROCEDURE asn1SccMySeqOf_uPER_Decode(val: out asn1SccMySeqOf; Stream : IN asn1SccMySeqOf_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from Stream & result from Stream;

PROCEDURE asn1SccMySeqOf_uPER_Encode_aux(val:in asn1SccMySeqOf; S : in out adaasn1rtl.BitArray; K : in out Natural; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives S from S , K, val & K from K, val & result from val ;
--# pre K+1>= S'First and K + asn1SccMySeqOf_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K>=K~ and K<=K~+asn1SccMySeqOf_REQUIRED_BITS_FOR_ENCODING;
PROCEDURE asn1SccMySeqOf_uPER_Decode_aux(val: out asn1SccMySeqOf; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from S , K &
--#         K from K ,S & result from K,S;
--# pre K.K+1>= S'First and K.K + asn1SccMySeqOf_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K.K>=K~.K and K.K<=K~.K+asn1SccMySeqOf_REQUIRED_BITS_FOR_ENCODING;

ERR_asn1SccMySeqOf:CONSTANT INTEGER := 1004; -- (SIZE(2))

-----------------------------------------------------------asn1SccMyOctStr-------------------------------------------------------------
SUBTYPE asn1SccMyOctStr_index is integer range 1..3;
SUBTYPE asn1SccMyOctStr_array IS adaasn1rtl.OctetBuffer(asn1SccMyOctStr_index);
TYPE asn1SccMyOctStr IS  RECORD
    Data  : asn1SccMyOctStr_array;
END RECORD;

asn1SccMyOctStr_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 3;
asn1SccMyOctStr_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 24;
asn1SccMyOctStr_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 3;
asn1SccMyOctStr_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 24;
asn1SccMyOctStr_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccMyOctStr_Init return asn1SccMyOctStr;
---# derives val from;

SUBTYPE asn1SccMyOctStr_uPER_bit_array_range is Natural range 1..asn1SccMyOctStr_REQUIRED_BITS_FOR_ENCODING;
SUBTYPE asn1SccMyOctStr_uPER_bit_array is adaasn1rtl.BitArray(asn1SccMyOctStr_uPER_bit_array_range);

TYPE asn1SccMyOctStr_uPER_Stream IS RECORD
    K	: Natural;
    DataLen	: Natural;
    Data : asn1SccMyOctStr_uPER_bit_array;
END RECORD;
PROCEDURE asn1SccMyOctStr_uPER_Encode(val:in asn1SccMyOctStr; Stream : OUT asn1SccMyOctStr_uPER_Stream);
--# derives Stream from val;
PROCEDURE asn1SccMyOctStr_uPER_Decode(val: out asn1SccMyOctStr; Stream : IN asn1SccMyOctStr_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from Stream & result from Stream;

PROCEDURE asn1SccMyOctStr_uPER_Encode_aux(val:in asn1SccMyOctStr; S : in out adaasn1rtl.BitArray; K : in out Natural);
--# derives S from S , K, val & K from K;
--# pre K+1>= S'First and K + asn1SccMyOctStr_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K>=K~ and K<=K~+asn1SccMyOctStr_REQUIRED_BITS_FOR_ENCODING;
PROCEDURE asn1SccMyOctStr_uPER_Decode_aux(val: out asn1SccMyOctStr; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from S , K &
--#         K from K  & result from K;
--# pre K.K+1>= S'First and K.K + asn1SccMyOctStr_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K.K>=K~.K and K.K<=K~.K+asn1SccMyOctStr_REQUIRED_BITS_FOR_ENCODING;

ERR_asn1SccMyOctStr:CONSTANT INTEGER := 1005; -- (SIZE(3))

-----------------------------------------------------------asn1SccMyGyroVal-------------------------------------------------------------
SUBTYPE asn1SccMyGyroVal IS adaasn1rtl.Asn1Real;

asn1SccMyGyroVal_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 13;
asn1SccMyGyroVal_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 104;
asn1SccMyGyroVal_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 13;
asn1SccMyGyroVal_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 104;
asn1SccMyGyroVal_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccMyGyroVal_Init return asn1SccMyGyroVal;
---# derives val from;
FUNCTION asn1SccMyGyroVal_IsConstraintValid(val : in asn1SccMyGyroVal) return adaasn1rtl.ASN1_RESULT;
---# derives result from val;

SUBTYPE asn1SccMyGyroVal_uPER_bit_array_range is Natural range 1..asn1SccMyGyroVal_REQUIRED_BITS_FOR_ENCODING;
SUBTYPE asn1SccMyGyroVal_uPER_bit_array is adaasn1rtl.BitArray(asn1SccMyGyroVal_uPER_bit_array_range);

TYPE asn1SccMyGyroVal_uPER_Stream IS RECORD
    K	: Natural;
    DataLen	: Natural;
    Data : asn1SccMyGyroVal_uPER_bit_array;
END RECORD;
PROCEDURE asn1SccMyGyroVal_uPER_Encode(val:in asn1SccMyGyroVal; Stream : OUT asn1SccMyGyroVal_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives Stream from val & result from val ;
PROCEDURE asn1SccMyGyroVal_uPER_Decode(val: out asn1SccMyGyroVal; Stream : IN asn1SccMyGyroVal_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from Stream & result from Stream;

PROCEDURE asn1SccMyGyroVal_uPER_Encode_aux(val:in asn1SccMyGyroVal; S : in out adaasn1rtl.BitArray; K : in out Natural; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives S from S , K, val & K from K, val & result from val ;
--# pre K+1>= S'First and K + asn1SccMyGyroVal_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K>=K~ and K<=K~+asn1SccMyGyroVal_REQUIRED_BITS_FOR_ENCODING;
PROCEDURE asn1SccMyGyroVal_uPER_Decode_aux(val: out asn1SccMyGyroVal; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from S , K &
--#         K from K ,S & result from K,S;
--# pre K.K+1>= S'First and K.K + asn1SccMyGyroVal_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K.K>=K~.K and K.K<=K~.K+asn1SccMyGyroVal_REQUIRED_BITS_FOR_ENCODING;

ERR_asn1SccMyGyroVal:CONSTANT INTEGER := 1006; -- (-1.00000000000000000000E+005 .. 1.00000000000000000000E+005)

-----------------------------------------------------------asn1SccMyAccVal-------------------------------------------------------------
SUBTYPE asn1SccMyAccVal IS adaasn1rtl.Asn1Real;

asn1SccMyAccVal_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 13;
asn1SccMyAccVal_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 104;
asn1SccMyAccVal_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 13;
asn1SccMyAccVal_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 104;
asn1SccMyAccVal_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccMyAccVal_Init return asn1SccMyAccVal;
---# derives val from;
FUNCTION asn1SccMyAccVal_IsConstraintValid(val : in asn1SccMyAccVal) return adaasn1rtl.ASN1_RESULT;
---# derives result from val;

SUBTYPE asn1SccMyAccVal_uPER_bit_array_range is Natural range 1..asn1SccMyAccVal_REQUIRED_BITS_FOR_ENCODING;
SUBTYPE asn1SccMyAccVal_uPER_bit_array is adaasn1rtl.BitArray(asn1SccMyAccVal_uPER_bit_array_range);

TYPE asn1SccMyAccVal_uPER_Stream IS RECORD
    K	: Natural;
    DataLen	: Natural;
    Data : asn1SccMyAccVal_uPER_bit_array;
END RECORD;
PROCEDURE asn1SccMyAccVal_uPER_Encode(val:in asn1SccMyAccVal; Stream : OUT asn1SccMyAccVal_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives Stream from val & result from val ;
PROCEDURE asn1SccMyAccVal_uPER_Decode(val: out asn1SccMyAccVal; Stream : IN asn1SccMyAccVal_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from Stream & result from Stream;

PROCEDURE asn1SccMyAccVal_uPER_Encode_aux(val:in asn1SccMyAccVal; S : in out adaasn1rtl.BitArray; K : in out Natural; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives S from S , K, val & K from K, val & result from val ;
--# pre K+1>= S'First and K + asn1SccMyAccVal_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K>=K~ and K<=K~+asn1SccMyAccVal_REQUIRED_BITS_FOR_ENCODING;
PROCEDURE asn1SccMyAccVal_uPER_Decode_aux(val: out asn1SccMyAccVal; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from S , K &
--#         K from K ,S & result from K,S;
--# pre K.K+1>= S'First and K.K + asn1SccMyAccVal_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K.K>=K~.K and K.K<=K~.K+asn1SccMyAccVal_REQUIRED_BITS_FOR_ENCODING;

ERR_asn1SccMyAccVal:CONSTANT INTEGER := 1007; -- (-1.60000000000000000000E+001 .. 1.60000000000000000000E+001)

-----------------------------------------------------------asn1SccMySeq_validity-------------------------------------------------------------
SUBTYPE asn1SccMySeq_validity_index_range is integer range 0..1;
TYPE asn1SccMySeq_validity IS (asn1Sccvalid, asn1Sccinvalid);
for asn1SccMySeq_validity use
    (asn1Sccvalid => 0, asn1Sccinvalid => 1);
for asn1SccMySeq_validity'Size use 32;

asn1SccMySeq_validity_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 1;
asn1SccMySeq_validity_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 1;
asn1SccMySeq_validity_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 1;
asn1SccMySeq_validity_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 1;
asn1SccMySeq_validity_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccMySeq_validity_Init return asn1SccMySeq_validity;
---# derives val from;
FUNCTION asn1SccMySeq_validity_IsConstraintValid(val : in asn1SccMySeq_validity) return adaasn1rtl.ASN1_RESULT;
---# derives result from val;

SUBTYPE asn1SccMySeq_validity_uPER_bit_array_range is Natural range 1..asn1SccMySeq_validity_REQUIRED_BITS_FOR_ENCODING;
SUBTYPE asn1SccMySeq_validity_uPER_bit_array is adaasn1rtl.BitArray(asn1SccMySeq_validity_uPER_bit_array_range);

TYPE asn1SccMySeq_validity_uPER_Stream IS RECORD
    K	: Natural;
    DataLen	: Natural;
    Data : asn1SccMySeq_validity_uPER_bit_array;
END RECORD;
PROCEDURE asn1SccMySeq_validity_uPER_Encode(val:in asn1SccMySeq_validity; Stream : OUT asn1SccMySeq_validity_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives Stream from val & result from val ;
PROCEDURE asn1SccMySeq_validity_uPER_Decode(val: out asn1SccMySeq_validity; Stream : IN asn1SccMySeq_validity_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from Stream & result from Stream;

PROCEDURE asn1SccMySeq_validity_uPER_Encode_aux(val:in asn1SccMySeq_validity; S : in out adaasn1rtl.BitArray; K : in out Natural; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives S from S , K, val & K from K, val & result from val ;
--# pre K+1>= S'First and K + asn1SccMySeq_validity_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K>=K~ and K<=K~+asn1SccMySeq_validity_REQUIRED_BITS_FOR_ENCODING;
PROCEDURE asn1SccMySeq_validity_uPER_Decode_aux(val: out asn1SccMySeq_validity; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from S , K &
--#         K from K  & result from K,S;
--# pre K.K+1>= S'First and K.K + asn1SccMySeq_validity_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K.K>=K~.K and K.K<=K~.K+asn1SccMySeq_validity_REQUIRED_BITS_FOR_ENCODING;

ERR_asn1SccMySeq_validity_unknown_enumeration_value:CONSTANT INTEGER := 1009; -- 
ERR_asn1SccMySeq_validity:CONSTANT INTEGER := 1008; -- 

-----------------------------------------------------------asn1SccMySeq-------------------------------------------------------------
TYPE asn1SccMySeq IS RECORD 
    input_data : asn1SccMyInteger;
    output_data : asn1SccMyInteger;
    validity : asn1SccMySeq_validity;
END RECORD;

asn1SccMySeq_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 3;
asn1SccMySeq_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 17;
asn1SccMySeq_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 3;
asn1SccMySeq_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 17;
asn1SccMySeq_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccMySeq_Init return asn1SccMySeq;
---# derives val from;
FUNCTION asn1SccMySeq_IsConstraintValid(val : in asn1SccMySeq) return adaasn1rtl.ASN1_RESULT;
---# derives result from val;

SUBTYPE asn1SccMySeq_uPER_bit_array_range is Natural range 1..asn1SccMySeq_REQUIRED_BITS_FOR_ENCODING;
SUBTYPE asn1SccMySeq_uPER_bit_array is adaasn1rtl.BitArray(asn1SccMySeq_uPER_bit_array_range);

TYPE asn1SccMySeq_uPER_Stream IS RECORD
    K	: Natural;
    DataLen	: Natural;
    Data : asn1SccMySeq_uPER_bit_array;
END RECORD;
PROCEDURE asn1SccMySeq_uPER_Encode(val:in asn1SccMySeq; Stream : OUT asn1SccMySeq_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives Stream from val & result from val ;
PROCEDURE asn1SccMySeq_uPER_Decode(val: out asn1SccMySeq; Stream : IN asn1SccMySeq_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from Stream & result from Stream;

PROCEDURE asn1SccMySeq_uPER_Encode_aux(val:in asn1SccMySeq; S : in out adaasn1rtl.BitArray; K : in out Natural; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives S from S , K, val & K from K, val & result from val ;
--# pre K+1>= S'First and K + asn1SccMySeq_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K>=K~ and K<=K~+asn1SccMySeq_REQUIRED_BITS_FOR_ENCODING;
PROCEDURE asn1SccMySeq_uPER_Decode_aux(val: out asn1SccMySeq; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from S , K &
--#         K from K ,S & result from K,S;
--# pre K.K+1>= S'First and K.K + asn1SccMySeq_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K.K>=K~.K and K.K<=K~.K+asn1SccMySeq_REQUIRED_BITS_FOR_ENCODING;


-----------------------------------------------------------asn1SccMyChoice-------------------------------------------------------------
TYPE asn1SccMyChoice IS PRIVATE;
SUBTYPE asn1SccMyChoice_index_range is integer range 0..1;

TYPE asn1SccMyChoice_selection IS (a_PRESENT, b_PRESENT);
for asn1SccMyChoice_selection use
    (a_PRESENT => 1, b_PRESENT => 2);
for asn1SccMyChoice_selection'Size use 32;


-- getters and setters
FUNCTION asn1SccMyChoice_kind(val:asn1SccMyChoice) RETURN asn1SccMyChoice_selection;
FUNCTION asn1SccMyChoice_a_get(val:asn1SccMyChoice) RETURN adaasn1rtl.Asn1Boolean;
--# pre asn1SccMyChoice_kind(val) = a_PRESENT;
FUNCTION asn1SccMyChoice_a_set(itm:adaasn1rtl.Asn1Boolean) RETURN asn1SccMyChoice;
FUNCTION asn1SccMyChoice_b_get(val:asn1SccMyChoice) RETURN asn1SccMySeq;
--# pre asn1SccMyChoice_kind(val) = b_PRESENT;
FUNCTION asn1SccMyChoice_b_set(itm:asn1SccMySeq) RETURN asn1SccMyChoice;

asn1SccMyChoice_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 3;
asn1SccMyChoice_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 19;
asn1SccMyChoice_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 3;
asn1SccMyChoice_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 19;
asn1SccMyChoice_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccMyChoice_Init return asn1SccMyChoice;
---# derives val from;
FUNCTION asn1SccMyChoice_IsConstraintValid(val : in asn1SccMyChoice) return adaasn1rtl.ASN1_RESULT;
---# derives result from val;

SUBTYPE asn1SccMyChoice_uPER_bit_array_range is Natural range 1..asn1SccMyChoice_REQUIRED_BITS_FOR_ENCODING;
SUBTYPE asn1SccMyChoice_uPER_bit_array is adaasn1rtl.BitArray(asn1SccMyChoice_uPER_bit_array_range);

TYPE asn1SccMyChoice_uPER_Stream IS RECORD
    K	: Natural;
    DataLen	: Natural;
    Data : asn1SccMyChoice_uPER_bit_array;
END RECORD;
PROCEDURE asn1SccMyChoice_uPER_Encode(val:in asn1SccMyChoice; Stream : OUT asn1SccMyChoice_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives Stream from val & result from val ;
PROCEDURE asn1SccMyChoice_uPER_Decode(val: out asn1SccMyChoice; Stream : IN asn1SccMyChoice_uPER_Stream; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from Stream & result from Stream;

PROCEDURE asn1SccMyChoice_uPER_Encode_aux(val:in asn1SccMyChoice; S : in out adaasn1rtl.BitArray; K : in out Natural; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives S from S , K, val & K from K, val & result from val ;
--# pre K+1>= S'First and K + asn1SccMyChoice_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K>=K~ and K<=K~+asn1SccMyChoice_REQUIRED_BITS_FOR_ENCODING;
PROCEDURE asn1SccMyChoice_uPER_Decode_aux(val: out asn1SccMyChoice; S : in adaasn1rtl.BitArray; K : in out adaasn1rtl.DECODE_PARAMS; result : OUT adaasn1rtl.ASN1_RESULT);
--# derives val from S , K &
--#         K from K ,S & result from K,S;
--# pre K.K+1>= S'First and K.K + asn1SccMyChoice_REQUIRED_BITS_FOR_ENCODING <= S'Last;
--# post K.K>=K~.K and K.K<=K~.K+asn1SccMyChoice_REQUIRED_BITS_FOR_ENCODING;

ERR_asn1SccMyChoice_unknown_choice_index:CONSTANT INTEGER := 1010; -- 


myVar : CONSTANT asn1SccMySeqOf:= asn1SccMySeqOf'(Data => asn1SccMySeqOf_array'(1=>asn1Scchello, 2=>asn1Sccworld, others => asn1Scchello)); 

private
   --# hide TASTE_Dataview;

   TYPE asn1SccMyChoice(kind : asn1SccMyChoice_selection:= a_PRESENT) IS 
   RECORD
       case kind is
       when a_PRESENT =>
               a: adaasn1rtl.Asn1Boolean;
       when b_PRESENT =>
               b: asn1SccMySeq;
       end case;
   END RECORD;

   FOR asn1SccMyChoice USE 
   RECORD
       kind AT 0 RANGE 0..31;
   END RECORD;

END TASTE_Dataview;