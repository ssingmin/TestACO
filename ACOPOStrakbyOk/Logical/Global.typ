(* Shuttle user data structure *)
TYPE
    ShuttleUserData_type : STRUCT 
        Color : ShuttleColor_enum; (* Example: product colour *)
        Weight : REAL; (* Example: product weight *)
        PartNumber : UDINT; (* Example: product part number *)
    END_STRUCT;
    
    ShuttleColor_enum : 
    (
        ORANGE,
        GREEN,
        RED,
        BLUE,
        WHITE
    );
END_TYPE

(* Assembly interface *)
TYPE
    TrakAsmCommand_type : STRUCT 
        Power : BOOL;
        ShuttleStart : BOOL;
        ShuttleStop : BOOL;
        Reset : BOOL;
    END_STRUCT;
    
    TrakAsmParameter_type : STRUCT 
        Velocity : REAL;
        Acceleration : REAL;
        Deceleration : REAL;
    END_STRUCT;
    
    TrakAsmStatus_type : STRUCT 
        Disabled : BOOL;
        Ready : BOOL;
        Homing : BOOL;
        Stopping : BOOL;
        ErrorStop : BOOL;
    END_STRUCT;
    
    TrakAsm_type : STRUCT 
        Command : TrakAsmCommand_type;
        Parameter : TrakAsmParameter_type;
        Status : TrakAsmStatus_type;
        ShuttleCnt : UINT;
    END_STRUCT;
END_TYPE
