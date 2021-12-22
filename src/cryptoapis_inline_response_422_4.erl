-module(cryptoapis_inline_response_422_4).

-export([encode/1]).

-export_type([cryptoapis_inline_response_422_4/0]).

-type cryptoapis_inline_response_422_4() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_exchange_rate_by_asset_symbols_e422:cryptoapis_get_exchange_rate_by_asset_symbols_e422()
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
