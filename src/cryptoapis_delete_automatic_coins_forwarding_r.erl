-module(cryptoapis_delete_automatic_coins_forwarding_r).

-export([encode/1]).

-export_type([cryptoapis_delete_automatic_coins_forwarding_r/0]).

-type cryptoapis_delete_automatic_coins_forwarding_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_delete_automatic_coins_forwarding_r_data:cryptoapis_delete_automatic_coins_forwarding_r_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'data' => Data
     }.
