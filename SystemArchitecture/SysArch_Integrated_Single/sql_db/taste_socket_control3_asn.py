from functools import partial

import DV

from Stubs import (
    myassert, Clean, DataStream, COMMON)

class T_UInt32(COMMON):
    def __init__(self, ptr=None):
        super(T_UInt32, self).__init__("T_UInt32", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class MySeq(COMMON):
    # Ordered list of fields:
    children_ordered = ['input-data', 'output-data', 'validity']

    def __init__(self, ptr=None):
        super(MySeq, self).__init__("MySeq", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        lines.append("input-data ")
        lines.append(" "+str(self.input_data.Get()))
        lines.append(', ')
        lines.append("output-data ")
        lines.append(" "+str(self.output_data.Get()))
        lines.append(', ')
        lines.append("validity ")
        lines.append(" "+{'1': 'invalid', '0': 'valid'}[str(self.validity.Get())])
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class MyInteger(COMMON):
    def __init__(self, ptr=None):
        super(MyInteger, self).__init__("MyInteger", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class MyReal(COMMON):
    def __init__(self, ptr=None):
        super(MyReal, self).__init__("MyReal", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class MySensorData(COMMON):
    # Ordered list of fields:
    children_ordered = ['yawAct', 'pitchAct', 'rollAct', 'baropAct', 'accxAct', 'accyAct', 'acczAct']

    def __init__(self, ptr=None):
        super(MySensorData, self).__init__("MySensorData", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        lines.append("yawAct ")
        lines.append(" "+str(self.yawAct.Get()))
        lines.append(', ')
        lines.append("pitchAct ")
        lines.append(" "+str(self.pitchAct.Get()))
        lines.append(', ')
        lines.append("rollAct ")
        lines.append(" "+str(self.rollAct.Get()))
        lines.append(', ')
        lines.append("baropAct ")
        lines.append(" "+str(self.baropAct.Get()))
        lines.append(', ')
        lines.append("accxAct ")
        lines.append(" "+str(self.accxAct.Get()))
        lines.append(', ')
        lines.append("accyAct ")
        lines.append(" "+str(self.accyAct.Get()))
        lines.append(', ')
        lines.append("acczAct ")
        lines.append(" "+str(self.acczAct.Get()))
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class MyChoice(COMMON):
    def __init__(self, ptr=None):
        super(MyChoice, self).__init__("MyChoice", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        if self.kind.Get() == DV.a_PRESENT:
         lines.append("a: ")
         lines.append(" "+str(self.a.Get()!=0).upper())
        if self.kind.Get() == DV.b_PRESENT:
         lines.append("b: ")
         lines.append("{")
         lines.append(" input-data ")
         lines.append("  "+str(self.b.input_data.Get()))
         lines.append(', ')
         lines.append(" output-data ")
         lines.append("  "+str(self.b.output_data.Get()))
         lines.append(', ')
         lines.append(" validity ")
         lines.append("  "+{'1': 'invalid', '0': 'valid'}[str(self.b.validity.Get())])
         lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_Boolean(COMMON):
    def __init__(self, ptr=None):
        super(T_Boolean, self).__init__("T_Boolean", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()!=0).upper())

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class MyOctStr(COMMON):
    def __init__(self, ptr=None):
        super(MyOctStr, self).__init__("MyOctStr", ptr)
#

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("\""+str(self.GetPyString()) + "\"")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_Int32(COMMON):
    def __init__(self, ptr=None):
        super(T_Int32, self).__init__("T_Int32", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class MyEnum(COMMON):
    # Allowed enumerants:
    hello = 0
    world = 1
    howareyou = 2
    allowed = [hello, world, howareyou]
    def __init__(self, ptr=None):
        super(MyEnum, self).__init__("MyEnum", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+{'1': 'world', '0': 'hello', '2': 'howareyou'}[str(self.Get())])

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class MySeqOf(COMMON):
    def __init__(self, ptr=None):
        super(MySeqOf, self).__init__("MySeqOf", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        def emitElem(path, i):
            state = self.GetState()
            if i > 0:
                lines.append(",")
            lines.append(" "+{'1': 'world', '0': 'hello', '2': 'howareyou'}[str(path[i].Get())])
            self.Reset(state)
        state = self.GetState()
        length = self.GetLength()
        self.Reset(state)
        map(partial(emitElem, self), xrange(length))
        self.Reset(state)
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_Int8(COMMON):
    def __init__(self, ptr=None):
        super(T_Int8, self).__init__("T_Int8", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class MyDroneData(COMMON):
    # Ordered list of fields:
    children_ordered = ['yawrateRef', 'pitchRef', 'rollRef', 'thrustRef']

    def __init__(self, ptr=None):
        super(MyDroneData, self).__init__("MyDroneData", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        lines.append("yawrateRef ")
        lines.append(" "+str(self.yawrateRef.Get()))
        lines.append(', ')
        lines.append("pitchRef ")
        lines.append(" "+str(self.pitchRef.Get()))
        lines.append(', ')
        lines.append("rollRef ")
        lines.append(" "+str(self.rollRef.Get()))
        lines.append(', ')
        lines.append("thrustRef ")
        lines.append(" "+str(self.thrustRef.Get()))
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class MyBool(COMMON):
    def __init__(self, ptr=None):
        super(MyBool, self).__init__("MyBool", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()!=0).upper())

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_UInt8(COMMON):
    def __init__(self, ptr=None):
        super(T_UInt8, self).__init__("T_UInt8", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


