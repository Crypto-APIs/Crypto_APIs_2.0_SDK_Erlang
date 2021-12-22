-module(cryptoapis_inline_response_403_89).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_89/0]).

-type cryptoapis_inline_response_403_89() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_assets_details_e403:cryptoapis_list_assets_details_e403()
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
