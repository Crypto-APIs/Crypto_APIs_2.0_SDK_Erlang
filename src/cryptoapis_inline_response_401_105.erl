-module(cryptoapis_inline_response_401_105).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_105/0]).

-type cryptoapis_inline_response_401_105() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_supported_assets_e401:cryptoapis_list_supported_assets_e401()
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
