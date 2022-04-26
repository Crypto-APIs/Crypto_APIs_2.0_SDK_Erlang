-module(cryptoapis_inline_response_403_109).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_109/0]).

-type cryptoapis_inline_response_403_109() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_asset_details_by_asset_ide403:cryptoapis_get_asset_details_by_asset_ide403()
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
