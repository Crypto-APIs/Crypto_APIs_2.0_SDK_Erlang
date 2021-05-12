-module(cryptoapis_create_automatic_coins_forwarding_request_body).

-export([encode/1]).

-export_type([cryptoapis_create_automatic_coins_forwarding_request_body/0]).

-type cryptoapis_create_automatic_coins_forwarding_request_body() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_create_automatic_coins_forwarding_request_body_data:cryptoapis_create_automatic_coins_forwarding_request_body_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
