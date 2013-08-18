%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNotification_QoSAdmin
%% Source: /net/isildur/ldisk/daily_build/r15b01_prebuild_opu_o.2012-04-01_20/otp_src_R15B01/lib/cosNotification/src/CosNotification.idl
%% IC vsn: 4.2.30
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNotification_QoSAdmin').
-ic_compiled("4_2_30").


%% Interface functions
-export([get_qos/1, get_qos/2, set_qos/2]).
-export([set_qos/3, validate_qos/2, validate_qos/3]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: get_qos
%% 
%%   Returns: RetVal
%%
get_qos(OE_THIS) ->
    corba:call(OE_THIS, get_qos, [], ?MODULE).

get_qos(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_qos, [], ?MODULE, OE_Options).

%%%% Operation: set_qos
%% 
%%   Returns: RetVal
%%   Raises:  CosNotification::UnsupportedQoS
%%
set_qos(OE_THIS, Qos) ->
    corba:call(OE_THIS, set_qos, [Qos], ?MODULE).

set_qos(OE_THIS, OE_Options, Qos) ->
    corba:call(OE_THIS, set_qos, [Qos], ?MODULE, OE_Options).

%%%% Operation: validate_qos
%% 
%%   Returns: RetVal, Available_qos
%%   Raises:  CosNotification::UnsupportedQoS
%%
validate_qos(OE_THIS, Required_qos) ->
    corba:call(OE_THIS, validate_qos, [Required_qos], ?MODULE).

validate_qos(OE_THIS, OE_Options, Required_qos) ->
    corba:call(OE_THIS, validate_qos, [Required_qos], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosNotification/QoSAdmin:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(get_qos) -> 
	{{tk_sequence,{tk_struct,"IDL:omg.org/CosNotification/Property:1.0",
                                 "Property",
                                 [{"name",{tk_string,0}},{"value",tk_any}]},
                      0},
         [],[]};
oe_tc(set_qos) -> 
	{tk_void,
            [{tk_sequence,
                 {tk_struct,"IDL:omg.org/CosNotification/Property:1.0",
                     "Property",
                     [{"name",{tk_string,0}},{"value",tk_any}]},
                 0}],
            []};
oe_tc(validate_qos) -> 
	{tk_void,
            [{tk_sequence,
                 {tk_struct,"IDL:omg.org/CosNotification/Property:1.0",
                     "Property",
                     [{"name",{tk_string,0}},{"value",tk_any}]},
                 0}],
            [{tk_sequence,
                 {tk_struct,
                     "IDL:omg.org/CosNotification/NamedPropertyRange:1.0",
                     "NamedPropertyRange",
                     [{"name",{tk_string,0}},
                      {"range",
                       {tk_struct,
                           "IDL:omg.org/CosNotification/PropertyRange:1.0",
                           "PropertyRange",
                           [{"low_val",tk_any},{"high_val",tk_any}]}}]},
                 0}]};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"validate_qos", oe_tc(validate_qos)},
	{"set_qos", oe_tc(set_qos)},
	{"get_qos", oe_tc(get_qos)}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:omg.org/CosNotification/QoSAdmin:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosNotification/QoSAdmin:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotification/QoSAdmin:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosNotification/QoSAdmin:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotification/QoSAdmin:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosNotification/QoSAdmin:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotification/QoSAdmin:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosNotification_QoSAdmin_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosNotification_QoSAdmin_impl', Reason, State).


%%%% Operation: get_qos
%% 
%%   Returns: RetVal
%%
handle_call({_, OE_Context, get_qos, []}, _, OE_State) ->
  corba:handle_call('CosNotification_QoSAdmin_impl', get_qos, [], OE_State, OE_Context, false, false);

%%%% Operation: set_qos
%% 
%%   Returns: RetVal
%%   Raises:  CosNotification::UnsupportedQoS
%%
handle_call({_, OE_Context, set_qos, [Qos]}, _, OE_State) ->
  corba:handle_call('CosNotification_QoSAdmin_impl', set_qos, [Qos], OE_State, OE_Context, false, false);

%%%% Operation: validate_qos
%% 
%%   Returns: RetVal, Available_qos
%%   Raises:  CosNotification::UnsupportedQoS
%%
handle_call({_, OE_Context, validate_qos, [Required_qos]}, _, OE_State) ->
  corba:handle_call('CosNotification_QoSAdmin_impl', validate_qos, [Required_qos], OE_State, OE_Context, false, false);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.


%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(_, State) ->
    {noreply, State}.


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosNotification_QoSAdmin_impl', OldVsn, State, Extra).

