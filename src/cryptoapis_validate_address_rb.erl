-module(cryptoapis_validate_address_rb).

-export([encode/1]).

-export_type([cryptoapis_validate_address_rb/0]).

-type cryptoapis_validate_address_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_validate_address_rb_data:cryptoapis_validate_address_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
