-module(cryptoapis_delete_automatic_coins_forwarding_response).

-export([encode/1]).

-export_type([cryptoapis_delete_automatic_coins_forwarding_response/0]).

-type cryptoapis_delete_automatic_coins_forwarding_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_delete_automatic_coins_forwarding_response_data:cryptoapis_delete_automatic_coins_forwarding_response_data()
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
