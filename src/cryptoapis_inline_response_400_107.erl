-module(cryptoapis_inline_response_400_107).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_107/0]).

-type cryptoapis_inline_response_400_107() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_exchange_rate_by_assets_ids_e400:cryptoapis_get_exchange_rate_by_assets_ids_e400()
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
