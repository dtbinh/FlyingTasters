-- Code automatically generated by asn1scc tool
WITH adaasn1rtl;
USE adaasn1rtl;
use type adaasn1rtl.OctetBuffer;
use type adaasn1rtl.BitArray;
use type adaasn1rtl.Asn1UInt;
use type adaasn1rtl.Asn1Int;
use type adaasn1rtl.BIT;
WITH System;
--# inherit adaasn1rtl;


PACKAGE TASTE_BasicTypes
IS


-----------------------------------------------------------asn1SccT_Int32-------------------------------------------------------------
SUBTYPE asn1SccT_Int32 IS adaasn1rtl.Asn1Int range -2147483648..2147483647;

asn1SccT_Int32_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 4;
asn1SccT_Int32_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 32;
asn1SccT_Int32_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 4;
asn1SccT_Int32_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 32;
asn1SccT_Int32_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccT_Int32_Init return asn1SccT_Int32;
---# derives val from;
FUNCTION asn1SccT_Int32_IsConstraintValid(val : in asn1SccT_Int32) return adaasn1rtl.ASN1_RESULT;
---# derives result from val;
FUNCTION asn1SccT_Int32_Equal(val1, val2: in asn1SccT_Int32) return Boolean;



ERR_asn1SccT_Int32:CONSTANT INTEGER := 1001; -- (-2147483648 .. 2147483647)

-----------------------------------------------------------asn1SccT_UInt32-------------------------------------------------------------
SUBTYPE asn1SccT_UInt32 IS adaasn1rtl.Asn1Int range 0..4294967295;

asn1SccT_UInt32_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 4;
asn1SccT_UInt32_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 32;
asn1SccT_UInt32_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 4;
asn1SccT_UInt32_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 32;
asn1SccT_UInt32_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccT_UInt32_Init return asn1SccT_UInt32;
---# derives val from;
FUNCTION asn1SccT_UInt32_IsConstraintValid(val : in asn1SccT_UInt32) return adaasn1rtl.ASN1_RESULT;
---# derives result from val;
FUNCTION asn1SccT_UInt32_Equal(val1, val2: in asn1SccT_UInt32) return Boolean;



ERR_asn1SccT_UInt32:CONSTANT INTEGER := 1002; -- (0 .. 4294967295)

-----------------------------------------------------------asn1SccT_Int8-------------------------------------------------------------
SUBTYPE asn1SccT_Int8 IS adaasn1rtl.Asn1Int range -128..127;

asn1SccT_Int8_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 1;
asn1SccT_Int8_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 8;
asn1SccT_Int8_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 1;
asn1SccT_Int8_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 8;
asn1SccT_Int8_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccT_Int8_Init return asn1SccT_Int8;
---# derives val from;
FUNCTION asn1SccT_Int8_IsConstraintValid(val : in asn1SccT_Int8) return adaasn1rtl.ASN1_RESULT;
---# derives result from val;
FUNCTION asn1SccT_Int8_Equal(val1, val2: in asn1SccT_Int8) return Boolean;



ERR_asn1SccT_Int8:CONSTANT INTEGER := 1003; -- (-128 .. 127)

-----------------------------------------------------------asn1SccT_UInt8-------------------------------------------------------------
SUBTYPE asn1SccT_UInt8 IS adaasn1rtl.Asn1Int range 0..255;

asn1SccT_UInt8_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 1;
asn1SccT_UInt8_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 8;
asn1SccT_UInt8_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 1;
asn1SccT_UInt8_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 8;
asn1SccT_UInt8_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccT_UInt8_Init return asn1SccT_UInt8;
---# derives val from;
FUNCTION asn1SccT_UInt8_IsConstraintValid(val : in asn1SccT_UInt8) return adaasn1rtl.ASN1_RESULT;
---# derives result from val;
FUNCTION asn1SccT_UInt8_Equal(val1, val2: in asn1SccT_UInt8) return Boolean;



ERR_asn1SccT_UInt8:CONSTANT INTEGER := 1004; -- (0 .. 255)

-----------------------------------------------------------asn1SccT_Boolean-------------------------------------------------------------
SUBTYPE asn1SccT_Boolean IS adaasn1rtl.Asn1Boolean;

asn1SccT_Boolean_REQUIRED_BYTES_FOR_ENCODING:CONSTANT INTEGER := 1;
asn1SccT_Boolean_REQUIRED_BITS_FOR_ENCODING:CONSTANT INTEGER := 1;
asn1SccT_Boolean_REQUIRED_BYTES_FOR_ACN_ENCODING:CONSTANT INTEGER := 1;
asn1SccT_Boolean_REQUIRED_BITS_FOR_ACN_ENCODING:CONSTANT INTEGER := 1;
asn1SccT_Boolean_REQUIRED_BYTES_FOR_XER_ENCODING:CONSTANT INTEGER :=  0;

FUNCTION asn1SccT_Boolean_Init return asn1SccT_Boolean;
---# derives val from;
FUNCTION asn1SccT_Boolean_Equal(val1, val2: in asn1SccT_Boolean) return Boolean;





 

private
   --# hide TASTE_BasicTypes;


END TASTE_BasicTypes;