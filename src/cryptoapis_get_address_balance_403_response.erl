-module(cryptoapis_get_address_balance_403_response).

-export([encode/1]).

-export_type([cryptoapis_get_address_balance_403_response/0]).

-type cryptoapis_get_address_balance_403_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_address_balance_e403:cryptoapis_get_address_balance_e403()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'error' := Error
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'error' => Error
     }.
