-module(cryptoapis_inline_response_400_35).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_35/0]).

-type cryptoapis_inline_response_400_35() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_wallet_asset_details_e400:cryptoapis_get_wallet_asset_details_e400()
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
