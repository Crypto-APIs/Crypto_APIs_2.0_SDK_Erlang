-module(cryptoapis_inline_response_401_106).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_106/0]).

-type cryptoapis_inline_response_401_106() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_exchange_rate_by_asset_symbols_e401:cryptoapis_get_exchange_rate_by_asset_symbols_e401()
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
