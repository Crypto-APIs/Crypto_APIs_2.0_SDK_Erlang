-module(cryptoapis_create_automatic_coins_forwarding_rb).

-export([encode/1]).

-export_type([cryptoapis_create_automatic_coins_forwarding_rb/0]).

-type cryptoapis_create_automatic_coins_forwarding_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_create_automatic_coins_forwarding_rb_data:cryptoapis_create_automatic_coins_forwarding_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
