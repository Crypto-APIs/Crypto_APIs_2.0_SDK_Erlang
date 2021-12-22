-module(cryptoapis_inline_response_401_91).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_91/0]).

-type cryptoapis_inline_response_401_91() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_asset_details_by_asset_symbol_e401:cryptoapis_get_asset_details_by_asset_symbol_e401()
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
