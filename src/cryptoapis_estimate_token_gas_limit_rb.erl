-module(cryptoapis_estimate_token_gas_limit_rb).

-export([encode/1]).

-export_type([cryptoapis_estimate_token_gas_limit_rb/0]).

-type cryptoapis_estimate_token_gas_limit_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_estimate_token_gas_limit_rb_data:cryptoapis_estimate_token_gas_limit_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
